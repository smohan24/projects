window.PubMatic=window.PubMatic||{};PubMatic.PmAdInfoClass=PubMatic.PmAdInfoClass||function(a){if("ifrAdMgr" in PubMatic){this.mergeIframeInfo()}};if(!PubMatic.pmAdInfo||!(PubMatic.pmAdInfo instanceof PubMatic.PmAdInfoClass)){window.pubMWin=window.pubMWin||window;PubMatic.PmAdInfoClass.prototype={constructor:PubMatic.PmAdInfoClass,isInit:false,isShowAd:true,adIdPrefix:null,adTags:[],lastJsTag:null,conf:{pm_sync_msg_ignore_list:[22245,19677,370,20553,24668,19953,23636,26248,20977,22488],pm_akamai_bypass_list:[21576,25273,26867],pm_dppix_disabled_list:[16237,17456,20553,20977,21994,22488,23636,25434,25438,26248,26664,27331,27332,27343,27444,29155,28127,30534,26151,27428],pm_unidef_pubId_list:[27675,5007,319,30220,30351,26448,28332,26448,30482,30389,30470,30530,27677,30104,30561,30394,30547,30398,25015,28214,30258,26436,30462,20977,27354,27699,27394,30206,30326,30710,30470,24011,27717,19451,24383,23583,30692,30784,30787,30671,29475,28173,30123,29163,29172,26701,16437,29582,27249,27145,25656,27605,25659,27580,26288,23105,26947,26914,27300,27873,29880,28575,30336,30543,30545,30426,30329,30859,30882,30856,30891,30893,28127,27341,25273,27784,31246,31125,31110,31122,31042,31183,31158,31177,31185,31242,31281,31342,31365,31354,31378,27780,31305,27488,25571,8992,31363,28536,28489,17410,27330,28360,27438,31181],pm_do_optimizedjs_pub_list:[26481,20977,27936,28127],proactiveTracker_pubId:[0],pm_dt_pubId_list:[30534],pm_nydcpub_list:[],pm_nydcsite_list:[],komliad_js_base:"ads.pubmatic.com/AdServer",maxUrlLen:150},loadBalancer:function(a,b){var c=this.findValInArray,d=this.conf,f=b.protocol.toString();if(b.protocol.isSecure){b.adBase="sshowads.pubmatic.com/AdServer"}else{if(c(a.pubId,d.pm_akamai_bypass_list)){b.adBase="showads.pubmatic.com/AdServer"}else{if(c(a.pubId,d.pm_nydcpub_list)||c(a.siteId,d.pm_nydcsite_list)){b.adBase="showads1000.pubmatic.com/AdServer"}else{if(c(a.pubId,d.pm_dt_pubId_list)){b.adBase="dtshowads.pubmatic.com/AdServer"}else{b.adBase="showads.pubmatic.com/AdServer"}}}}b.adBase=f+b.adBase;b.jsBase=f+"ads.pubmatic.com/AdServer/js"},findValInArray:function(c,b){var a=b.length;while(a--){if(b[a]==c){return String(a)}}return false},commonParams:{},commonMeta:{},init:function(){if(!this.isInit){this.setCommonParams();this.isInit=true}},setCommonParams:function(){this.setUniqueAdIdPrefix();this.setPageUrlInfo()},setPageUrlInfo:function(){var b=this.conf.maxUrlLen,f=String(location.protocol+"//"+location.host+location.pathname).substr(0,b),a=String(window.refurl||document.referrer).split("#")[0].split("?")[0].substr(0,b),d=f.length,g=f.indexOf("pubmatic.com/")>0?0:b-d,c=String(f).replace(/\//g,"").replace(/\.|\:|\\|#|\;|\&|\=/g,"_")+"_komli_ads_frame_";f+=location.search.substr(0,g);this.commonMeta.pageURL=encodeURIComponent(f);a&&(this.commonMeta.refurl=encodeURIComponent(a));this.commonMeta.frmNamePrefix=c;this.commonMeta.isIE=(PubMatic.BrowserDetect.browser==="IE")},setUniqueAdIdPrefix:function(){var d="top",b=self,c=0,g,a;while(b!=top){c++;try{g=b.parent;a=g.length;while(a--){if(g[a]==b){d+="_"+a;break}}}catch(f){d+="_unknown_"+PubMatic.BrowserDetect.browser+PubMatic.BrowserDetect.version;break}b=g}this.adIdPrefix=d;this.commonParams.inIframe=c?1:0;if("isSingleFrame" in window){this.commonParams.inMultipleNestedIframes=window.isSingleFrame=="true"?"0":"1"}},getLastJsAdTag:function(){return this.lastJsTag},addCommonConf:function(d,a){var c=this.commonParams,b;for(b in c){if(c.hasOwnProperty(b)&&!(d.hasOwnProperty(b))){d[b]=c[b]}}},addCommonMeta:function(d,a){var c=this.commonMeta,b;for(b in c){if(c.hasOwnProperty(b)&&!(a.hasOwnProperty(b))){a[b]=c[b]}}},setFrequency:function(b,a){var c=a.jsBase+"/freq.html";this.createHiddenIframe(c)},syncupPixels:function(b,a){var c;if(!this.findValInArray(b.pubId,this.conf.pm_sync_msg_ignore_list)){if(b.pubId==21953){c=a.jsBase+"/syncuppixels_21953.html"}else{c=a.jsBase+"/syncuppixels.html?p="+b.pubId+"&s="+b.siteId}this.createHiddenIframe(c,"synciframe")}},syncDPPixels:function(b,a){if(!this.findValInArray(b.pubId,this.conf.pm_dppix_disabled_list)){var c=a.jsBase+"/dppix.html?p="+b.pubId+"&s="+b.siteId+"&a="+b.adId;this.createHiddenIframe(c,"dpsynciframe")}},createHiddenIframe:function(d,a,f,c){if(document.readyState=="complete"&&document.body){var b=document.createElement("iframe");if(f){b.id=f}if(a){b.name=a}if(c){b.onload=c}if(d){b.src=d}b.setAttribute("frameborder","0");b.setAttribute("allowtransparency","true");b.setAttribute("marginheight","0");b.setAttribute("marginwidth","0");b.setAttribute("scrolling","no");b.setAttribute("width","0");b.setAttribute("height","0");b.setAttribute("hspace","0");b.setAttribute("vspace","0");c&&b.setAttribute("onload",c);b.style.position="absolute";b.style.top="-15000px";b.style.left="-15000px";document.body.appendChild(b)}else{document.writeln("<iframe"+(f?' id="'+f+'"':"")+(a?' name="'+a+'"':"")+' frameborder="0" allowtransparency="true" marginheight="0" marginwidth="0" scrolling="no" width="0" hspace="0" vspace="0" height="0" style="position:absolute;top:-15000px;left:-15000px" src="'+d+'"'+(c?' onload="'+c+'"':"")+"></iframe>")}},setProtocol:function(h,b){this.allScripts=this.allScripts||document.getElementsByTagName("script");var g=this.allScripts,f=g[g.length-1],d=f.src||"",a=d.indexOf("://"),c=h.protocol||"http";if("protocol" in h){c=h.protocol;h.protocol=null;delete h.protocol}if(a>0){c=d.slice(0,a)}b.protocol={isSecure:(c=="https"),toString:function(){return c+"://"}}},getPreviousAdIds:function(){var b=[],d=this.adTags,a=d.length,f=0;for(;f<a;f++){b.push(d[f].conf.adId)}return b.join("_")},validateAdConf:function(a){return a.pubId&&a.siteId&&a.adId&&a.kadheight&&a.kadwidth},createAdTag:function(d){var h=this.adTags,b=this.adTags.length,g=this.adIdPrefix+"_"+b,c;var a={uAdId:g,adIndx:b,prevkadIds:this.getPreviousAdIds(),useGenericDefault:true},f=d.kadNetwork?true:false;this.setProtocol(d,a);this.addCommonConf(d,a);this.addCommonMeta(d,a);this.loadBalancer(d,a);c=new PubMatic.AdTag(d,a);h.push(c);h[g]=c;c.isJsTag&&(this.lastJsTag=c);if(!(b||(d.kadNetwork&&!this.commonParams.inIframe))){this.setFrequency(d,a);this.syncupPixels(d,a);this.syncDPPixels(d,a)}return c},jsAdLoaded:function(a,c){if(c&&c.readyState!="complete"){return}var b=this.adTags[a];b.postLoad();this.fireAdEvent("onPubMaticAdLoad",b.info)},setNetworkId:function(b){var a=this.adTags[b];a.updateAdInfo.apply(a,arguments);this.fireAdEvent("onPubMaticAdInfoUpdated",a.info)},infoFrameLoaded:function(b,c){var a=this.adTags[c];a.updateInfoFrame.apply(a,arguments)},fireAdEvent:function(a,d){var c=document.body||document.getElementsByTagName("body")[0]||false,b;if(!c||!document.createEvent){return}if(document.createEvent){b=document.createEvent("HTMLEvents");b.info=d;b.initEvent(a,true,true);c.dispatchEvent(b)}else{if(document.createEventObject){b=document.createEventObject();b.info=d;c.fireEvent(a,b)}}},mergeIframeInfo:function(){var c=PubMatic.ifrAdMgr.adInfo;var a=function(){};a.prototype=PubMatic.AdTag.prototype;var b=new a();b.defaultThisTag=function(){c.showAd()};b.conf=PubMatic.ifrMeta.pObj;this.adTags.push(b);this.adTags[b.conf.pmUniAdId]=b;this.lastJsTag=b}};PubMatic.AdTag=function(b,a){this.conf=b;this.meta=a;this.postLoadTasks=[];var f=this.uAdId=a.uAdId,d=a.adBase+"/AdServerServlet",c=b.kadNetwork;this.adInfoUrl=a.jsBase+"/adTagInfo.html";this.adServUrl=d;delete b.kadNetwork;if(c){this.conf.oldDefTag=1}this.setAdParams();this.info={adServerUrl:d,uAdId:f,uParams:this.getUrlParams(),nwIds:c?[c]:[],camIds:c?[""]:[],ecpms:c?[""]:[],acpms:c?[""]:[],lastDefNwId:"0",defCnt:0};if(this.isJsTag){this.conf.operId=3;this.loadCreative=this.loadJsCreative;this.loadCreative();this.insertPostLoadScrip()}else{this.conf.operId=1;this.loadCreative=this.loadIframeCreative;this.loadCreative()}};PubMatic.AdTag.prototype={custParamsMap:{kadgender:"kadgdr",kadage:"kadage",kadhints:"kadhints",kadkw:"kadkw",kadupostalcode:"kadupcode",kadufirstname:"kadufname",kaducity:"kaducty",kadfloor:"kadfloor",kadgcid:"kadgcid",kadgecpm:"kadgecpm",kadgid:"kadgid",kadgsiteid:"kadgsiteid",kadgsectionid:"kadgsectionid",kadgadid:"kadgadid",kadpubclkurl:"kadpubclkurl",kfnetworkid:"pmForceAdNetwork",kadtpcid:"kadtpcid",kGeoLatitude:{param:"loc",fn:function(a,b){var c=b.kGeoLongitude||window.kGeoLongitude||undefined;b.kGeoLongitude&&(delete b.kGeoLongitude);b.kGeoLatitude&&(delete b.kGeoLatitude);if(c!=undefined){return a+","+c}return false}},pmzoneid:{param:"pmZoneId",fn:function(b){var c=typeof b,d=false,a=this.staticInfo.ZONE_ID_LIMIT;switch(c){case"number":d=b;break;case"string":d=b?b.split(",").slice(0,a).join():false;break;case"object":d=b instanceof Array?b.slice(0,a).join():false;break}window.pmzoneid=undefined;return d}},PubMaticAI:{param:"noEnc",fn:function(){return 1}},kadbeacon:{param:"kadbeacon",fn:function(c,a){var b=decodeURIComponent(c);if(b==c){c=encodeURIComponent(c)}return c}},kasdbeacon:{param:"kadbeacon",fn:function(c,a){var b=decodeURIComponent(c);if(b==c){c=encodeURIComponent(c)}return c}},kadpageurl:{param:"kadpageurl",fn:function(c,a){var b=decodeURIComponent(c);if(b==c){c=encodeURIComponent(c)}return c}},kaddefurl:{param:"kaddefurl",fn:function(c,a){var b=decodeURIComponent(c);if(b==c){c=encodeURIComponent(c)}return c}},refurl:"refurl",simFrmDefault:"inFrameDefault"},staticInfo:{startDivPrefix:"pmAdStart_",endDivPrefix:"pmAdEnd_",postScriptPrefix:"pmPostLoad_",infoFrmPrefix:"pmInfoFrm_",startDivName:"pmAdStart",endDivName:"pmAdEnd",infoFrameName:"pmAdInfoFrm",andSym:String.fromCharCode(176),eqlSym:String.fromCharCode(192),ZONE_ID_LIMIT:5},isAdLoaded:false,loadCreative:function(){},defaultThisTag:function(){if(!this.conf.pmUniAdId||this.info.nwIds.length<1){this.info.uParams+="&noInfo=1";this.info.nwIds=[]}this.loadCreative()},loadJsCreative:function(){var b=this.conf,c="",a;a="style='display:none;float:left;margin:0px;height:0px;width:0px;' kadheight='"+b.kadheight+"' kadwidth='"+b.kadwidth+"' rec='"+b.frameName+"' pid='"+b.pubId+"' ";c='<div id="k_adsbeacon" '+a+'></div><script type="text/javascript" src="'+this.getAdServerSrc()+'" ><\/script><div id="k_adsbeacon" '+a+"></div>";document.write(c)},loadIframeCreative:function(){var a=this.conf,b='<iframe frameborder="0" allowtransparency="true" hspace="0" vspace="0" marginheight="0" marginwidth="0" scrolling="no" height="'+a.kadheight+'" width="'+a.kadwidth+'" name="'+a.frameName+'" src="'+this.getAdServerSrc()+'"></iframe>';document.write(b)},insertPostLoadScrip:function(){var a=this.staticInfo,c=this.uAdId,b=a.postScriptPrefix+c;if(this.meta.isIE){document.write('<script type="text/javascript" id="'+b+'"  src="'+this.meta.jsBase+'/empty.js"  onReadyStateChange="PubMatic.pmAdInfo.jsAdLoaded(\''+c+"' , this);\"><\/script>")}else{document.write('<script type="text/javascript" id="'+b+'" >PubMatic.pmAdInfo.jsAdLoaded( "'+c+'");<\/script>')}},getUrlParams:function(c){c=c||this.conf;var b,a=[];for(b in c){if(c.hasOwnProperty(b)&&c[b]!=""&&c[b]!=undefined){a.push(b+"="+c[b])}}return a.join("&")},getAdServerSrc:function(){var a=this.getDefaultParams();return this.adServUrl+"?"+(a?a+"&":"")+this.info.uParams},getDefaultParams:function(){var b=this.info,g=b.nwIds,f=g.length,h="",d,i,j,a,m,n;if(f){i=b.camIds;a=[];d={kadNetwork:g[f-1],defcount:f};if(d.kadNetwork==243){d.defactecpm=b.acpms[f-1];d.defecpm=b.ecpms[f-1]}for(m=0;m<f;m++){n=g[m];if(Number(n)!=243){j=n}else{a.push(i[m])}}d.lastdefadnwkID=j||"0";d.defcmpgIDs=a.join();h=this.getUrlParams(d)}return h},setAdParams:function(){this.setTagType();this.setSecureFlag();this.setColorsConf();this.setTimeStampAndZoneConf();this.setScreenResolutionConf();this.setAdPositionConf();this.setCustomizedParams();this.setFrameName();this.setPrevAdIds();this.setTimeoutParams();this.meta.useGenericDefault&&this.setGenericDefaultParams();this.setCacheBusterParam();this.setPageUrl()},setTagType:function(){var b=1,a=this.conf.kadtype?true:false;if(a){b=3;this.isJsTag=true}else{this.isIFrameTag=true}this.conf.operId=b;this.conf.kadtype=null;delete this.conf.kadtype;window.kadtype&&(window.kadtype=undefined)},setSecureFlag:function(){var a=this.meta.protocol;if(a&&a.isSecure){this.conf.sec=1}},setPrevAdIds:function(){var a=this.meta.prevkadIds;if(a){this.conf.prevkadIds=a}},setColorsConf:function(){var c=window,l=c.pmadbgcolor||c.padbgcolor||"",q=c.pmadlinkcolor||c.padlinkcolor||"",h=c.pmadtextcolor||c.padtextcolor||"",g=this.Util,b=g.isValidColor,m,d,o,n,t,j,s,f,r,a,i;l=l&&b(l)?l:"";q=q&&b(q)?q:"";h=h&&b(h)?h:"";try{if(!l||!q||!h){m="PubMaitc_AdTags_Loading_";d=m+this.uAdId;o=m+"Anchor_"+this.uAdId;n="height:0;width:0;padding:0;margin:0;display:none;";t=g.getElById;document.write("<div id='"+d+"' style='"+n+"'> <a id='"+o+"' style='"+n+"' href='javascript:void(0);'></a></div>");f=document.getElementById(o);s=f?f.parentNode:document.getElementById(d);this.parentElement=j=s.parentNode;if(!q){q=g.getColorStyle(f,"color")}if(!h){h=g.getColorStyle(j,"color")}if(!l){i="transparent";a=j;r=navigator.appName.indexOf("Microsoft")>-1?"backgroundColor":"background-color";while(i==="transparent"){if(a.tagName==="HTML"){i=document.bgColor;break}i=g.getStyle(a,r)||"transparent";a=a.parentNode}l=g.getHexColorCode(i)||""}}}catch(p){if(typeof console!="undefined"){if(typeof console.log==="function"){}}if(!b(l)){l=document.bgColor}if(!b(q)){q=document.linkColor}if(!b(h)){h=document.fgColor}}this.conf.kbgColor=l.replace("#","");this.conf.ktextColor=h.replace("#","");this.conf.klinkColor=q.replace("#","")},setTimeStampAndZoneConf:function(){var a=new Date();this.conf.kltstamp=a.getFullYear()+"-"+(a.getMonth()+1)+"-"+a.getDate()+" "+a.getHours()+":"+a.getMinutes()+":"+a.getSeconds();this.conf.timezone=(a.getTimezoneOffset()/60)*(-1)},setScreenResolutionConf:function(){this.conf.screenResolution=screen.width+"x"+screen.height},setAdPositionConf:function(){var a="pubTestSpan_"+this.uAdId,d=this.Util,c,b;document.write('<span id="'+a+'"></span>');c=d.getElById(a);b={left:d.getLeft(c),top:d.getTop(c),width:this.conf.kadwidth,height:this.conf.kadheight};this.setAdPosition(c,b)},setAdPosition:function(d,c){var h=d,f=c.width,b=c.height,g=c.top,i=c.left,a;if(h){a=findAdPosition.call(this,f,b,g,i,g,i);this.conf.adPosition=a.top+"x"+a.left;if(a.visibility==0){this.conf.adVisibility=2}else{if(a.visibility==1){this.conf.adVisibility=1}else{this.conf.adVisibility=(a.visibility+1)}}}},setCustomizedParams:function(){var d=this.custParamsMap,b,c,a;for(b in d){if(d.hasOwnProperty(b)){a=this.conf[b]||window[b]||undefined;if(a!=undefined){c=d[b];switch(typeof c){case"object":a=c.fn.call(this,a,this.conf);c=c.param;if(a&&c){this.conf[c]=a}break;default:this.conf[c]=encodeURIComponent(a);break}}}}},setFrameName:function(){this.conf.frameName=this.frameName=this.meta.frmNamePrefix+this.meta.adIndx+"_"+this.conf.pubId+"_"+this.conf.siteId},setCacheBusterParam:function(){this.conf.ranreq=Math.random()},setTimeoutParams:function(){var a=this.conf,f=this.conf.kAdTimeout||window.kAdTimeout,c=this.meta.adIndx,d=this.uAdId,b=this;if(f&&this.isJsTag){PubMatic.checkTimeout=PubMatic.checkTimeout||function(g,h){var i=PubMatic.pmAdInfo.adTags[g].timeOutInfo;i.isLoaded=true;i.timeoutObj&&clearTimeout(i.timeoutObj);if(i.isTimedOut||!h){i.failFn&&i.failFn.call(window,i.timeoutId);h=false}else{i.succFn&&i.succFn.call(window,i.timeoutId)}return h};this.timeOutInfo={timeoutId:a.kAdTimeoutId||window.kAdTimeoutId||d,timeOut:Number(f),isLoaded:false,isTimedOut:false,succFn:a.kSuccessCallBack||window.kSuccessCallBack||null,failFn:a.kFailCallBack||window.kFailCallBack||null,timeoutObj:setTimeout(function(){var g=b.timeOutInfo;if(!g.isLoaded){g.isTimedOut=true}},f)};this.assertTimeout=function(){if(!this.timeOutInfo.isLoaded){PubMatic.checkTimeout(this.uAdId,false)}};!this.meta.isIE&&this.postLoadTasks.push(this.assertTimeout);f=null;kFailCallBack=null;kSuccessCallBack=null;kAdTimeoutId=null;this.conf.tOut=1;this.conf.adIndx=String(c)}},setPageUrl:function(){this.conf.pageURL=this.meta.pageURL;this.conf.refurl=this.meta.refurl},setGenericDefaultParams:function(){this.conf.pmUniAdId=this.uAdId;if(this.meta.isIE&&PubMatic.BrowserDetect.version<7){this.conf.avoidFrameDefault=1}if(this.isJsTag){this.createAdInfoFrame()}},createAdInfoFrame:function(){var d=this.adInfoUrl,b=this.staticInfo,a=b.infoFrameName,f=b.infoFrmPrefix+this.uAdId,c="PubMatic.pmAdInfo.infoFrameLoaded(this,'"+this.uAdId+"')";this.Util.createHiddenIframe(d,a,f,c)},updateAdInfo:function(g,f,c,d,h){var b=this.info,a;b.nwIds.push(f);b.camIds.push(c||"");b.ecpms.push(String(d)||"");b.acpms.push(String(h)||"");if(f!=243){b.lastDefNwId=f}if(this.isJsTag&&this.frmObj){this.updateInfoFrame()}},updateInfoFrame:function(b){if(!(this.frmObj||b)){return}b=this.frmObj=b||this.frmObj;if(this.info.nwIds.length){var a=this.getHashStr(),c=this.adInfoUrl+"#"+a;if(b.contentWindow){b.contentWindow.location.replace(c)}else{b.src=c}}},getHashStr:function(){var g=this.staticInfo,a=[],c,b,d=this.conf,f={defaultUrl:this.getAdServerSrc(),frameName:d.frameName,adHeight:d.kadheight,adWidth:d.kadwidth,uAdId:this.uAdId};for(c in f){if(f.hasOwnProperty(c)){b=f[c];if(b instanceof Array){b="["+b+"]"}else{if(typeof b==="string"){b=b.replace(/&/g,g.andSym).replace(/\=/g,g.eqlSym)}else{continue}}b=encodeURIComponent(b);a.push(c+"="+b)}}return a.join("&")},isDefaultTag:function(a){var b=this.conf,d=this.info.nwIds.length,c=d?this.info.nwIds[d-1]:false;if(!c){c=a.kadNetwork;this.info.nwIds.push(c)}return b.pubId==a.pubId&&b.siteId==a.siteId&&b.adId==a.adId&&b.kadheight==a.kadheight&&b.kadwidth==a.kadwidth&&c==a.kadNetwork},postLoad:function(){this.isAdLoaded=true;var b=this.postLoadTasks,a=b.length,d=0;for(;d<a;d++){b[d].apply(this)}},Util:{createHiddenIframe:PubMatic.PmAdInfoClass.prototype.createHiddenIframe,findValInArray:PubMatic.PmAdInfoClass.prototype.findValInArray,isValidColor:function(a){return a.match("^([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$")?true:false},getStyle:function(a,b){var c;a=typeof a==="string"?document.getElementById(a):a;c=a.currentStyle?a.currentStyle[b]:(window.getComputedStyle?document.defaultView.getComputedStyle(a,null).getPropertyValue(b):"");c=c?c.replace(/\s|rgb|\(|\)|\#/g,""):"";return c},getColorStyle:function(){var b=this,a=b.getStyle.apply(b,arguments);return b.isValidColor(a)||!a?(a||""):this.getHexColorCode(a)},getHexColorCode:function(d){var c,f,a,b;if(this.isValidColor(d)){c=d}else{f=d.replace(/\s|rgb|\(|\)|\#/g,"").split(",");a=f.length;if(a===4){c="ffffff"}else{if(a===3){c="";while(a--){b=Number(f[a]);c=b.toString(16).toUpperCase()+c;if(b<16){c="0"+c}}}else{c=d}}}return c},getElById:function(a){return document.getElementById(a)},getTop:function(a){var b=0;while(a){b+=a.offsetTop;a=a.offsetParent}return b},getLeft:function(b){var a=0;while(b){a+=b.offsetLeft;b=b.offsetParent}return a}}};PubMatic.pmAdInfo=new PubMatic.PmAdInfoClass(PubMatic.pmAdInfo);PubMatic.showAd=function(b){this.BrowserDetect.init();var c=this.pmAdInfo;c.init();if(c.validateAdConf(b)){var a=c.createAdTag(b)}}}PubMatic.BrowserDetect=PubMatic.BrowserDetect||{needInit:true,init:function(){if(this.needInit){this.browser=this.searchString(this.dataBrowser)||"An unknown browser";this.version=this.searchVersion(navigator.userAgent)||this.searchVersion(navigator.appVersion)||"an unknown version";this.OS=this.searchString(this.dataOS)||"an unknown OS";this.needInit=false;PubMatic.browser=this.browser;PubMatic.browserVersion=this.version}},searchString:function(d){var a=0;for(;a<d.length;a++){var b=d[a].string;var c=d[a].prop;this.versionSearchString=d[a].versionSearch||d[a].identity;if(b){if(b.indexOf(d[a].subString)!=-1){return d[a].identity}}else{if(c){return d[a].identity}}}},searchVersion:function(b){var a=b.indexOf(this.versionSearchString);if(a==-1){return}return parseFloat(b.substring(a+this.versionSearchString.length+1))},dataBrowser:[{string:navigator.userAgent,subString:"Chrome",identity:"Chrome"},{string:navigator.userAgent,subString:"OmniWeb",versionSearch:"OmniWeb/",identity:"OmniWeb"},{string:navigator.vendor,subString:"Apple",identity:"Safari",versionSearch:"Version"},{prop:window.opera,identity:"Opera",versionSearch:"Version"},{string:navigator.vendor,subString:"iCab",identity:"iCab"},{string:navigator.vendor,subString:"KDE",identity:"Konqueror"},{string:navigator.userAgent,subString:"Firefox",identity:"Firefox"},{string:navigator.vendor,subString:"Camino",identity:"Camino"},{string:navigator.userAgent,subString:"Netscape",identity:"Netscape"},{string:navigator.userAgent,subString:"MSIE",identity:"IE",versionSearch:"MSIE"},{string:navigator.userAgent,subString:"Gecko",identity:"Mozilla",versionSearch:"rv"},{string:navigator.userAgent,subString:"Mozilla",identity:"Netscape",versionSearch:"Mozilla"}],dataOS:[{string:navigator.platform,subString:"Win",identity:"Windows"},{string:navigator.platform,subString:"Mac",identity:"Mac"},{string:navigator.userAgent,subString:"iPhone",identity:"iPhone/iPod"},{string:navigator.platform,subString:"Linux",identity:"Linux"}]};PubMatic.BrowserDetect.needInit&&PubMatic.BrowserDetect.init();function findAdPosition(u,y,o,x,l,h,p,w){var g,j,d,c,r,n,i,m=false;var a=this.Util,b=a.getTop,s=a.getLeft;p=p||window;w=w||1;try{if(p.location.host===p.parent.location.host){m=false;c=p.document.body.scrollTop;r=p.document.body.scrollLeft}else{return{visibility:-1,top:-1,left:-1}}}catch(t){return{visibility:-1,top:-1,left:-1}}c=c||0;r=r||0;j=p.innerWidth||p.document.documentElement.clientWidth||p.document.body.clientWidth;d=p.innerHeight||p.document.documentElement.clientHeight||p.document.body.clientHeight;if(((o+y)<=c)||((x+u)<=r)||(o>=(c+d))||(x>=(r+j))){return{visibility:0,top:l,left:h}}else{if((o>=c)&&(x>=r)&&((x+u)<=(r+j))&&((o+y)<=(c+d))){if(p.parent&&p.parent.location!==p.location){n=b(p.frameElement);i=s(p.frameElement);return findAdPosition.call(this,j,d,n,i,(l+n),(h+i),p.parent,(w+1))}else{return{visibility:1,top:l,left:h}}}else{var q={};if(p.parent&&p.parent.location!==p.location){n=b(p.frameElement);i=s(p.frameElement);q=findAdPosition.call(this,j,d,n,i,(l+n),(h+i),p.parent,(w+1));g=2*q.visibility;if(g<0||g>3){return{visibility:-1,top:q.top,left:q.left}}else{if(g!=2){return{visibility:0,top:q.top,left:q.left}}}}n=n||0;i=i||0;var f=q.top||(l+n);var v=q.left||(h+i);if(w>1){if(((l+kadheight)<=c)||((h+kadwidth)<=r)||(l>=(c+d))||(h>=(r+j))){return{visibility:0,top:f,left:v}}else{if((l>=c)&&(h>=r)&&((h+kadwidth)<=(r+j))&&((l+kadheight)<=(c+d))){return{visibility:1,top:f,left:v}}else{return{visibility:2,top:f,left:v}}}}else{return{visibility:2,top:f,left:v}}}}}PubMatic.logError=function(b){var g="";for(k in b){if(k!="message"&&k!="name"){var f=b[k];if(typeof f==="string"||typeof f==="number"){g+="["+k+":"+f+"]"}else{console.log("typeof val = "+typeof f)}}}var c="pubId="+window.pubId+"&cb="+String(Math.round((Math.random()*1000)*(Math.random()*1000)))+"&msg="+encodeURIComponent(b.message)+"&name="+encodeURIComponent(b.name)+"&desc="+encodeURIComponent(g);var a=document.createElement("script");a.src="http://haso.pubmatic.com/jsError/logger.js?"+c;a.type="text/javascript";var d=document.body||document.getElementsByTagName("body")[0]||false;d&&d.appendChild(a)};try{(function(){var b=[25279,25277];if(window.siteId&&PubMatic.pmAdInfo.findValInArray(siteId,b)){kadtype=0;kadpageurl=encodeURIComponent("http://www.imdb.com")}var a={pubId:window.pubId,siteId:window.siteId,adId:window.kadId,kadheight:window.kadheight,kadwidth:window.kadwidth,kadtype:(window.kadtype||0),kadNetwork:(window.kadNetwork||undefined)};window.kadNetwork&&(window.kadNetwork=null);PubMatic.showAd(a)})()}catch(e){try{PubMatic.logError(e)}catch(e){}};