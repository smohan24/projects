if(typeof CE2=="undefined"){CE2={}}CE2.ignoredElements=[];CE2.clickCaptors=[];CE2.d=document;CE2.w=window;CE2.n=navigator;CE2.ignore=function(b){CE2.ignoredElements.push(b);if(CE2.tracker){CE2.tracker.ignoredElements.push(b)}};CE2.capture=function(b){CE2.clickCaptors.push(b);if(CE2.tracker){CE2.tracker.clickCaptors.push(b)}};CE2.findMatchingSnapshot=function(g){var e,h,f;for(h=0;f=CE2.snapshots[h++];){e=Math.floor(new Date().getTime()/1000);if(f.e&&f.e<=e){continue}if(CE2.matchURL(f.u,g,f.o)){return f}}};CE2.startTracking=function(d){CE2.testID=d.id;CE2.testVersion=d.v||1;var e=CE2.d.createElement("script");var f=CE2.w.location.protocol=="https:"?CE2.TRACKING_SCRIPT_SECURE:CE2.TRACKING_SCRIPT;if(CE2.ie){f=f.replace(/t(\.prerelease)?\.js/,"tu$1.js")}e.src=f+"?s="+d.id+"&t="+(new Date().getTime());e.type="text/javascript";CE2.d.body.appendChild(e)};CE2.unescape=function(d){try{return decodeURIComponent(d)}catch(c){return unescape(d)}};CE2.qs2obj=function(h){if(h==null||/^\s*$/.test(h)){return null}var i={},k=null,j=h.replace(/\+/g," ").split("&");for(var l=0,g=j.length;l<g;l++){k=j[l].split("=");if(!k[0]){continue}i[CE2.unescape(k[0])]=k[1]==null?null:CE2.unescape(k[1])}return i};CE2.b=(function(){var b=CE2.n.userAgent;if(/\bMSIE\b/.test(b)){CE2.ie=1;CE2.ieVersion=parseInt(/MSIE (\d+)\.\d+/.exec(b)[1],10);CE2.ieQuirksMode=(CE2.d.compatMode=="BackCompat")}})();CE2.each=function(j,l,h){if(!j){return}var k;if(typeof j.length=="number"&&typeof j.concat=="function"){for(var m=0,i=j.length;m<i;m++){k=j[m];if(l.call(h,k,m)===false){break}}}else{var n;for(n in j){k=j[n];if(k!==Object.prototype[n]){if(l.call(h,k,n)===false){break}}}}};CE2.listen=CE2.addListener=function(f,e,d){if(f.addEventListener){f.addEventListener(e,d,true)}else{f.attachEvent("on"+e,d)}};CE2.removeListener=function(f,e,d){if(f.removeEventListener){f.removeEventListener(e,d,true)}else{f.detachEvent("on"+e,d)}};CE2.userData={};CE2.set=function(d,c){d=parseInt(d,10);if(1<=d&&d<=5){CE2.userData[d]=String(c)}};CE2.click=function(){if(CE2.tracker){return CE2.tracker.click.apply(CE2.tracker,arguments)}};CE2.getBox=function(){};if(typeof CE2=="undefined"){CE2={}}CE2.READY_STATE_PATTERN=/complete|loaded/;CE2.autoStart=(typeof CE_MANUAL_START=="undefined"||!CE_MANUAL_START);CE2.domReady=(document.readyState&&CE2.READY_STATE_PATTERN.test(document.readyState));CE2.domReadyListeners=[];CE2.onDOMReady=function(b){if(CE2.domReady){return setTimeout(b,1)}CE2.domReadyListeners.push(b)};CE2.domReadySetup=function(){var c=function(g){var b,h;var a=CE2.domReadyListeners;while(a.length>0){a.pop().call()}CE2.domReady=true};if(CE2.domReady){c()}CE2.listen(window,"load",c);if(document.addEventListener){CE2.listen(document,"DOMContentLoaded",c)}if(document.readyState){var d=CE2.READY_STATE_PATTERN;(function(){if(d.test(document.readyState)){c()}else{setTimeout(arguments.callee,10)}})()}};if(CE2.autoStart){CE2.domReadySetup()}if(typeof CE2=="undefined"){CE2={}}CE2.matchURL=function(H,A,I){var G=false,F=/(home|default|index)($|\..*)/i,O,i,E,C,x,J,N,y,M,L,K,P,D,l,z,B;if(!(H&&A)){return false}I=I||"";if(/n/.test(I)){return H===A}if(/[re]/.test(I)){return new RegExp(H,"i").test(A)}O=new CE2.URI(A.toLowerCase());if(/h/.test(I)&&((H.protocol)!=O.protocol)){return false}i=O.domain;E=O.host;y=H.domain;M=H.host;if(/w/.test(I)&&E!=M){return false}if(i!=y||E.replace(/^www\./,"")!=M.replace(/^www\./,"")){return false}if(!H.path){L="/"}else{L=H.path}C=O.path;if(L!=C){if(/\//.test(I)){return false}K=L.split("/");x=C.split("/");for(z=0,B=Math.max(K.length,x.length);z<B;z++){if(!K[z]){K[z]=""}if(!x[z]){x[z]=""}if(z==B-1){K[z]=K[z].replace(F,"");x[z]=x[z].replace(F,"")}if(K[z]!=x[z]){return false}}}J=O.qs;l=/\?/.test(I);P=H.qs||"";if((l&&J&&!P)||(!J&&P)){return false}CE2.each(P,function(a,b){if(J[b]!==a){G=true;return false}});if(G){return false}if(l){CE2.each(J,function(a,b){if(a!=P[b]){return(G=true)}});if(G){return false}}D=H.hash||"";N=O.hash||"";l=/#/.test(I);if((l||D)&&D!=N){return false}return true};if(typeof CE2=="undefined"){CE2={}}CE2.getDomain=function(d){var c;if(c=/[^\.]+\.[^\.]{2,3}\.[^\.]{2}$/i.exec(d)){return c[0]}else{if(c=/[^\.]+\.[^\.]{2,}$/i.exec(d)){return c[0]}else{return d}}};if(typeof(CE2.URI)=="undefined"){CE2.URI=function(c){this.src=c;this.protocol=this.host=this.port=this.path=this.qs=this.hash=null;if(c){var d=typeof(c);if(d=="string"){this.initWithString(c)}else{if(d=="object"){this.initWithURI(c)}}}};CE2.URI.pattern=/^\s*([\S]+?:\/\/)?([^\s\/]+?@)?([^:\/\?\#]+)?(\:\d+)?(\/?[^#\?\s]*)?([\?][^#\s]*)?([#]\S+)?/i;CE2.URI.prototype={initWithString:function(k){var l,i,m,j,n,o;var p=CE2.URI.pattern.exec(k);if(!p[1]&&k.charAt(0)!="/"){this.path=CE2.unescape((p[3]||"")+(p[5]||""))}else{if(l=p[1]){this.protocol=l.substr(0,l.indexOf(":"))}if(this.host=p[3]||null){this.domain=CE2.getDomain(this.host)}if(i=p[4]){this.port=Number(i.substr(1))}if(m=p[5]){this.path=CE2.unescape(m)}else{if(this.host){this.path="/"}}}if(j=p[6]){this.qs=CE2.qs2obj(j.substr(1))}if(n=p[7]){this.hash=CE2.unescape(n.substr(1))}},initWithURI:function(b){CE2.each(b,function(d,a){this[a]=d},this)},isAbsolute:function(){return this.isURL()||(this.path&&this.path.charAt(0)=="/")},isURL:function(){return this.protocol&&this.host}}}CE2.TRACKING_SCRIPT="http://trk.cetrk.com/t.js";CE2.TRACKING_SCRIPT_SECURE="https://s3.amazonaws.com/trk.cetrk.com/t.js";CE2.TRACKING_DEST="http://trk.cetrk.com/";CE2.TRACKING_DEST_SECURE="https://s3.amazonaws.com/trk.cetrk.com/";CE2.uid=127034;CE2.snapshots=[{id:379755,u:{path:"/news/2240165220/apperian-offers-ipad-remote-control-features-to-eager-it-pros",domain:"techtarget.com",host:"searchconsumerization.techtarget.com",protocol:"http"},v:3,e:1382587200},{id:379777,u:{path:"/news/2240163869/new-york-times-article-on-data-center-power-consumption-draws-ire",domain:"techtarget.com",host:"searchdatacenter.techtarget.com",protocol:"http"},v:3,e:1382587200},{id:379753,u:{path:"/news/2240167494/microsoft-surface-tablet-price-the-least-of-it-pros-concerns",domain:"techtarget.com",host:"searchconsumerization.techtarget.com",protocol:"http"},v:3,e:1382587200},{id:379758,u:{path:"/tip/five-mdm-products-for-managing-mobile-devices-in-corporate-environments",domain:"techtarget.com",host:"searchconsumerization.techtarget.com",protocol:"http"},v:3,e:1382587200},{id:379763,u:{path:"/news/2240163739/vmware-horizon-mobile-for-android-inches-closer-to-reality",domain:"techtarget.com",host:"searchconsumerization.techtarget.com",protocol:"http"},v:3,e:1382587200},{id:288833,u:{path:"/news/2240148915/tips-to-prevent-sidestepping-of-remote-access-security-policies",domain:"techtarget.com",host:"searchcio.techtarget.com",protocol:"http"},v:2,e:1366948800},{id:316153,u:{path:"/tip/cloud-computing-benefits-may-trump-public-cloud-security-fears",domain:"techtarget.com",host:"searchcloudcomputing.techtarget.com",protocol:"http"},v:3,e:1371787200},{id:443328,u:{path:"/three-reasons-to-update-your-next-storage-rfp-netapp-for-searchstorage",domain:"techtarget.com",host:"searchstorage.techtarget.com",protocol:"http"},v:3,e:1365532508},{id:379760,u:{path:"/tip/does-microsoft-windows-rt-fit-in-the-enterprise",domain:"techtarget.com",host:"searchconsumerization.techtarget.com",protocol:"http"},v:3,e:1382587200},{id:456027,u:{path:"/use-a-scalable-san-to-keep-up-with-rapid-data-growth",domain:"techtarget.com",host:"searchstorage.techtarget.com",protocol:"http"},v:3,e:1367092296},{id:451839,u:{path:"/definition/logic-gate-and-or-xor-not-nand-nor-and-xnor",domain:"techtarget.com",host:"whatis.techtarget.com",protocol:"http"},v:3,e:1366579244},{id:427962,u:{path:"/preview/era-of-convergence-6m7-1018f6.html",domain:"postclickmarketing.com",host:"techtarget.postclickmarketing.com",protocol:"http"},v:3,e:1363643121},{id:375994,u:{path:"/category/microsoft-windows-server-2012",domain:"techtarget.com",host:"searchstorage.techtarget.com",protocol:"http"},v:3,e:1381982400},{id:328164,u:{path:"/resources/big-data-analytics",domain:"techtarget.com",host:"searchbusinessanalytics.techtarget.com",protocol:"http"},v:3,e:1374033600},{id:373362,u:{path:"/tips-for-test-driving-a-cloud-service",domain:"techtarget.com",host:"searchstorage.techtarget.com",protocol:"http"},v:3,e:1381550400},{id:463297,u:{path:"/when-to-consider-an-all-flash-array",domain:"techtarget.com",host:"searchstorage.techtarget.com",protocol:"http"},v:3,e:1367788120},{id:356714,u:{path:"/ciscounifieddatacenter",domain:"techtarget.com",host:"searchcloudcomputing.techtarget.com",protocol:"http"},v:3,e:1378958400},{id:356715,u:{path:"/ciscounifieddatacenter",domain:"techtarget.com",host:"searchvirtualdesktop.techtarget.com",protocol:"http"},v:3,e:1378958400},{id:453610,u:{path:"/oraclebusinesstransformationcentre",domain:"computerweekly.com",host:"www.computerweekly.com",protocol:"http"},v:3,e:1366742344},{id:451843,u:{path:"/definition/quality-control-qc",domain:"techtarget.com",host:"whatis.techtarget.com",protocol:"http"},v:3,e:1366579475},{id:356711,u:{path:"/unified-management",domain:"ciscounifieddatacenter.com",host:"www.ciscounifieddatacenter.com",protocol:"http"},v:3,e:1378958400},{id:451841,u:{path:"/definition/schrodingers-cat",domain:"techtarget.com",host:"whatis.techtarget.com",protocol:"http"},v:3,e:1366579348},{id:451842,u:{path:"/definition/network-topology",domain:"techtarget.com",host:"whatis.techtarget.com",protocol:"http"},v:3,e:1366579411},{id:356710,u:{path:"/unified-computing",domain:"ciscounifieddatacenter.com",host:"www.ciscounifieddatacenter.com",protocol:"http"},v:3,e:1378958400},{id:453611,u:{path:"/oraclebusinessanalytics",domain:"computerweekly.com",host:"www.computerweekly.com",protocol:"http"},v:3,e:1366742375},{id:356708,u:{path:"/unified-fabric",domain:"ciscounifieddatacenter.com",host:"www.ciscounifieddatacenter.com",protocol:"http"},v:3,e:1378958400},{id:453613,u:{path:"/oraclecloudcomputing",domain:"computerweekly.com",host:"www.computerweekly.com",protocol:"http"},v:3,e:1366742423},{id:451844,u:{path:"/definition/server",domain:"techtarget.com",host:"whatis.techtarget.com",protocol:"http"},v:3,e:1366579518},{id:378931,u:{path:"/videos",domain:"convergedinfrastructure.com",host:"www.convergedinfrastructure.com",protocol:"http"},v:3,e:1382500800},{id:470482,u:{path:"/italiano",domain:"hp-applications.com",host:"www.hp-applications.com",protocol:"http"},v:3,e:1368541760},{id:470481,u:{path:"/francais",domain:"hp-applications.com",host:"www.hp-applications.com",protocol:"http"},v:3,e:1368541735},{id:470477,u:{path:"/hp-enterprisesolutions.com",domain:"www.",host:"www.",protocol:"http"},v:3,e:1368541580},{id:356705,u:{path:"/",domain:"ciscounifieddatacenter.com",host:"www.ciscounifieddatacenter.com",protocol:"http"},v:3,e:1378958400},{id:470485,u:{path:"/espanol",domain:"hp-applications.com",host:"www.hp-applications.com",protocol:"http"},v:3,e:1368541783},{id:470480,u:{path:"/",domain:"hp-applications.com",host:"www.hp-applications.com",protocol:"http"},v:3,e:1368541690},{id:380446,o:"r",u:"^http://searchdatacenter\\.techtarget\\.com/magazineContent/Subscribe\\-to\\-Modern\\-Infrastructure\\-e\\-zine.*$",v:3,e:1382673600},{id:380498,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-CW\\-Buyers\\-Guide\\-IT\\-Tools.*$",v:3,e:1382673600},{id:380467,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-CW\\-Buyers\\-Guide\\-to\\-Mobile\\-Technology.*$",v:3,e:1382673600},{id:380448,o:"r",u:"^http://searchsoftwarequality\\.techtarget\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380501,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-CW500\\-Share\\-IT\\-services\\-to\\-beat\\-the\\-downturn.*$",v:3,e:1382673600},{id:380482,o:"r",u:"^http://searchcompliance\\.techtarget\\.com/magazineContent/Download\\-Information\\-Governance\\-Research\\-Report.*$",v:3,e:1382673600},{id:380469,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380423,o:"r",u:"^http://searchbusinessanalytics\\.techtarget\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380453,o:"r",u:"^http://searchcio\\.techtarget\\.com/magazineContent/Ezine\\-Download\\-Agile\\-Project\\-Management.*$",v:3,e:1382673600},{id:380451,o:"r",u:"^http://searchsoa\\.techtarget\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380497,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-Cloud\\-computing\\-look\\-before\\-you\\-leap.*$",v:3,e:1382673600},{id:380502,o:"r",u:"^http://searchoracle\\.techtarget\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380499,o:"r",u:"^http://searchmanufacturingerp\\.techtarget\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380492,o:"r",u:"^http://searchcrm\\.techtarget\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380474,o:"r",u:"^http://searchfinancialapplications\\.techtarget\\.com/magazineContent/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380428,o:"r",u:"^http://searchservervirtualization\\.techtarget\\.com/magazineContent/Subscribe\\-to\\-Modern\\-Infrastructure\\-e\\-zine.*$",v:3,e:1382673600},{id:380439,o:"r",u:"^http://searchcloudcomputing\\.techtarget\\.com/magazineContent/Subscribe\\-to\\-Modern\\-Infrastructure\\-e\\-zine.*$",v:3,e:1382673600},{id:380445,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-CW\\-Buyers\\-Guide\\-Business\\-Intelligence.*$",v:3,e:1382673600},{id:380477,o:"r",u:"^http://searchwindowsserver\\.techtarget\\.com/magazineContent/Subscribe\\-to\\-Modern\\-Infrastructure.*$",v:3,e:1382673600},{id:380414,o:"r",u:"^http://searchcio\\.techtarget\\.com/promo/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380495,o:"r",u:"^http://searchstorage\\.techtarget\\.co\\.uk/promo/Download\\-Storage\\-Magazine\\-Online.*$",v:3,e:1382673600},{id:380480,o:"r",u:"^http://searchdisasterrecovery\\.techtarget\\.com/promo/Download\\-Storage\\-Magazine\\-Online.*$",v:3,e:1382673600},{id:380459,o:"r",u:"^http://searchdatabackup\\.techtarget\\.com/promo/Download\\-Storage\\-Magazine\\-Online.*$",v:3,e:1382673600},{id:380437,o:"r",u:"^http://searchstorage\\.techtarget\\.com/promo/Download\\-Storage\\-Magazine\\-Online.*$",v:3,e:1382673600},{id:380422,o:"r",u:"^http://searchsolidstatestorage\\.techtarget\\.com/promo/Download\\-Storage\\-Magazine\\-Online.*$",v:3,e:1382673600},{id:380419,o:"r",u:"^http://searchvirtualstorage\\.techtarget\\.com/promo/Download\\-Storage\\-Magazine\\-Online.*$",v:3,e:1382673600},{id:380447,o:"r",u:"^http://searchhealthit\\.techtarget\\.com/magazineContent/Download\\-Storage\\-in\\-Health\\-Care\\-E\\-book.*$",v:3,e:1382673600},{id:380426,o:"r",u:"^http://searchnetworking\\.techtarget\\.com/magazineContent/Download\\-Network\\-Evolution\\-E\\-Zine.*$",v:3,e:1382673600},{id:380462,o:"r",u:"^http://www\\.microscope\\.co\\.uk/magazineContent/Download\\-MicroScope\\-digital\\-magazine.*$",v:3,e:1382673600},{id:380491,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-IT\\-in\\-Europe\\-October.*$",v:3,e:1382673600},{id:380436,o:"r",u:"^http://searchsecurity\\.techtarget\\.com/Download\\-Information\\-Security\\-Magazine.*$",v:3,e:1382673600},{id:379856,o:"r",u:"^http://searchdatacenter\\.techtarget\\.com/magazineContent/Subscribe\\-to\\-Modern\\-Infrastructure\\-e\\-zine.*$",v:3,e:1382587200},{id:380418,o:"r",u:"^http://searchcio\\.techtarget\\.com/promo/Enterprise\\-CIO\\-Decisions\\-Ezine\\-Promo.*$",v:3,e:1382673600},{id:380427,o:"r",u:"^http://searchsoftwarequality\\.techtarget\\.com/magazineContent/Download\\-Cloud\\-Development\\-Digest.*$",v:3,e:1382673600},{id:380442,o:"r",u:"^http://searchsoa\\.techtarget\\.com/magazineContent/Download\\-Business\\-Agility\\-Insights.*$",v:3,e:1382673600},{id:380473,o:"r",u:"^http://www\\.theserverside\\.com/magazineContent/Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380494,o:"r",u:"^http://searchsqlserver\\.techtarget\\.com/magazineContent/Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:380420,o:"r",u:"^http://searchbusinessanalytics\\.techtarget\\.com/magazineContent/BI\\-Trends\\-EZine\\-BI\\-data\\-warehousing\\-and\\-agile\\-methodologies.*$",v:3,e:1382673600},{id:380470,o:"r",u:"^http://searchsoftwarequality\\.techtarget\\.com/magazineContent/ALM\\-and\\-Agile\\-Strategies\\-Ezine.*$",v:3,e:1382673600},{id:380457,o:"r",u:"^http://searchsap\\.techtarget\\.com/promo/Download\\-Technology\\-Priorities\\-for\\-2012.*$",v:3,e:1382673600},{id:318076,o:"r",u:"^http://www\\.bitpipe\\.com/data/document\\.do\\?.*$",v:2,e:1372219200},{id:380456,o:"r",u:"^http://www\\.computerweekly\\.com/magazineContent/Download\\-CW\\-Buyers\\-Guide\\-to\\-Private\\-Cloud.*$",v:3,e:1382673600}];CE2.dontTrack=function(){if(CE2.ie&&typeof CE2.w.external!="undefined"){try{if(CE2.w.external.InPrivateFilteringEnabled()==true){return true}}catch(c){}}var d=CE2.d.doNotTrack||CE2.n.doNotTrack||CE2.n.msDoNotTrack;return(d=="1"||d=="yes")};CE2.userMain=function(){if(CE2.dontTrack()){return}CE2.testID=CE2.testVersion=null;var b=function(){try{var a=CE2.findMatchingSnapshot(typeof CE_SNAPSHOT_NAME=="string"&&CE_SNAPSHOT_NAME?CE_SNAPSHOT_NAME:CE2.w.location.href);if(a){if(a.id!=CE2.testID){CE2.startTracking(a);if(typeof CE2.badge!="undefined"){CE2.badge()}}}else{CE2.testID=CE2.testVersion=null;if(CE2.tracker){CE2.tracker.cleanup();CE2.tracker=null}}}catch(d){}};b();if(CE2.autoStart){CE2.monitorInterval=setInterval(b,1000)}};if(CE2.autoStart){CE2.onDOMReady(CE2.userMain)}if(typeof CE_READY=="function"){CE2.onDOMReady(CE_READY)}else{if(typeof CE_READY=="object"){CE2.onDOMReady(function(){CE2.each(CE_READY,function(b){if(typeof b=="function"){b()}})})}};