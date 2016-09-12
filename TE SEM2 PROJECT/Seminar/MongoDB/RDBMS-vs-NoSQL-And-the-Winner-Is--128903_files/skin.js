function verticalRotator(name,parentid,listHeight,detailHeight,timercount,pausecount,currentClass,rotateClass,slideSpeed)
{
	this.name = name;
	this.initialized = false;
	this.currentIndex = 0;
	this.slideSpeed = slideSpeed;
	this.listItems = new Array();
	this.detailItems = new Array();
	this.currentClass = currentClass;
	this.rotateClass=rotateClass;
	this.timer = false;
	this.timercount = timercount;
	this.pausecount = pausecount;
	this.parent = jQuery('#'+parentid);
	this.listHeight=listHeight;
	this.detailHeight=detailHeight;
	this.load = function(startIndex,listName,divName)
	{
		var i = startIndex;
		var x = document.getElementById(listName+i);
		var y = document.getElementById(divName+i);
		while (typeof x!='undefined'&&x!=null && typeof y!='undefined' && y!=null)
		{
			this.listItems.push(jQuery(x));
			this.detailItems.push(jQuery(y));
			i++;
			x = document.getElementById(listName+i);
			y = document.getElementById(divName+i);
		}
		
		this.init();
	}
	this.init = function()
	{
		if (this.count()>0)
		{
			this.parent.css('height',this.count()*this.listHeight+this.detailHeight);
			this.detail(0);
		}
		else
		{
			this.parent.css('height',0);			
		}
		this.initialized=true;
		this.start();
	}
	this.start = function()
	{
		this.play(this.timercount);
	}
	this.play = function(duration)
	{
		this.pause();
		this.timer=setTimeout(this.name+'.rotate();',duration);
	}
	this.delay = function()
	{
		this.play(this.pausecount);
	}
	this.pause = function()
	{
		if (this.timer)
			clearTimeout(this.timer);
	}
	this.rotate = function()
	{
		if (this.currentIndex+1<this.count())
			this.detail(this.currentIndex+1);
		else
			this.detail(0);
		this.start();
	}
	this.detail = function(index)
	{
		if (index<this.count()&&index>=0)
		{
			if (index!=0)
			{
				this.listItems[index].addClass(this.rotateClass);
			}
			if (this.initialized)
			{
				this.listItems[this.currentIndex].removeClass(this.currentClass);
				this.listItems[this.currentIndex].removeClass(this.rotateClass);
			}
			for (var i=0;i<this.count();i++)
			{
				if (i!=index)
					this.detailItems[i].slideUp(this.slideSpeed);
			}
			if (index==0)
			{
				this.listItems[index].addClass(this.rotateClass);
			}
			if (this.initialized)
				this.detailItems[index].slideDown(this.slideSpeed,eval('function callback() {'+this.name+'.listItems[index].addClass('+this.name+'.currentClass)}'));
			this.currentIndex=index;
		}
		return false;
	}
	this.count = function()
	{
		return this.listItems.length;
	}
}
function tabBlock(name,defaultId)
{
	this.name = name;
	this.tabs = new Array();
	this.pages = new Array();
	this.tabs['T1']=jQuery('#'+defaultId);
	this.add=function(id)
	{
		this.pages.push(jQuery('#'+id));
		if (this.pages.length==1)
			this.show(1);
		else		
			this.hide(this.pages.length-1);
	}
	this.hide=function(index)
	{
		this.pages[index].css('display','none');
	}
	this.show=function(index,obj)
	{
		if (typeof obj != 'undefined' && obj!=null)
		{
			this.tabs['T'+index]=jQuery(obj);
		}

		for(var i=0;i<this.pages.length;i++)
		{
			if (i==index-1)
			{
				this.pages[i].css('display','block');
				if (typeof this.tabs['T'+(i+1)]!='undefined' && this.tabs['T'+(i+1)]!=null)
					this.tabs['T'+(i+1)].addClass('current');
			}
			else
			{
				this.hide(i);
				if (typeof this.tabs['T'+(i+1)]!='undefined' && this.tabs['T'+(i+1)]!=null)
					this.tabs['T'+(i+1)].removeClass('current');
			}
		}
	}
}

// PRINTING FUNCTIONALITY FOR ARTICLES
var srcvalue = '';
var counter = 0;
var timer;
function printcontent(panename) {
	if (panename==null||panename=='')
	panename = 'ContentPane'
	myRef = window.open('/print.aspx','mywin','left=20,top=20,width=700,height=700,toolbar=1,resizable=1,scrollbars=yes');
	srcvalue = document.getElementById('dnn_' + panename).innerHTML;
	counter = 10;
	waitfortarget();
}

function waitfortarget() {
	counter--;
	if (!myRef.document.getElementById('dnn_ContentPane'))
	{
	//DO NOTHING
		if (counter > 0) {
			timer=setTimeout("waitfortarget()", 1500);
		}
		else {
			alert('Unable to load article. Please try again later.');
		}
	}
	else {
	donetarget();
	}
}
function donetarget() {
	myRef.document.getElementById('dnn_ContentPane').innerHTML = srcvalue;
	myRef.print();
}




/**
* hoverIntent r6 // 2011.02.26 // jQuery 1.5.1+
* <http://cherne.net/brian/resources/jquery.hoverIntent.html>
* 
* @param  f  onMouseOver function || An object with configuration options
* @param  g  onMouseOut function  || Nothing (use configuration options object)
* @author    Brian Cherne brian(at)cherne(dot)net
*/
(function($){$.fn.hoverIntent=function(f,g){var cfg={sensitivity:7,interval:100,timeout:0};cfg=$.extend(cfg,g?{over:f,out:g}:f);var cX,cY,pX,pY;var track=function(ev){cX=ev.pageX;cY=ev.pageY};var compare=function(ev,ob){ob.hoverIntent_t=clearTimeout(ob.hoverIntent_t);if((Math.abs(pX-cX)+Math.abs(pY-cY))<cfg.sensitivity){$(ob).unbind("mousemove",track);ob.hoverIntent_s=1;return cfg.over.apply(ob,[ev])}else{pX=cX;pY=cY;ob.hoverIntent_t=setTimeout(function(){compare(ev,ob)},cfg.interval)}};var delay=function(ev,ob){ob.hoverIntent_t=clearTimeout(ob.hoverIntent_t);ob.hoverIntent_s=0;return cfg.out.apply(ob,[ev])};var handleHover=function(e){var ev=jQuery.extend({},e);var ob=this;if(ob.hoverIntent_t){ob.hoverIntent_t=clearTimeout(ob.hoverIntent_t)}if(e.type=="mouseenter"){pX=ev.pageX;pY=ev.pageY;$(ob).bind("mousemove",track);if(ob.hoverIntent_s!=1){ob.hoverIntent_t=setTimeout(function(){compare(ev,ob)},cfg.interval)}}else{$(ob).unbind("mousemove",track);if(ob.hoverIntent_s==1){ob.hoverIntent_t=setTimeout(function(){delay(ev,ob)},cfg.timeout)}}};return this.bind('mouseenter',handleHover).bind('mouseleave',handleHover)}})(jQuery);

/* Added for the home page rotator module */
var headline_count;var headline_interval;var old_headline=0;var current_headline=0;jQuery(function(a){function b(){current_headline=(old_headline+1)%headline_count;a("#rotator-padding .leadinItem:eq("+current_headline+")").show().addClass("active");a("#rotator-padding .leadinItem:eq("+old_headline+")").removeClass("active").hide();a(".rotator-controls div:eq("+current_headline+")").addClass("active");a(".rotator-controls div:eq("+old_headline+")").removeClass("active");old_headline=current_headline}headline_interval=setInterval(b,5e3);headline_count=a("#rotator-padding > .leadinItem ").size();a("#rotator-padding .leadinItem:first").siblings().hide();a("#rotator-padding").append('<div id="rotator-controls"></div>');a(".rotator-controls div:first").addClass("active");a(".rotator-controls > div:last").css("border-right-width","0");a(".rotator-controls div").hover(function(){var b=a(".rotator-controls div").index(this);clearInterval(headline_interval);a("#rotator-padding .leadinItem:eq("+b+")").show().siblings(".leadinItem").hide();a(this).siblings(".active").removeClass("active");a(this).addClass("active");old_headline=b},function(){var c=a(".rotator-controls div").index(this);headline_interval=setInterval(b,5e3)});})

/*Dynamic Rotator */
var headline_count2;
var headline_interval2;
var old_headline2 = 0;
var current_headline2 = 0;
/* new home page rotator start */
 jQuery(function($) { 
  headline_interval2 = setInterval(headline_rotate2, 5000); //time in milliseconds
  headline_count2 = $("#rotator-padding2 > .leadinItem2 ").size();
  $('#rotator-padding2 .leadinItem2:first').siblings().hide();
  $('#rotator-padding2').append('<div id="rotator-controls2"></div>');
  $('.rotator-controls2 div:first').addClass('active');
  $('.rotator-controls2 > div:last').css('border-right-width', '0');

  /* Homepage rotator mouse hover
  **/
  $('.rotator-controls2 div').hover( 
  function() {
    var index = $('.rotator-controls2 div').index(this);
    clearInterval(headline_interval2);
    $('#rotator-padding2 .leadinItem2:eq(' + index + ')').show().siblings('.leadinItem2').hide();
    $(this).siblings('.active').removeClass('active');
    $(this).addClass('active');
    old_headline2 = index;
  },
  function() {
    var index = $('.rotator-controls2 div').index(this);
    headline_interval2 = setInterval(headline_rotate2, 5000); //time in milliseconds
  });

  /*
  * automated rotator ***/
  function headline_rotate2() {
    current_headline2 = (old_headline2 + 1) % headline_count2;
    //alert('curr=' + current_headline + ', old=' + old_headline + ', count=' + headline_count)
    $("#rotator-padding2 .leadinItem2:eq(" + current_headline2 + ")").show().addClass('active');
    $("#rotator-padding2 .leadinItem2:eq(" + old_headline2 + ")").removeClass('active').hide();
    $(".rotator-controls2 div:eq(" + current_headline2 + ")").addClass('active');
    $(".rotator-controls2 div:eq(" + old_headline2 + ")").removeClass('active');
    old_headline2 = current_headline2;
  };
  /*
  * new homepage rotator end
  ***/
  
});