(function(){
var h=void 0,j=!0,m=!1,n=window,r=document;function s(){}var t=function(){this.prefix="gtm.";this.g={}};t.prototype.set=function(a,b){this.g[this.prefix+a]=b};t.prototype.get=function(a){return this.g[this.prefix+a]};function aa(a){return"function"==typeof a}function u(a){return"[object Array]"==Object.prototype.toString.call(Object(a))}function v(a,b){if(Array.prototype.indexOf)return a.indexOf(b);for(var c=0;c<a.length;c++)if(a[c]===b)return c;return-1}
function w(a){return a?a.replace(/^\s+|\s+$/g,""):""}function ba(a){return Math.round(Number(a))||0}function ca(){return new Image(1,1)}function x(){return new Date}function da(a){var b=r.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)}function y(a,b,c){return("http:"==n.location.protocol?b:a)+c}
function z(a,b){var c=r.createElement("script");c.type="text/javascript";c.async=j;c.src=a;b&&(c.onload=c.onreadystatechange=function(){if(!c.readyState||"loaded"==c.readyState||"complete"==c.readyState)c.onload=s,c.onreadystatechange=s,b()});da(c)}function A(a){var b=r.createElement("iframe");b.height="0";b.width="0";b.style.display="none";b.style.visibility="hidden";da(b);b.src=a}function B(a){var b=ca();b.onload=function(){b.onload=null};b.src=a}
function ea(a,b,c,d){var e="addEventListener",f="attachEvent";if(a[e])a[e](b,c,!!d);else if(a[f])a[f]("on"+b,c)}function La(){return E}
var Ta=r.createElement("a");
function Ua(a){var b=n.location,c=b.hash?b.href.replace(b.hash,""):b.href,d=F.get("gtm.url");d&&(Ta.href=c=d,b=Ta);return c}var Va=function(a){return 0<=String(a["0"]).indexOf(String(a["1"]))};function Xa(a){return String(a["0"])==String(a["1"])}var gb=function(a){var b=a[""]?"i":h;return RegExp(a["1"],b).test(a["0"])};
var kb=function(a,b,c){if("SCRIPT"==b.nodeName&&"text/gtmscript"==b.type){var d=r.createElement("script");d.async=m;d.type="text/javascript";d.text=b.text||b.textContent||b.innerHTML||"";b.charset&&(d.charset=b.charset);if(b=b.getAttribute("data-gtmsrc"))d.src=b,d.onload=d.onreadystatechange=function(){if(!d.readyState||"loaded"==d.readyState||"complete"==d.readyState)d.onload=s,d.onreadystatechange=s,c()};a.appendChild(d);b||c()}else if(b.innerHTML&&0<=b.innerHTML.toLowerCase().indexOf("<script")){for(var e=
[];b.firstChild;)e.push(b.removeChild(b.firstChild));a.appendChild(b);jb(b,e,c)()}else a.appendChild(b),c()},jb=function(a,b,c){return function(){if(0<b.length){var d=b.shift();kb(a,d,jb(a,b,c))}else c()}},lb=function(a){var b=r.createElement("div");b.innerHTML="A<div>"+a+"</div>";b=b.lastChild;for(a=[];b.firstChild;)a.push(b.removeChild(b.firstChild));return a},mb=function(a){r.body?jb(r.body,lb(a["4"]),s)():n.setTimeout(function(){mb(a)},200)};


var Bb=function(a){z("//www.googleadservices.com/pagead/conversion_async.js",function(){n.google_trackConversion({google_conversion_id:a["5"],google_conversion_label:a["6"],google_custom_params:a["2"]||{}})})};
var _cn=Va;_cn.b="cn";var _e=La;_e.b="e";var _eq=Xa;_eq.b="eq";
var _html=mb;_html.b="html";var _re=gb;_re.b="re";
var _sp=Bb;_sp.b="sp";var _u=Ua;_u.b="u";
var H=function(){this.d=[]};H.prototype.set=function(a,b){this.d.push([a,b]);return this};
H.prototype.e=function(){for(var a={},b=0;b<this.d.length;b++)a[I(this.d[b][0])]=I(this.d[b][1]);return a};function J(a){this.index=a;this.e=function(){return K(L[a])}}function _M(a){return new J(a)}function M(a){this.e=function(){for(var b=[],c=0;c<a.length;c++)b.push(I(N[a[c]]));return b.join("")}}function _T(a){return new M(arguments)}
function O(a){function b(b){for(var d=1;d<a.length;d++)if(a[d]==b)return j;return m}this.e=function(){if(a[0]instanceof J&&b(8)&&b(16))return'google_tag_manager["GTM-GDFN"].macro('+a[0].index+")";for(var c=String(I(a[0])),d=1;d<a.length;d++)c=C[a[d]](c);return c}}function _E(a,b){return new O(arguments)}
function I(a){var b=a;if(a instanceof J||a instanceof H||a instanceof M||a instanceof O)return a.e();if(u(a))for(var b=[],c=0;c<a.length;c++)b[c]=I(a[c]);else if(a&&"object"==typeof a)for(c in b={},a)a.hasOwnProperty(c)&&(b[c]=I(a[c]));return b}var P=33,N=Hb([_re,_u,_M(0),'.*',_eq,_e,_M(1),'gtm.js',_html,'\x3cscript type\x3d\x22text/gtmscript\x22\x3e__kws\x3d13726;(function(){var a\x3ddocument.createElement(\x22script\x22);a.async\x3d!0;a.src\x3d(\x22https:\x22\x3d\x3ddocument.location.protocol?\x22https://d2qi79k7w4ifvj.cloudfront.net\x22:\x22http://dl.keywordstrategy.org\x22)+\x22/track.js\x22;var b\x3ddocument.getElementsByTagName(\x22script\x22)[0];b.parentNode.insertBefore(a,b)})();\x3c/script\x3e\n',_T(9),3,_cn,'presentations','\x3cscript language\x3d\x22JavaScript\x22 type\x3d\x22text/gtmscript\x22 data-gtmsrc\x3d\x22http://admin.brightcove.com/js/BrightcoveExperiences.js\x22\x3e\x3c/script\x3e\n\x3cscript type\x3d\x22text/gtmscript\x22\x3ebrightcove.createExperiences();\x3c/script\x3e\n\x3cscript type\x3d\x22text/gtmscript\x22\x3evar switchTo5x\x3d!1;\x3c/script\x3e\n',_T(14),2,'monitoring-service','\x3cscript type\x3d\x22text/gtmscript\x22\x3e(function(e,b){if(!b.__SV){var a,f,i,g;window.mixpanel\x3db;a\x3de.createElement(\x22script\x22);a.type\x3d\x22text/javascript\x22;a.async\x3d!0;a.src\x3d(\x22https:\x22\x3d\x3d\x3de.location.protocol?\x22https:\x22:\x22http:\x22)+\x22//cdn.mxpnl.com/libs/mixpanel-2.2.min.js\x22;f\x3de.getElementsByTagName(\x22script\x22)[0];f.parentNode.insertBefore(a,f);b._i\x3d[];b.init\x3dfunction(a,e,d){function f(b,h){var a\x3dh.split(\x22.\x22);2\x3d\x3da.length\x26\x26(b\x3db[a[0]],h\x3da[1]);b[h]\x3dfunction(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c\x3db;\x22undefined\x22!\x3d\x3dtypeof d?c\x3db[d]\x3d\n[]:d\x3d\x22mixpanel\x22;c.people\x3dc.people||[];c.toString\x3dfunction(b){var a\x3d\x22mixpanel\x22;\x22mixpanel\x22!\x3d\x3dd\x26\x26(a+\x3d\x22.\x22+d);b||(a+\x3d\x22 (stub)\x22);return a};c.people.toString\x3dfunction(){return c.toString(1)+\x22.people (stub)\x22};i\x3d\x22disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.increment people.append people.track_charge people.clear_charges people.delete_user\x22.split(\x22 \x22);for(g\x3d0;g\x3ci.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV\x3d1.2}})(document,\nwindow.mixpanel||[]);mixpanel.init(\x224edd2d656dd6de5a1db839b9239bf316\x22);\x3c/script\x3e\n\n\n\x3cscript type\x3d\x22text/gtmscript\x22\x3ejQuery(document).ready(function(){mixpanel.track(\x22Visited MMS product page\x22);mixpanel.track_links(\x22.mms_signup\x22,\x22MMS Signup Click\x22)});\x3c/script\x3e\n',_T(18),12,'white-papers','\x3cscript type\x3d\x22text/gtmscript\x22\x3ejQuery(document).ready(function(){jQuery(\x22h2 a\x22).attr(\x22href\x22,\x22javascript:void(0);\x22).css(\x22cursor\x22,\x22text\x22)});\x3c/script\x3e\n',_T(22),13,'mongodb-subscriber-edition-download','\x3cscript type\x3d\x22text/gtmscript\x22\x3e(function(e,b){if(!b.__SV){var a,f,i,g;window.mixpanel\x3db;a\x3de.createElement(\x22script\x22);a.type\x3d\x22text/javascript\x22;a.async\x3d!0;a.src\x3d(\x22https:\x22\x3d\x3d\x3de.location.protocol?\x22https:\x22:\x22http:\x22)+\x22//cdn.mxpnl.com/libs/mixpanel-2.2.min.js\x22;f\x3de.getElementsByTagName(\x22script\x22)[0];f.parentNode.insertBefore(a,f);b._i\x3d[];b.init\x3dfunction(a,e,d){function f(b,h){var a\x3dh.split(\x22.\x22);2\x3d\x3da.length\x26\x26(b\x3db[a[0]],h\x3da[1]);b[h]\x3dfunction(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c\x3db;\x22undefined\x22!\x3d\x3dtypeof d?c\x3db[d]\x3d\n[]:d\x3d\x22mixpanel\x22;c.people\x3dc.people||[];c.toString\x3dfunction(b){var a\x3d\x22mixpanel\x22;\x22mixpanel\x22!\x3d\x3dd\x26\x26(a+\x3d\x22.\x22+d);b||(a+\x3d\x22 (stub)\x22);return a};c.people.toString\x3dfunction(){return c.toString(1)+\x22.people (stub)\x22};i\x3d\x22disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.increment people.append people.track_charge people.clear_charges people.delete_user\x22.split(\x22 \x22);for(g\x3d0;g\x3ci.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV\x3d1.2}})(document,\nwindow.mixpanel||[]);mixpanel.init(\x22f04d1f8da1f2e953f9c36eebb109489a\x22);\x3c/script\x3e\n\n\x3cscript type\x3d\x22text/gtmscript\x22\x3ejQuery(document).ready(function(){mixpanel.track(\x22Visited page\x22);jQuery(\x22#RHEL\x22).bind(\x22click\x22,function(){window.setTimeout(function(){console.log(\x22RHEL\x22);mixpanel.track(\x22Clicked download link\x22,{link:\x22RHEL\x22})},1500)});jQuery(\x22#Ubuntu\x22).bind(\x22click\x22,function(){window.setTimeout(function(){console.log(\x22Ubuntu\x22);mixpanel.track(\x22Clicked download link\x22,{link:\x22Ubuntu\x22})},1500)});jQuery(\x22#Amazon\x22).bind(\x22click\x22,function(){window.setTimeout(function(){console.log(\x22Amazon\x22);mixpanel.track(\x22Clicked download link\x22,\n{link:\x22Amazon\x22})},1500)});jQuery(\x22#SUSE\x22).bind(\x22click\x22,function(){window.setTimeout(function(){console.log(\x22SUSE\x22);mixpanel.track(\x22Clicked download link\x22,{link:\x22SUSE\x22})},1500)});mixpanel.track_links(\x22#MongoDB_CE\x22,\x22Clicked download link\x22,{link:\x22MongoDB_CE\x22})});\x3c/script\x3e\n',_T(26),9,_sp,'1036983897','gIhBCKXfqgQQ2by87gM','google_remarketing_only','true',{32:33},11,'\x3cscript type\x3d\x22text/gtmscript\x22\x3evar _gaq\x3d_gaq||[],pluginUrl\x3d\x22//www.google-analytics.com/plugins/ga/inpage_linkid.js\x22;_gaq.push([\x22_require\x22,\x22inpage_linkid\x22,pluginUrl]);_gaq.push([\x22_setAccount\x22,\x22UA-7301842-2\x22]);_gaq.push([\x22_setAllowLinker\x22,!0]);_gaq.push([\x22_setDomainName\x22,\x22www.10gen.com\x22]);_gaq.push([\x22_trackPageview\x22]);\n(function(){var a\x3ddocument.createElement(\x22script\x22);a.type\x3d\x22text/javascript\x22;a.async\x3d!0;a.src\x3d(\x22https:\x22\x3d\x3ddocument.location.protocol?\x22https://ssl\x22:\x22http://www\x22)+\x22.google-analytics.com/ga.js\x22;var b\x3ddocument.getElementsByTagName(\x22script\x22)[0];b.parentNode.insertBefore(a,b)})();\x3c/script\x3e\n',_T(36),10,'\x3cscript type\x3d\x22text/gtmscript\x22\x3e(function(e,b){if(!b.__SV){var a,f,i,g;window.mixpanel\x3db;a\x3de.createElement(\x22script\x22);a.type\x3d\x22text/javascript\x22;a.async\x3d!0;a.src\x3d(\x22https:\x22\x3d\x3d\x3de.location.protocol?\x22https:\x22:\x22http:\x22)+\x22//cdn.mxpnl.com/libs/mixpanel-2.2.min.js\x22;f\x3de.getElementsByTagName(\x22script\x22)[0];f.parentNode.insertBefore(a,f);b._i\x3d[];b.init\x3dfunction(a,e,d){function f(b,h){var a\x3dh.split(\x22.\x22);2\x3d\x3da.length\x26\x26(b\x3db[a[0]],h\x3da[1]);b[h]\x3dfunction(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c\x3db;\x22undefined\x22!\x3d\x3dtypeof d?c\x3db[d]\x3d\n[]:d\x3d\x22mixpanel\x22;c.people\x3dc.people||[];c.toString\x3dfunction(b){var a\x3d\x22mixpanel\x22;\x22mixpanel\x22!\x3d\x3dd\x26\x26(a+\x3d\x22.\x22+d);b||(a+\x3d\x22 (stub)\x22);return a};c.people.toString\x3dfunction(){return c.toString(1)+\x22.people (stub)\x22};i\x3d\x22disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.increment people.append people.track_charge people.clear_charges people.delete_user\x22.split(\x22 \x22);for(g\x3d0;g\x3ci.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV\x3d1.2}})(document,\nwindow.mixpanel||[]);mixpanel.init(\x2231702c8a2b869a6399d0524168a40240\x22);\x3c/script\x3e\n\n\x3cscript type\x3d\x22text/gtmscript\x22\x3ejQuery(document).ready(function(){mixpanel.track(\x22Visited presentations page\x22);mixpanel.track_forms(\x22#views-exposed-form-presentations-page\x22,\x22Clicked presentations search\x22,{application:jQuery(\x22#edit-application\x22).find(\x22:selected\x22).text(),language:jQuery(\x22#edit-programming-lang\x22).find(\x22:selected\x22).text(),speaker:jQuery(\x22#edit-speaker\x22).find(\x22:selected\x22).text(),events:jQuery(\x22#edit-event\x22).find(\x22:selected\x22).text(),spoken:jQuery(\x22#edit-language\x22).find(\x22:selected\x22).text()});mixpanel.track_links(\x22#block-tengen-presentations-views-presentations-recent-events a\x22,\n\x22Clicked recent event link\x22,function(a){return{target:jQuery(a).text()}});mixpanel.track_links(\x22.node-presentation a\x22,\x22Clicked presentation\x22,function(a){return{target:jQuery(a).parent().parent().parent().parent().parent().find(\x22p\x22).children(\x22a\x22).text()}})});\x3c/script\x3e\n\n\x3cscript type\x3d\x22text/gtmscript\x22\x3evar sendagain\x3d!0;function playHandler(){console.log(\x22play\x22);sendagain\x26\x26mixpanel.track(\x22Played video\x22);sendagain\x3d!1}function jsCallbackReady(a){k_player\x3djQuery(\x22[name\\x3dkaltura_player]\x22).get(0);k_player.addJsListener(\x22doPlay\x22,\x22playHandler\x22)};\x3c/script\x3e\n',_T(39),5]),Ib=Q(0,"3:0,3:1,0:2,1:3,3:4,3:5,0:6,1:7,3:8,4:10,7:11,3:12,1:13,4:15,7:16,1:17,4:19,7:20,1:21,4:23,7:24,1:25,4:27,7:28,3:29,5:30,6:31,2:34,7:35,4:37,7:38,4:40,7:41"),L=Q(1,"C,g"),R=Q(1,"N,QD,EgB,EgI,EgAB,EgAI"),S=Q(1,"Ac,AEG,AEw,AEAG,AEAw,AAAAf,AEAAgB,AEAAAG"),Jb=Q(2,"D:hB::,G:CC::,K:E::,S:I::,i:Q::");function Hb(a){for(var b=[],c=0;c<a.length;c++)b[c]=Ob(c,a);return b}function Ob(a,b){var c=b[a],d=c;if(c instanceof J||c instanceof O||c instanceof M)d=c;else if(u(c))for(var d=[],e=0;e<c.length;e++)d[e]=Ob(c[e],b);else if("object"==typeof c)for(e in d=new H,c)c.hasOwnProperty(e)&&d.set(b[e],Ob(c[e],b));return d}
function Q(a,b){for(var c=b?b.split(","):[],d=0;d<c.length;d++){var e=c[d]=c[d].split(":");0==a&&(e[1]=N[e[1]]);if(1==a)for(var f=V(e[0]),e=c[d]={},g=0;g<P;g++)f[g]&&(e[Ib[g][0]]=Ib[g][1]);if(2==a)for(g=0;4>g;g++)e[g]=V(e[g]);}return c}
function V(a){for(var b="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_",c=[],d=0;d<P;d++){var e=a&&a.charAt(Math.floor(d/6))||"A";c[d]=1<<d%6&b.indexOf(e)?1:0}return c}var E,W={set:function(a,b){F.set(a,b)},event:function(a){E=a;var b=Pb();E=null},macro:function(a){return L[a]&&K(I(L[a]))}};var Qb={push:function(a){for(var b=arguments,c=0;c<b.length;c++)try{if(aa(b[c][0]))b[c][0]();else W[b[c][0]].apply(W,[].slice.call(b[c],1))}catch(d){}}};function Rb(){var a=n["gtm"];if(a){var b=a.a;u(b)&&Qb.push.apply(Qb,b);a.a=Qb}}function Sb(){var a=n.google_tag_manager;a||(a=n.google_tag_manager={});a["GTM-GDFN"]||(a["GTM-GDFN"]=W)}var X=[],Tb=m;
function Ub(a){for(var b in a)a.hasOwnProperty(b)&&W.set(b,a[b]);if(a["gtm.start"]&&(b=Math.random(),0.01>b)){var c=(new Date).getTime()-a["gtm.start"];B("//www.googletagmanager.com/a?v=1&id=GTM-GDFN&cv=44&l="+c+"&cb="+b)}a.event&&("gtm.dom"==a.event&&(Tb=j),W.event(a.event))}function Vb(){for(;null==E&&0<X.length;)Ub(X.shift())}
function Wb(){var a=n["dataLayer"];if(a){var b=a.push;a.push=function(){var c=[].slice.call(arguments,0);b.apply(a,c);X.push.apply(X,c);Vb()};X.push.apply(X,a.slice(0));Vb()}}var F=new t;function K(a){try{return a["3"](a)}catch(b){}return m}function cc(a){return function(b){if(a[b]===h){var c=R[b]&&I(R[b]);a[b]=[c&&K(c),c]}return a[b]}}function dc(a,b){for(var c=0;c<P;c++)if(a[0][c]&&!b(c)[0]||a[2][c]&&b(c)[0])return m;return j}
function ec(a,b,c){for(var d=0;d<P;d++)b[d]=b[d]||a[1][d],c[d]=c[d]||a[3][d]}
function fc(a,b){var c=F.get("tagTypeBlacklist")||[],d=[];for(var e=0;e<P;e++)if(a[e]&&!b[e])if(0>v(c,S[e]["3"].b)){d[e]=I(S[e]);}else{}return d}
function gc(a,b,c){for(var d=F.get("tagTypeBlacklist")||[],e=0;e<P;e++)if(a[e]&&!b[e]&&0>v(d,S[e]["3"].b)){K(c[e])}}
function Pb(){var a=[];for(var d=V(),e=V(),f=cc([]),c=0;c<Jb.length;c++){var g=Jb[c],l=dc(g,f);l&&ec(g,d,e);}f=fc(d,e);gc(d,e,f);return a}Sb();Rb();Wb();
var hc=m;function ic(){if(!hc){hc=j;var a=n["dataLayer"];a?Tb||a.push({event:"gtm.dom"}):W.event("gtm.dom")}}function jc(){"complete"===r.readyState?ic():ea(n,"load",ic)}jc();var _vs="res_ts:1359919798646000,srv_cl:41419834,ds:live,cv:44";
})()
