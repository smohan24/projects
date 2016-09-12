;var blog = {
    registerFloatRightbar: function() {
        var rightSide = $("#right-side");
        var widgetMarginTop = parseInt(rightSide.find(".content-widget").css("margin-top"));
        if(widgetMarginTop>20) widgetMarginTop -= 20;
        var offset = rightSide.offset();
        var topPadding = 15;
        $(window).scroll(function() {
            if ($(window).scrollTop() > offset.top && (($(window).scrollTop()+rightSide.height()) < $("body").height() - 115)) {
                var newMarginTop =$(window).scrollTop() - offset.top + topPadding;
                if(newMarginTop - widgetMarginTop > 0) {
                    newMarginTop = newMarginTop - widgetMarginTop;
                } 
                rightSide.stop().animate({
                    marginTop: newMarginTop
                });
            } else if ($(window).scrollTop() <= offset.top) {
                rightSide.stop().animate({
                    marginTop: 0
                });
            }
        });
    },
    registerHeaderExpandCollapse: function() {
        $(".explore-topics, #hidden-box-topics a.close").click(function(){
		    $("#hidden-box-topics").slideToggle("slow");
			$(".arrow-topics").slideToggle("slow");
			$('#hidden-box-topics a.close').toggleClass("collapse"); return false;
		});                                      
    },
    registerRightbarTabs: function() {
        $('.second-tab').addClass('second-tab-inactive');
        $(".tabs .first-tab").click(function(){
            $('.second-tab').addClass('second-tab-inactive');
            $(this).removeClass(' first-tab-inactive');
            $("#most-read").show();
            $("#newest").hide();
        });
        
        $(".tabs .second-tab").click(function(){
            $('.first-tab').addClass('first-tab-inactive');
            $(this).removeClass('second-tab-inactive');
            $("#most-read").hide();
            $("#newest").show();
        });                      
    },
    solveLinks: function() {
        $('div.linkpost').each(function(i, e) {
            $(e).find('blockquote').each(function(index, el) {
                if(index == 0) {
                    var bq = $(el);
                    $(e).find('div.entry_body p.linksrc a').each(function(index, link) {
                        var href = $(link).attr('href');
                        var host = href.split('/')[2];
                        bq.append('<p class="linksrc"><cite><a rel="external nofollow" href="' + 
            href + '">' + host + '</a></cite></p>');  
                    });
                }
            });
        });
    },    
    getMostRead: function(target_element_id, count) {
        var target_el = document.getElementById(target_element_id);
        if(!target_el) return;
        $.ajax({
            url: 'http://mynosqltools.appspot.com/blogapi/mord',
            cache: false,
            data: {'format': 'jsonp', 'c': count},
            dataType: 'jsonp',
            success: function(data, textStatus, xhr) {
                var ul=$('<ul></ul>');
                var li, link;
                for(var i in data) {
                    li = $('<li></li>');
                    link = $('<a/>', {
                        href: data[i].uri,
                        text: data[i].title
                    });
                    link.click(function() {_gaTrkEvt(['_trackEvent', 'widget-hotposts', data[i].uri, window.location.href + ":" + document.title])});
                    li.append(link);
                    ul.append(li);
                }
                $(target_el).append(ul);
            }
        });
    },
    getLatest: function(target_element_id, count) {
        var target_el = document.getElementById(target_element_id);
        if(!target_el) return;
        $.ajax({
            url: 'http://nosql.mypopescu.com/api/read/json',
            cache: false,
            data: {'num': count},
            dataType: 'jsonp',
            success: function(data, textStatus, xhr) {
                var ul=$('<ul></ul>');
                var li, link, p, txt;
                var posts = data['posts'];
                for(var i in posts) {
                    p = posts[i];
                    if(p.type != 'link' && p.type != 'regular') continue;
                    if(p.type == 'link') txt = p['link-text'];
                    if(p.type == 'regular') txt = p['regular-title'];
                    li = $('<li></li>');
                    link = $('<a/>', {
                        href: p.url,
                        text: txt
                    });
                    link.click(function() {_gaTrkEvt(['_trackEvent', 'widget-recentposts', p.url, window.location.href + ":" + document.title])});
                    li.append(link);
                    ul.append(li);
                }
                $(target_el).append(ul);
            }
        });
    },
    getReferences: function(tags_selector, target_element_id) {
        var target_el = document.getElementById(target_element_id);
        if(!target_el) return;                       
        var tags = [];
        $(tags_selector).each(function(idx, el){
            tags.push("t=" + encodeURI($(el).text().toLowerCase()));
        });
        if(tags.length==0) return;
        var tag_q_str = tags.join("&");
        $.ajax({
            url: 'http://mynosqltools.appspot.com/blogapi/rels?format=jsonp&' + tag_q_str+'&r='+window.location.href,
            cache: false,
            dataType: 'jsonp',
            statusCode: {
              202: function() {
                  setTimeout(function(){blog.getReferences(tags_selector, target_element_id)}, 500);
              }
            },
            success: function(data, textStatus, jqXHR) {
                if(!data || data.length == 0) return;
                var length = data.length;
                var half_index = Math.round(length/2);
                var ull=$('<ul></ul>').addClass('left');
                var ulr=$('<ul></ul>').addClass('right');
                var li, link, i;
                for(i=0;i<half_index;i++) {
                    li = $('<li></li>');
                    link = $('<a/>', {
                        href: data[i].u,
                        text: data[i].t
                    }); 
                    li.append(link);
                    ull.append(li);
                }
                for(i=half_index;i<length;i++) {
                    li = $('<li></li>');
                    link = $('<a/>', {
                        href: data[i].u,
                        text: data[i].t
                    }); 
                    li.append(link);
                    ulr.append(li);
                }
                $(target_el).append(ull).append(ulr).append('<br class="clear" />').show();
                i=0;
                $(target_el).find('a').each(function(index, el) {
                    $(el).click(function() {_gaTrkEvt(['_trackEvent', 'widget-relatedposts', $(el).attr('href'), window.location.href + ":" + document.title])});
                    i=i+1;
                });
            }
        });        
    },
    /* tracking */
    trackTagViews: function(tags_selector) {
        $(tags_selector).each(function(idx, el) {
            _gaTrkEvt(['_trackEvent', 'tagview', $(el).text().toLowerCase(), window.location.href + ":" + document.title]);
        });
    },
    registerTagClicks: function(tags_selector) {
        $(tags_selector).each(function(idx, el) {
            var elem = $(el);
            var tag_name = elem.text().toLowerCase();
            elem.click(function() {_gaTrkEvt(['_trackEvent', 'tag-click', tag_name, window.location.href + ":" + document.title])});
        });
    },
    registerVisibleTopicClicks: function(tags_selector) {
        $(tags_selector).each(function(idx, el) {
            var elem = $(el);
            var tag_name = elem.text().toLowerCase();
            elem.click(function() {_gaTrkEvt(['_trackEvent', 'menu-tag-click', tag_name, window.location.href + ":" + document.title])});
        });
    },
    registerMainTopicClicks: function(tags_selector) {
        $(tags_selector).each(function(idx, el) {
            var elem = $(el);
            var tag_name = elem.text().toLowerCase();
            elem.click(function() {_gaTrkEvt(['_trackEvent', 'main-tag-click', tag_name, window.location.href + ":" + document.title])});
        });
    },
    registerAllTopicClicks: function(tags_selector) {
        $(tags_selector).each(function(idx, el) {
            var elem = $(el);
            var tag_name = elem.text().toLowerCase();
            elem.click(function() {_gaTrkEvt(['_trackEvent', 'all-tag-click', tag_name, window.location.href + ":" + document.title])});
        });
    }
};
function _gaTrkEvt(evt) {
    try{ _gaq.push(evt) } catch (ex) {if(window.console){window.console.log('Event not logged:' + evt)}}
};
