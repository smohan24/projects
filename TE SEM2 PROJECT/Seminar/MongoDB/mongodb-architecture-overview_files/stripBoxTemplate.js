var outbrain_Strip_box_version="6.5.0.1",outbrain_box_strip_template_object=typeof outbrain_box_strip_template_object=="function"?outbrain_box_strip_template_object:function(w){function j(a,b,c,d){this.url=a;this.width=b;this.height=c;this.isDefault=d}outbrain_box_strip_template_object.baseConstructor.call(this,w);this.positionDynSecondLine=this.positionFirstLine=this.positionSecondLine=false;this.positionRec=true;this.positionsStars=false;this.containerId="ob_strip_container";this.imagesPreload=
function(){};this.buildYouMightLike=function(a){a=this.getYouMightAlsoLike(a);return a!==""?"<div class='strip-like'>"+a+"</div>":""};this.buildDomRecommendations=function(){var a=[];a.push('<div style="clear:both;"/>');a.push('<div id="$FIELDSET_ID_$INDEX_$TEMPLATE_NAME" class="outbrain_stripBox_template" style="display:none;">');a.push("$PRE_WHAT_IS");a.push(" $YOU_MIGHT_LIKE_TITLE");a.push('  <div id="ob_strip_container_rel_$INDEX_$TEMPLATE_NAME" >');a.push('    <div  id="ob_strip_container_$INDEX_$TEMPLATE_NAME" >');
a.push("    </div>");a.push('    <div  id="ob_strip_container_shadow_outer_$INDEX_$TEMPLATE_NAME" >');a.push('      <div  id="ob_strip_container_shadow_$INDEX_$TEMPLATE_NAME" >');a.push('        <div style="clear:both"></div>');a.push("      </div>");a.push("    </div>");a.push(" </div>");a.push("$POST_WHAT_IS");a.push("</div>");a.push('<div style="clear:both;"/>');return a.join("")};this.renderOneRecommendation=function(a,b){var c=[],d=outbrain_settings.get(a.index,"sourceNameAfter",true);b&&c.push('<div class="item-container-shadow ">');
c.push('<div id="item-container-$WIDGET_INDEX-$DOC_IDX" class="$ITEM_CONTAINER_CLASS $ITEM_AD_CONTAINER_CLASS $ITEM_LAST" onMouseOver="$MOUSE_OVER" onMouseOut="$MOUSE_OUT">');c.push('  <div class="top-bar"></div>');c.push('    <a href="$ORIGINAL_URL"  $ONMOUSEDOWN class="strip-rec-link-img" target="$ITAM_URL_TARGET" $DOC_REL>');c.push('      <img width="$IMG_WIDTH" height="$IMG_HEIGHT" title="$DOC_TITLE_CLEAN" class="strip-img" alt="$DOC_TITLE_CLEAN" src="$IMAGE_URL" onError="$IMAGE-ERROR" >');c.push("      $VIDEO_DIV_IMAGE");
c.push("    </a>");c.push("    $AD_DIV_PAID_DISTRIBUTION");c.push('    <div class="strip-text-content">');d||c.push("      $SOURCE_CODE");c.push('      <a href="$ORIGINAL_URL" $ONMOUSEDOWN $DOC_REL target="$ITAM_URL_TARGET" class="strip-rec-link-title">$DOC_TITLE $SHOW_POPUP_DESCRIPTION_INTITLE </a>  ');d&&c.push("      $SOURCE_CODE ");c.push("    $OWNER_ZAPPER");c.push("    </div>");c.push("</div>");b&&c.push("</div>");c=c.join("");if(d=document.getElementById(this.containerId+(b?"_shadow":"")+"_"+
a.index+"_"+this.templateName)){c=this.replaceOneStripRec(c,a,b);c=outbrain_settings.isBackwards?this.backwardsReplace(c):c;outbrain_dom.elementInsertion(d,c,b,true)}};this.externalReplace=function(a){var b=outbrain_settings.get(a,"whatIsPosition",outbrain_settings.whatIs.position.BOTTOM);this.templateDOM=this.templateDOM.replace(/\$YOU_MIGHT_LIKE_TITLE/g,this.buildYouMightLike(a));this.templateDOM=this.templateDOM.replace(/\$PRE_WHAT_IS/g,b===outbrain_settings.whatIs.position.TOP?outbrain_whatIs.buildDomWhatIs(a,
this):"");this.templateDOM=this.templateDOM.replace(/\$POST_WHAT_IS/g,b===outbrain_settings.whatIs.position.BOTTOM?outbrain_whatIs.buildDomWhatIs(a,this):"")};this.showRecommendations=function(a,b){var c=outbrain_settings.get(a,"stripFlavor",outbrain_settings.Enums.StripFlavors.COLS);b=b.jsonObj;var d=this.getElementWithFullName(this.containerId,a);if(!d||!this.positionRec)return false;if(!this.recommendationsShowBefore(a)){var h=outbrain_template_manager.isAllSameSource(b.response.documents),l=b.response.documents.doc.length,
m=outbrain_template_manager.getRecommendationsPerDoc(outbrain_template_manager.DATA_REC_MIXED,b.response.documents.doc,null,null);OB_widgetObjArray[a].imageSpec=j.readFromJson(m[0]);for(var i=0;i<l;i++){var k={};k.index=a;k.docRecommendation=m[i];k.docIdx=i;k.isAllSameSource=h;k.isOwner=typeof OB_user_mode=="number"&&OB_user_mode==1;k.linkColor="black";k.textColor="black";k.isLast=i+1==l;this.renderOneRecommendation(k,false);c!==outbrain_settings.Enums.StripFlavors.ROWS&&c!==outbrain_settings.Enums.StripFlavors.LIGHT&&
this.renderOneRecommendation(k,true)}if(i>0){this.setFlavor(a,c);d.style.display="block"}this.showHideRecsElements(a,b);this.enableBlogExternalElements(a)}outbrain_log.addSign(a,"Set recommendations for index:"+a,"recRdy")};this.setFlavor=function(a,b){if(b!==outbrain_settings.Enums.StripFlavors.LIGHT){var c=!outbrain_settings.get(a,"noRecsBorder",false),d=c?3:0,h=c?2:0,l=c?-18:-20,m=a+"_"+this.templateName,i=OB_widgetObjArray[a].imageSpec.getWidth(),k=OB_widgetObjArray[a].imageSpec.getHeight(),n=
i+h*2+d*2,o=k+h*2+d*2,p=OB_widgetObjArray[a].language.IS_RTL?"right":"left",t=OB_widgetObjArray[a].language.IS_RTL?"left":"right",g=OB_widgetObjArray[a].language.IS_RTL?"RTL":"LTR",q=OB_widgetObjArray[a].language.IS_RTL?"2px 0 0 2px":"2px 2px 0 0",r=outbrain_settings.get(a,"imagePadding")!==null?outbrain_settings.getNum(a,"imagePadding"):Math.round(OB_widgetObjArray[a].imageSpec.getWidth()/12.11),s=outbrain_settings.get(a,"stripItemWidth")!==null?outbrain_settings.getNum(a,"stripItemWidth"):Math.round(OB_widgetObjArray[a].imageSpec.getWidth()*
3),u=outbrain_settings.get(a,"isPaidLabel",true),e=[],f="";e.push("#ob_strip_container_rel_$POSTFIX{width:100%;position:relative;overflow:hidden} ");e.push("#ob_strip_container_rel_$POSTFIX .strip-img{width:$IMAGE_WIDTH;height:$IMAGE_HEIGHTpx;border:none !important;margin:0px !important;display:block;padding:0px !important;background-image: url(http://widgets.outbrain.com/strip_default.png)} ");e.push("#ob_strip_container_rel_$POSTFIX .strip-rec-link-title {color:$TEXT_COLOR;font-size:13px;font-weight:normal;line-height:16px;text-decoration:none;} ");
e.push("#ob_strip_container_rel_$POSTFIX .strip-rec-link-source{color:$LINK_COLOR;font-size:12px;line-height:16px;text-decoration:none;} ");e.push("#outbrain_container_$POSTFIX .strip-like{padding-bottom:4px;font-size:14px;line-height:16px;height:20px;font-weight:bold;} ");e.push(".item-container a,.item-container a:hover,.item-container a:visited{border:medium none;text-decoration:none;}");e.push("#ob_strip_container_rel_$POSTFIX .ob_video{border:medium none;position:absolute}");e.push("#ob_strip_container_rel_$POSTFIX .strip-rec-link-img{ position:relative;} ");
e.push('.wbr:before {content: "\\200B"} ');if(b===outbrain_settings.Enums.StripFlavors.COLS){e.push("#ob_strip_container_$POSTFIX{width:100%;position:absolute;} ");e.push("#ob_strip_container_rel_$POSTFIX A{display:block;text-align:$FLOAT;} ");e.push("#ob_strip_container_rel_$POSTFIX .strip-text-content A{width:auto;padding:0px $BORDER_PADDINGpx;} ");e.push("#ob_strip_container_rel_$POSTFIX .strip-text-content{padding-top:6px;}");e.push("#ob_strip_container_$POSTFIX .item-container{padding-$PADDING_SIDE:$PADDING_AMOUNTpx;float:$FLOAT;width:$WIDTHpx;margin-bottom:300px;} ");
e.push("#ob_strip_container_$POSTFIX .item-container-last{padding-$PADDING_SIDE:0px;} ");e.push("#ob_strip_container_shadow_$POSTFIX{position:static;overflow-x:hidden;} ");e.push("#ob_strip_container_shadow_$POSTFIX .item-container{width:$WIDTHpx;visibility:hidden;} ");e.push("#ob_strip_container_shadow_outer_$POSTFIX {position:static;width:100%;} ");e.push("#ob_strip_container_shadow_$POSTFIX .item-container-shadow{width:0px;float:left;overflow-x:hidden;} ");if(u!==false){e.push("#ob_strip_container_rel_$POSTFIX .item-container-ad{position: relative}");
e.push("#ob_strip_container_rel_$POSTFIX .item-container-ad .paid-distribution a,#ob_strip_container_rel_$POSTFIX .item-container-ad .paid-distribution a:hover{text-decoration:none;background-color:$TEXT_COLOR;  border-color:#FFF;  border-style:solid;  border-width:$BORDER_PAID_WIDTH;color:#FFF;float:$FLOAT;font-family:verdana,arial,sans-serif;font-size:9px;font-size-adjust:none;font-stretch:normal;font-style:normal;font-variant:normal;font-weight:normal;  line-height:normal;  padding:2px 4px; position:relative;  top:"+
l+"px;  z-index:10;clear:both}");e.push("#ob_strip_container_rel_$POSTFIX .item-container-ad .strip-text-content{position:relative;top: "+l+"px;clear:both}")}}else if(b===outbrain_settings.Enums.StripFlavors.ROWS){e.push("#ob_strip_container_rel_$POSTFIX .strip-rec-link-img {float:$FLOAT;} ");e.push("#ob_strip_container_rel_$POSTFIX .strip-text-content {text-align:$FLOAT;padding-$FLOAT:"+(n+5)+"px} ");e.push("#ob_strip_container_rel_$POSTFIX .item-container{position:relative;height:$HEIGHTpx;padding-bottom:$PADDING_AMOUNTpx;width:100%;clear:both;} ");
e.push("#ob_strip_container_rel_$POSTFIX A{display:block;} ");e.push("#ob_strip_container_shadow_outer_$POSTFIX {display:none;} ");e.push("#ob_strip_container_rel_$POSTFIX .item-container-ad .paid-distribution a,#ob_strip_container_rel_$POSTFIX .item-container-ad .paid-distribution a:hover{text-decoration:none;background-color:$TEXT_COLOR;  border-color:#FFF;  border-style:solid;  border-width:$BORDER_PAID_WIDTH;  color:#FFF;  font-family:verdana,arial,sans-serif;  font-size:9px;  font-size-adjust:none;  font-stretch:normal;  font-style:normal;  font-variant:normal;  font-weight:normal;  line-height:normal;  padding:2px 4px; position:absolute; $FLOAT:0;  top:"+
(o+l)+"px;  z-index:10;}")}else if(b===outbrain_settings.Enums.StripFlavors.SBS){e.push("#ob_strip_container_rel_$POSTFIX .strip-rec-link-img {float:$FLOAT;} ");e.push("#ob_strip_container_rel_$POSTFIX .strip-text-content {text-align:$FLOAT;padding-$FLOAT:"+(n+5)+"px} ");e.push("#ob_strip_container_$POSTFIX{width:100%;position:absolute;} ");e.push("#ob_strip_container_rel_$POSTFIX A{display:block;direction:$DIRECTION;text-align:$FLOAT;} ");e.push("#ob_strip_container_rel_$POSTFIX .strip-text-content A{padding:0px $BORDER_PADDINGpx;} ");
e.push("#ob_strip_container_$POSTFIX .item-container{padding-$PADDING_SIDE:$PADDING_AMOUNTpx;float:$FLOAT;width:$3WIDTHpx;margin-bottom:300px;position:relative;} ");e.push("#ob_strip_container_shadow_$POSTFIX{overflow-x:hidden;} ");e.push("#ob_strip_container_shadow_$POSTFIX .item-container{width:$3WIDTHpx;visibility:hidden;} ");e.push("#ob_strip_container_shadow_outer_$POSTFIX {width:100%;} ");e.push("#ob_strip_container_shadow_$POSTFIX .item-container-shadow{width:5px;float:left;overflow-x:hidden;} ");
e.push("#ob_strip_container_rel_$POSTFIX .item-container-ad .paid-distribution a,#ob_strip_container_rel_$POSTFIX .item-container-ad .paid-distribution a:hover{text-decoration:none;background-color:$TEXT_COLOR;  border-color:#FFF;  border-style:solid;  border-width:$BORDER_PAID_WIDTH;  color:#FFF;  font-family:verdana,arial,sans-serif;  font-size:9px;  font-size-adjust:none;  font-stretch:normal;  font-style:normal;  font-variant:normal;  font-weight:normal;  line-height:normal;  padding:2px 4px; position:absolute; $FLOAT:0;  top:"+
(o+l)+"px;  z-index:10;}")}if(c>0){e.push("#ob_strip_container_rel_$POSTFIX        .strip-rec-link-img{ border:$BORDER_WIDTHpx solid #ccc ;display:block;padding:$BORDER_PADDINGpx;width:$IMAGE_WIDTHpx;height:$IMAGE_HEIGHTpx;} ");e.push("#ob_strip_container_rel_$POSTFIX .hover .strip-rec-link-img{ border:$BORDER_WIDTHpx solid $TEXT_COLOR ;display:block;padding:$BORDER_PADDINGpx;width:$IMAGE_WIDTHpx;height:$IMAGE_HEIGHTpx;} ")}f=e.join("");f=f.replace(/\$POSTFIX/g,m);f=f.replace(/\$FLOAT/g,p);f=f.replace(/\$IMAGE_HEIGHT/g,
k);f=f.replace(/\$IMAGE_WIDTH/g,i);f=f.replace(/\$WIDTH/g,i+d*2+h+2);f=f.replace(/\$HEIGHT/g,k+d*2+h+2);f=f.replace(/\$3WIDTH/g,s);f=f.replace(/\$PADDING_SIDE/g,t);f=f.replace(/\$PADDING_AMOUNT/g,r);f=f.replace(/\$DIRECTION/g,g);f=f.replace(/\$BORDER_PADDING/g,d);f=f.replace(/\$BORDER_WIDTH/g,h);f=f.replace(/\$TEXT_COLOR/g,this.getColors(a,false));f=f.replace(/\$LINK_COLOR/g,this.getColors(a,true));f=f.replace(/\$BORDER_PAID_WIDTH/g,q);f=outbrain_settings.isBackwards?this.backwardsReplace(f):f;outbrain_rater.injectCssString(f,
OB_widgetObjArray[a].widgetId)}};this.replaceOneStripRec=function(a,b,c){var d=b.index,h=outbrain_settings.get(d,"displaySameSiteTitle"),l=outbrain_settings.get(d,"openNewTab"),m=outbrain_settings.get(d,"addNofollow",null),i=outbrain_settings.get(d,"sameSourceVisible",false),k=outbrain_settings.get(d,"isPaidLabel",true),n=outbrain_settings.get(d,"stripFlavor",outbrain_settings.Enums.StripFlavors.COLS),o=outbrain_settings.get(d,"recsTarget","_self"),p=outbrain_settings.get(d,"flagPublisherZappingFeature",
false),t=this.getVideoIcon(d);n=n===outbrain_settings.Enums.StripFlavors.LIGHT;var g=outbrain_template_manager.getRecommendationDataPerDoc(this.templateName,b.index,b.docRecommendation,b.docIdx),q=g.pubId,r=g.isAdId,s=g.bocr,u=g.origUrl,e=j.readFromJson(b.docRecommendation);if(g.postLink==null||g.linkText==null||g.sourceName==null)return false;var f=outbrain_settings.get(b.index,"sourceNameAfter",true),v="";if(typeof s==="string"&&!isNaN(q)&&typeof OB_user_mode==="number"&&OB_user_mode===1&&p===true)v=
this.renderRecCancelationForPublishers(u,q,r?1:0);else if(typeof s=="string"&&s.length>0&&b.isOwner)v=this.renderRecCancelation(d,b.docIdx,g.bocr);p=typeof b.docRecommendation.showLogo=="boolean"&&b.docRecommendation.showLogo===true?this.createPopUpDescription():"";if(b.isAllSameSource&&g.isSameSource&&!i)i=h="";else{i=outbrain_settings.get(d,"sameSrcLoctionString",null)!=null?outbrain_settings.get(d,"sameSrcLoctionString","NA"):outbrain_language_manager.getThisSiteString(d);h=this.buildLocationString(d,
g.isSameSource&&h?i:g.sourceName,g.isSameSource,g.pubDate);i='<a href="$ORIGINAL_URL" $ONMOUSEDOWN $DOC_REL target="$ITAM_URL_TARGET" class="strip-rec-link-source">$SOURCE_TITLE $SHOW_POPUP_DESCRIPTION_INSOURCE</a> '}a=a.replace(/\$SOURCE_CODE/g,i);i="_blank";i=!g.isAdId&&!l?o:i;i=g.isSameSource&&!g.isAdId&&!l?o:i;l="";if(g.isAdId&&typeof m=="string"&&(m==outbrain_settings.rater.recommendations.rel.REL_ALL||m==outbrain_settings.rater.recommendations.rel.REL_ADS))l="rel='nofollow'";if(!g.isAdId&&typeof m==
"string"&&(m==outbrain_settings.rater.recommendations.rel.REL_ALL||m==outbrain_settings.rater.recommendations.rel.REL_ORGANIC))l="rel='nofollow'";m="javasctipt:outbrain_template_manager.templates['"+this.templateName+"'].onMouseOut ($WIDGET_INDEX,$DOC_IDX,'item-container');";o="javasctipt:outbrain_template_manager.templates['"+this.templateName+"'].onMouseOver($WIDGET_INDEX,$DOC_IDX,'item-container');";q="javasctipt:outbrain_template_manager.templates['"+this.templateName+"'].imageError(this);";r=
typeof outbrain_browsers.isMobile=="boolean"&&outbrain_browsers.isMobile==true;a=a.replace(/\$MOUSE_OVER/g,r||n?"":o);a=a.replace(/\$MOUSE_OUT/g,r||n?"":m);a=a.replace(/\$ONMOUSEDOWN/g,n?"":"onMouseDown=\"this.href='$POST_LINK';return true;\"");a=a.replace(/\$WIDGET_INDEX/g,d);a=a.replace(/\$DOC_IDX/g,b.docIdx);a=a.replace(/\$ITEM_LAST/g,b.isLast?"item-container-last":"");a=a.replace(/\$ITEM_CONTAINER_CLASS/g,"item-container");a=a.replace(/\$ITEM_AD_CONTAINER_CLASS/g,g.isAdId?"item-container-ad":
"");a=a.replace(/\$ORIGINAL_URL/g,g.origUrl);a=a.replace(/\$POST_LINK/g,g.postLink);a=a.replace(/\$ITAM_URL_TARGET/g,i);a=a.replace(/\$DOC_TITLE_CLEAN/g,this.insertStringCleaner(g.linkText));a=a.replace(/\$DOC_TITLE/g,this.insertStringBreak(g.linkText));a=a.replace(/\$IMAGE_URL/g,e.getUrl());a=a.replace(/\$VIDEO_DIV_IMAGE/g,!c&&g.isVideo===true?this.buildDomVideoDiv(d,t):"");a=a.replace(/\$AD_DIV_PAID_DISTRIBUTION/g,g.isAdId&&k&&!c?this.buildDomPaidDiv(d):"");a=a.replace(/\$SOURCE_TITLE/g,this.insertStringBreak(h));
a=a.replace(/\$DOC_REL/g,l);a=a.replace(/\$OWNER_ZAPPER/g,v);a=a.replace(/\$SHOW_POPUP_DESCRIPTION_INSOURCE/g,f===true?p:"");a=a.replace(/\$SHOW_POPUP_DESCRIPTION_INTITLE/g,f===false?p:"");a=a.replace(/\$IDX/g,d).replace(/\$PCID/g,b.docRecommendation.pc_id).replace("$CAMPAIGNID",b.docRecommendation.campaign_id);a=a.replace(/\$IMG_WIDTH/g,e.getWidth());a=a.replace(/\$IMG_HEIGHT/g,e.getHeight());return a=a.replace(/\$IMAGE-ERROR/g,q)};this.backwardsReplace=function(a){a=a.replace(/(strip-rec-link-img)/g,
"ob-$1");a=a.replace(/(strip-img)/g,"ob-$1");a=a.replace(/(strip-text-content)/g,"ob-$1");a=a.replace(/(item-container[. {])/g,"ob-$1");a=a.replace(/(item-container-ad[. {])/g,"ob-$1");a=a.replace(/(paid-distribution)/g,"ob-$1");return a=a.replace(/(top-bar)/g,"ob-$1")};this.imageError=function(a){a.src=j.DEFAULT_IMG_URL;a.alt="";a.title=""};this.balloonWhatsThis=function(a,b){b=typeof b=="string"&&b.length>0?b:outbrain_language_manager.whatsThis(a);return'<a class=\'\' href="javascript:void(0)" onClick="javascript:'+
this.callForToolTip(a,"this",OB_widgetObjArray[a].language.IS_RTL)+'" >'+b+"</a>"};this.buildDomPaidDiv=function(a){var b=this.callForToolTip(a,"this",!OB_widgetObjArray[a].language.IS_RTL);str=[];str.push('<div class="paid-distribution">');str.push('<a href="javascript:void(0)" onClick="'+b+'">');str.push(outbrain_language_manager.getSponsoredLinkImage(a));str.push("</a></div>");return str.join("")};this.buildDomVideoDiv=function(a,b){if(b.url===null||b.length>0||b.url===null||b.url==="none")return"";
a=outbrain_browsers.ie6===true&&b.ie!==null?b.ie:b.url;str=[];str.push('<div class="ob_video" style="top:'+b.top+"px;left:"+b.left+'px">');str.push('  <img title="Play Video" class="strip-video-img" alt="Play Video" src="'+a+'" onError="this.style.display=\'none\'" >');str.push("</div>");return str.join("")};this.getVideoIcon=function(a){var b=outbrain_settings.get(a,"videoIconUrl","http://widgets.outbrain.com/images/videoIcons/video_icon.png");a=outbrain_settings.get(a,"videoIconPosition");if(typeof b===
"string"){var c=b.split("|"),d=a.toLowerCase().split("x");b=c.length>0?c[0]:"default";a=d.length>0?d[0]:5;d=d.length>1?d[1]:5;c=c.length>1?c[1]:b;if(b.toLowerCase()==="default"){b=outbrain_settings.domains.js+"images/videoIcons/video_icon.png";c=outbrain_settings.domains.js+"images/videoIcons/playVideo.gif"}var h={};h.url=b;h.top=a;h.left=d;h.ie=c;return h}return null};this.insertStringBreak=function(a){if(!a)return"";return a.replace(/([a-z\/\\])([A-Z])/gm,"$1<wbr><span class='wbr'></span>$2").replace(/(\.)/gm,
".<wbr><span class='wbr'></span>")};this.insertStringCleaner=function(a){if(!a)return"";return a.replace(/(["'])/gm,"")};this.onMouseOver=function(a,b,c){c=c?c:"item-container";a=document.getElementById(c+"-"+a+"-"+b);b=a.className;if(b.indexOf("hover")<=0)a.className=b+" hover"};this.onMouseOut=function(a,b,c){c=c?c:"item-container";a=document.getElementById(c+"-"+a+"-"+b);b=a.className;if(b.indexOf("hover")>0)a.className=b.replace("hover","")};this.getStyle=function(a,b){if(a.currentStyle)var c=
a.currentStyle[b];else if(window.getComputedStyle)c=document.defaultView.getComputedStyle(a,null).getPropertyValue(b);return c};this.getColors=function(a,b){var c=document.getElementById(outbrain_template_manager.initElementDivId+a);if(c){var d=document.createElement(b?"a":"span");b&&d.setAttribute("href","void(0)");d.setAttribute("id","ob_test_ele_"+a);d.innerHTML=".";c.appendChild(d);var h=this.getStyle(d,"color");c.removeChild(d);if(!b&&(h=="rgb(0, 0, 0)"||h=="#000000"))h="#555"}return h};j.DEFAULT_WIDTH=
109;j.DEFAULT_HEIGHT=109;j.DEFAULT_IMG_URL="http://widgets.outbrain.com/strip_default.png";j.CURRENT_IMG_WIDTH=j.DEFAULT_WIDTH;j.CURRENT_IMG_HEIGHT=j.DEFAULT_HEIGHT;j.readFromJson=function(a){var b=j.DEFAULT_IMG_URL,c=j.DEFAULT_WIDTH,d=j.DEFAULT_HEIGHT;if(a=a.thumbnail){b=a.url;c=a.width;d=a.height;j.CURRENT_IMG_WIDTH=Number(c);j.CURRENT_IMG_HEIGHT=Number(d)}return new j(b,c,d,true)};j.prototype.getUrl=function(){return this.url};j.prototype.getWidth=function(){return this.width};j.prototype.getHeight=
function(){return this.height}};outbrain_box_strip_template_object.prototype=outbrain_template_object;outbrain_box_strip_template_object.prototype.constructor=outbrain_box_strip_template_object;outbrain_box_strip_template_object.baseConstructor=outbrain_template_object;outbrain_template_manager.addTemplate({stripBox:outbrain_box_strip_template_object});
