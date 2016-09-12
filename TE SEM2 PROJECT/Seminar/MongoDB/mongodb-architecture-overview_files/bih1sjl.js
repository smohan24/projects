/*{"version":"10353839","k":"0.12.0","created":"2012-04-01T21:40:44Z","mac":"1:b4c091710d1f524e22cd227a098f5a000a250e3dae1fee08566896f1b960fb9e"}*/
;(function(window,document,undefined){
var i=true,o=null,q=false;function r(a){return function(c){this[a]=c}}function s(a){return function(){return this[a]}}var t;function u(a,c){var b=arguments.length>2?Array.prototype.slice.call(arguments,2):[];return function(){b.push.apply(b,arguments);return c.apply(a,b)}}function v(a,c){this.q=a;this.j=c}t=v.prototype;
t.createElement=function(a,c,b){a=this.q.createElement(a);if(c)for(var d in c)if(c.hasOwnProperty(d))if(d=="style"){var e=a,g=c[d];if(this.j.getName()=="MSIE")e.style.cssText=g;else e.setAttribute("style",g)}else a.setAttribute(d,c[d]);b&&a.appendChild(this.q.createTextNode(b));return a};t.insertInto=function(a,c){var b=this.q.getElementsByTagName(a)[0];if(!b)b=document.documentElement;if(b&&b.lastChild){b.insertBefore(c,b.lastChild);return i}return q};
t.whenBodyExists=function(a){function c(){document.body?a():setTimeout(c,0)}c()};t.removeElement=function(a){if(a.parentNode){a.parentNode.removeChild(a);return i}return q};t.createCssLink=function(a){return this.createElement("link",{rel:"stylesheet",href:a})};t.appendClassName=function(a,c){for(var b=a.className.split(/\s+/),d=0,e=b.length;d<e;d++)if(b[d]==c)return;b.push(c);a.className=b.join(" ").replace(/^\s+/,"")};
t.removeClassName=function(a,c){for(var b=a.className.split(/\s+/),d=[],e=0,g=b.length;e<g;e++)b[e]!=c&&d.push(b[e]);a.className=d.join(" ").replace(/^\s+/,"").replace(/\s+$/,"")};t.hasClassName=function(a,c){for(var b=a.className.split(/\s+/),d=0,e=b.length;d<e;d++)if(b[d]==c)return i;return q};function w(a,c,b,d,e,g,k,h){this.R=a;this.Qa=c;this.za=b;this.ya=d;this.Ka=e;this.Ja=g;this.xa=k;this.Ua=h}t=w.prototype;t.getName=s("R");t.getVersion=s("Qa");t.getEngine=s("za");t.getEngineVersion=s("ya");
t.getPlatform=s("Ka");t.getPlatformVersion=s("Ja");t.getDocumentMode=s("xa");function x(a,c){this.j=a;this.v=c}var aa=new w("Unknown","Unknown","Unknown","Unknown","Unknown","Unknown",undefined,q);
x.prototype.parse=function(){var a;if(this.j.indexOf("MSIE")!=-1){a=y(this,this.j,/(MSIE [\d\w\.]+)/,1);if(a!=""){var c=a.split(" ");a=c[0];c=c[1];a=new w(a,c,a,c,z(this),A(this),B(this,this.v),C(this,c)>=6)}else a=new w("MSIE","Unknown","MSIE","Unknown",z(this),A(this),B(this,this.v),q)}else{if(this.j.indexOf("Opera")!=-1)a:{c=a="Unknown";var b=y(this,this.j,/(Presto\/[\d\w\.]+)/,1);if(b!=""){c=b.split("/");a=c[0];c=c[1]}else{if(this.j.indexOf("Gecko")!=-1)a="Gecko";b=y(this,this.j,/rv:([^\)]+)/,
1);if(b!="")c=b}if(this.j.indexOf("Version/")!=-1){b=y(this,this.j,/Version\/([\d\.]+)/,1);if(b!=""){a=new w("Opera",b,a,c,z(this),A(this),B(this,this.v),C(this,b)>=10);break a}}b=y(this,this.j,/Opera[\/ ]([\d\.]+)/,1);a=b!=""?new w("Opera",b,a,c,z(this),A(this),B(this,this.v),C(this,b)>=10):new w("Opera","Unknown",a,c,z(this),A(this),B(this,this.v),q)}else{if(this.j.indexOf("AppleWebKit")!=-1){a=z(this);c=A(this);b=y(this,this.j,/AppleWebKit\/([\d\.]+)/,1);if(b=="")b="Unknown";var d="Unknown";
if(this.j.indexOf("Chrome")!=-1||this.j.indexOf("CrMo")!=-1)d="Chrome";else if(this.j.indexOf("Safari")!=-1)d="Safari";else if(this.j.indexOf("AdobeAIR")!=-1)d="AdobeAIR";var e="Unknown";if(this.j.indexOf("Version/")!=-1)e=y(this,this.j,/Version\/([\d\.\w]+)/,1);else if(d=="Chrome")e=y(this,this.j,/(Chrome|CrMo)\/([\d\.]+)/,2);else if(d=="AdobeAIR")e=y(this,this.j,/AdobeAIR\/([\d\.]+)/,1);var g=q;if(d=="AdobeAIR"){g=y(this,e,/\d+\.(\d+)/,1);g=C(this,e)>2||C(this,e)==2&&parseInt(g,10)>=5}else{g=y(this,
b,/\d+\.(\d+)/,1);g=C(this,b)>=526||C(this,b)>=525&&parseInt(g,10)>=13}a=new w(d,e,"AppleWebKit",b,a,c,B(this,this.v),g)}else{if(this.j.indexOf("Gecko")!=-1){c=a="Unknown";d=q;if(this.j.indexOf("Firefox")!=-1){a="Firefox";b=y(this,this.j,/Firefox\/([\d\w\.]+)/,1);if(b!=""){d=y(this,b,/\d+\.(\d+)/,1);c=b;d=b!=""&&C(this,b)>=3&&parseInt(d,10)>=5}}else if(this.j.indexOf("Mozilla")!=-1)a="Mozilla";b=y(this,this.j,/rv:([^\)]+)/,1);if(b=="")b="Unknown";else if(!d){d=C(this,b);e=parseInt(y(this,b,/\d+\.(\d+)/,
1),10);g=parseInt(y(this,b,/\d+\.\d+\.(\d+)/,1),10);d=d>1||d==1&&e>9||d==1&&e==9&&g>=2||b.match(/1\.9\.1b[123]/)!=o||b.match(/1\.9\.1\.[\d\.]+/)!=o}a=new w(a,c,"Gecko",b,z(this),A(this),B(this,this.v),d)}else a=aa;a=a}a=a}a=a}return a};function z(a){var c=y(a,a.j,/(iPod|iPad|iPhone|Android)/,1);if(c!="")return c;a=y(a,a.j,/(Linux|Mac_PowerPC|Macintosh|Windows)/,1);if(a!=""){if(a=="Mac_PowerPC")a="Macintosh";return a}return"Unknown"}
function A(a){var c=y(a,a.j,/(OS X|Windows NT|Android) ([^;)]+)/,2);if(c)return c;if(c=y(a,a.j,/(iPhone )?OS ([\d_]+)/,2))return c;if(a=y(a,a.j,/Linux ([i\d]+)/,1))return a;return"Unknown"}function C(a,c){var b=y(a,c,/(\d+)/,1);if(b!="")return parseInt(b,10);return-1}function y(a,c,b,d){if((a=c.match(b))&&a[d])return a[d];return""}function B(a,c){if(c.documentMode)return c.documentMode}function ba(a,c,b,d){this.c=a;this.k=c;this.U=b;this.o=d||"wf";this.m=new D("-")}
function E(a){a.c.removeClassName(a.k,a.m.l(a.o,"loading"));a.c.hasClassName(a.k,a.m.l(a.o,"active"))||a.c.appendClassName(a.k,a.m.l(a.o,"inactive"));G(a,"inactive")}function G(a,c,b,d){a.U[c]&&a.U[c](b,d)}function H(a,c,b,d,e){this.c=a;this.B=c;this.D=b;this.t=d;this.J=e;this.X=0;this.ta=this.ga=q}
H.prototype.watch=function(a,c,b,d,e){for(var g=a.length,k=0;k<g;k++){var h=a[k];c[h]||(c[h]=["n4"]);this.X+=c[h].length}if(e)this.ga=e;for(k=0;k<g;k++){h=a[k];e=c[h];for(var f=b[h],m=0,n=e.length;m<n;m++){var p=e[m],j=this.B,l=h,F=p;j.c.appendClassName(j.k,j.m.l(j.o,l,F,"loading"));G(j,"fontloading",l,F);j=u(this,this.Aa);l=u(this,this.Ba);(new d(j,l,this.c,this.D,this.t,this.J,h,p,f)).start()}}};
H.prototype.Aa=function(a,c){var b=this.B;b.c.removeClassName(b.k,b.m.l(b.o,a,c,"loading"));b.c.removeClassName(b.k,b.m.l(b.o,a,c,"inactive"));b.c.appendClassName(b.k,b.m.l(b.o,a,c,"active"));G(b,"fontactive",a,c);this.ta=i;I(this)};H.prototype.Ba=function(a,c){var b=this.B;b.c.removeClassName(b.k,b.m.l(b.o,a,c,"loading"));b.c.hasClassName(b.k,b.m.l(b.o,a,c,"active"))||b.c.appendClassName(b.k,b.m.l(b.o,a,c,"inactive"));G(b,"fontinactive",a,c);I(this)};
function I(a){if(--a.X==0&&a.ga)if(a.ta){a=a.B;a.c.removeClassName(a.k,a.m.l(a.o,"loading"));a.c.removeClassName(a.k,a.m.l(a.o,"inactive"));a.c.appendClassName(a.k,a.m.l(a.o,"active"));G(a,"active")}else E(a.B)}
function J(a,c,b,d,e,g,k,h,f){this.va=a;this.Ea=c;this.c=b;this.D=d;this.t=e;this.J=g;this.Ia=new K;this.Da=new ca;this.aa=k;this.$=h;this.Ca=f||"BESbswy";this.ia=da(this,"arial,'URW Gothic L',sans-serif");this.ja=da(this,"Georgia,'Century Schoolbook L',serif");this.ea=this.ia;this.fa=this.ja;this.oa=L(this,"arial,'URW Gothic L',sans-serif");this.pa=L(this,"Georgia,'Century Schoolbook L',serif")}J.prototype.start=function(){this.Oa=this.J();this.V()};
J.prototype.V=function(){var a=this.D.O(this.oa),c=this.D.O(this.pa);if((this.ia!=a||this.ja!=c)&&this.ea==a&&this.fa==c)ea(this,this.va);else if(this.J()-this.Oa>=5E3)ea(this,this.Ea);else{this.ea=a;this.fa=c;fa(this)}};function fa(a){a.t(function(c,b){return function(){b.call(c)}}(a,a.V),25)}function ea(a,c){a.c.removeElement(a.oa);a.c.removeElement(a.pa);c(a.aa,a.$)}function da(a,c){var b=L(a,c,i),d=a.D.O(b);a.c.removeElement(b);return d}
function L(a,c,b){c=a.c.createElement("span",{style:ga(a,c,a.$,b)},a.Ca);a.c.insertInto("body",c);return c}function ga(a,c,b,d){b=a.Da.expand(b);return"position:absolute;top:-999px;left:-999px;font-size:300px;width:auto;height:auto;line-height:normal;margin:0;padding:0;font-variant:normal;font-family:"+(d?"":a.Ia.quote(a.aa)+",")+c+";"+b}function D(a){this.Ga=a||"-"}D.prototype.l=function(){for(var a=[],c=0;c<arguments.length;c++)a.push(arguments[c].replace(/[\W_]+/g,"").toLowerCase());return a.join(this.Ga)};
function K(){this.na="'"}K.prototype.quote=function(a){var c=[];a=a.split(/,\s*/);for(var b=0;b<a.length;b++){var d=a[b].replace(/['"]/g,"");d.indexOf(" ")==-1?c.push(d):c.push(this.na+d+this.na)}return c.join(",")};function ca(){this.la=ha;this.F=ia}var ha=["font-style","font-weight"],ia={"font-style":[["n","normal"],["i","italic"],["o","oblique"]],"font-weight":[["1","100"],["2","200"],["3","300"],["4","400"],["5","500"],["6","600"],["7","700"],["8","800"],["9","900"],["4","normal"],["7","bold"]]};
function ja(a,c,b){this.Fa=a;this.La=c;this.F=b}ja.prototype.expand=function(a,c){for(var b=0;b<this.F.length;b++)if(c==this.F[b][0]){a[this.Fa]=this.La+":"+this.F[b][1];break}};ca.prototype.expand=function(a){if(a.length!=2)return o;for(var c=[o,o],b=0,d=this.la.length;b<d;b++){var e=this.la[b];(new ja(b,e,this.F[e])).expand(c,a.substr(b,1))}return c[0]&&c[1]?c.join(";")+";":o};function M(a,c){this.q=a;this.j=c}M.prototype=v.prototype;
M.prototype.isHttps=function(){return this.q.location.protocol=="https:"};M.prototype.getHostName=function(){return this.q.location.hostname};M.prototype.loadScript=function(a,c){var b=this.q.getElementsByTagName("head")[0];if(b){var d=this.q.createElement("script");d.src=a;var e=q;d.onload=d.onreadystatechange=function(){if(!e&&(!this.readyState||this.readyState=="loaded"||this.readyState=="complete")){e=i;c&&c();d.onload=d.onreadystatechange=o;d.parentNode.tagName=="HEAD"&&b.removeChild(d)}};b.appendChild(d)}};
M.prototype.createStyle=function(a){var c=this.q.createElement("style");c.setAttribute("type","text/css");if(c.styleSheet)c.styleSheet.cssText=a;else c.appendChild(document.createTextNode(a));return c};function ka(a,c){this.Ma=a;this.Y=c}function la(a){for(var c=a.Ma.join(","),b=[],d=0;d<a.Y.length;d++){var e=a.Y[d];b.push(e.name+":"+e.value+";")}return c+"{"+b.join("")+"}"}function N(a,c,b,d){this.C=a;this.I=c;this.w=b;this.Ta=d;this.ba={};this.Z={}}
N.prototype.z=function(a){return a?(this.ba[a.getStylesheetFormatId()]||this.I).slice(0):this.I.slice(0)};N.prototype.getId=s("w");function ma(a,c,b){for(var d=[],e=a.C.split(",")[0].replace(/"|'/g,""),g=a.z(),k,h=[],f={},m=0;m<g.length;m++){k=g[m];if(k.length>0&&!f[k]){f[k]=i;h.push(k)}}b=b.ma?b.ma(e,h,d):h;c=c.getStylesheetFormatId();a.ba[c]=b;a.Z[c]=d}N.prototype.watch=function(a,c,b){var d=[],e={};na(this,c,d,e);a(d,e,b)};
function na(a,c,b,d){b.push(a.C);d[a.C]=a.z(c);a=a.Z[c.getStylesheetFormatId()]||[];for(c=0;c<a.length;c++){for(var e=a[c],g=e.C,k=q,h=0;h<b.length;h++)if(b[h]==g)k=i;if(!k){b.push(g);d[g]=e.z()}}}function oa(a,c){this.C=a;this.I=c}oa.prototype.z=s("I");function O(a,c,b){this.Na=a;this.P=c;this.qa=b}O.prototype.buildUrl=function(a,c){var b=this.Na&&a?"https:":"http:",d=typeof this.P=="function"?this.P(b):this.P;return b+"//"+d+(this.qa=="/"?"":this.qa)+c};
function pa(a,c){var b=new Image(1,1);b.src=c;b.onload=function(){b.onload=o}}function P(a,c,b){this.w=a;this.sa=c;this.da=b}P.prototype.getId=s("w");P.prototype.getStylesheetFormatId=s("sa");P.prototype.isUserAgent=function(a){return this.da?this.da(a.getName(),a.getVersion(),a.getEngine(),a.getEngineVersion(),a.getPlatform(),a.getPlatformVersion(),a.getDocumentMode()):q};P.prototype.buildCssUrl=function(a,c,b,d){b="/"+b+"-"+this.sa+".css";if(d)b+="?"+d;return c.buildUrl(a,b)};
function Q(){this.u=[]}Q.prototype.addBrowser=function(a){this.getBrowserById(a.getId())||this.u.push(a)};Q.prototype.getBrowserById=function(a){for(var c=0;c<this.u.length;c++){var b=this.u[c];if(a===b.getId())return b}return o};Q.prototype.findBrowser=function(a){for(var c=0;c<this.u.length;c++){var b=this.u[c];if(b.isUserAgent(a))return b}return o};Q.prototype.addBrowsersToBrowserSet=function(a){for(var c=0;c<this.u.length;c++)a.addBrowser(this.u[c])};
function qa(a){this.w=a;this.L=new Q;this.n=[];this.M=[];this.N=this.W=this.A=o}t=qa.prototype;t.getId=s("w");t.setSecurityToken=r("ra");t.setNestedUrl=r("ha");t.setFontFilterSet=r("N");t.setKitOptions=r("Q");t.addBrowser=function(a){this.L.addBrowser(a)};t.addFontFamily=function(a){this.n.push(a)};t.addCssRule=function(a){this.M.push(a)};t.supportsBrowser=function(a){return!!this.L.getBrowserById(a.getId())};t.addBrowsersToBrowserSet=function(a){this.L.addBrowsersToBrowserSet(a)};
t.init=function(a){for(var c=[],b=0;b<this.M.length;b++)c.push(la(this.M[b]));a.insertInto("head",a.createStyle(c.join("")))};
t.load=function(a,c,b,d){if(this.N)for(var e=ra(this.N,b.getStylesheetFormatId()),g=0;g<this.n.length;g++)ma(this.n[g],b,e);if(this.A&&this.W){this.A.wa(new sa(b.getStylesheetFormatId()));g=new ta(a,this.G,this.n);e=ua(this.W,b.getStylesheetFormatId(),g);for(g=0;g<e.length;g++)this.A.wa(e[g]);this.A.Sa(this.ra);g=this.A.buildUrl(a.isHttps(),this.ha)}else g=b.buildCssUrl(a.isHttps(),this.ha,this.w,this.ra);a.insertInto("head",a.createCssLink(g));c&&a.whenBodyExists(function(k,h,f,m){return function(){for(var n=
0;n<k.n.length;n++)k.n[n].watch(h,f,m&&n==k.n.length-1)}}(this,c,b,d))};t.collectFontFamilies=function(a,c,b){for(var d=0;d<this.n.length;d++)na(this.n[d],a,c,b)};t.performOptionalActions=function(a,c,b){this.Q&&b.whenBodyExists(function(d,e,g,k){return function(){var h=d.Q;h.ka&&pa(h,h.ka.buildUrl(k.isHttps()));var f=d.Q;h=d.w;if(f.T){f=f.T.l(h,g,k);f.setAttribute("id","typekit-badge-"+h);k.insertInto("body",f)}}}(this,a,c,b))};
function R(a,c,b,d,e){this.Ha=a;this.c=c;this.j=b;this.k=d;this.t=e;this.p=[]}R.prototype.K=function(a){this.p.push(a)};R.prototype.load=function(a,c){var b=a,d=c||{};if(typeof b=="string")b=[b];else if(b&&b.length)b=b;else{d=b||{};b=[]}if(b.length)for(var e=this,g=b.length,k=0;k<b.length;k++)this.ua(b[k],function(){--g==0&&e.S(d)});else this.S(d)};R.prototype.ua=function(a,c){this.c.loadScript(this.Ha.buildUrl(this.c.isHttps(),"/"+a+".js"),c)};
R.prototype.S=function(a){if(a.userAgent)this.j=(new x(a.userAgent,document)).parse();a=new ba(this.c,this.k,a);for(var c=new Q,b=0;b<this.p.length;b++)this.p[b].addBrowsersToBrowserSet(c);c=c.findBrowser(this.j);for(b=0;b<this.p.length;b++)this.p[b].init(this.c);if(c){a.c.appendClassName(a.k,a.m.l(a.o,"loading"));G(a,"loading");va(this,c,a)}else E(a);this.p=[]};
function va(a,c,b){function d(k,h,f){e.watch(k,h,{},J,f)}var e=new H(a.c,b,{O:function(k){return k.offsetWidth}},a.t,function(){return+new Date});for(b=0;b<a.p.length;b++){var g=a.p[b];if(g.supportsBrowser(c)){g.load(a.c,d,c,b==a.p.length-1);g.performOptionalActions(window,a.j,a.c)}}}function S(a,c,b){this.ca=a;this.c=c;this.t=b;this.p=[]}S.prototype.K=function(a){this.p.push(a)};
S.prototype.load=function(){var a=this.ca.__webfonttypekitmodule__;if(a)for(var c=0;c<this.p.length;c++){var b=this.p[c],d=a[b.getId()];if(d){var e=this.c,g=this.t;d(function(k,h,f){var m=new Q;b.addBrowsersToBrowserSet(m);h=[];var n={};if(m=m.findBrowser(k)){b.init(e);b.load(e,o,m,g);b.collectFontFamilies(m,h,n);b.performOptionalActions(window,k,e,g)}f(!!m,h,n)})}}};function T(a,c){this.R=a;this.ma=c}T.prototype.getName=s("R");
function U(a,c){for(var b=0;b<a.H.length;b++){var d=a.H[b];if(c===d.getName())return d}return o}function ra(a,c){var b=a.r[c];return b?U(a,b):o}function ua(a,c,b){var d=[];a=a.s[c]||[];for(c=0;c<a.length;c++){var e;a:switch(a[c]){case "observeddomain":e=new wa(b.c);break a;case "fontmask":e=new xa(b.G,b.n);break a;default:e=o}e&&d.push(e)}return d}function ta(a,c,b){this.c=a;this.G=c;this.n=b}function sa(a){this.Pa=a}sa.prototype.toString=s("Pa");function wa(a){this.c=a}
wa.prototype.toString=function(){var a;a=this.c.getHostName?this.c.getHostName():document.location.hostname;return encodeURIComponent(a)};function xa(a,c){this.G=a;this.n=c}xa.prototype.toString=function(){for(var a=[],c=0;c<this.n.length;c++){var b=this.n[c],d=b.z();b=b.z(this.G);for(var e=0;e<d.length;e++){var g;a:{for(g=0;g<b.length;g++)if(d[e]===b[g]){g=i;break a}g=q}a.push(g?1:0)}}a=a.join("");a=a.replace(/^0+/,"");c=[];for(d=a.length;d>0;d-=4){b=a.slice(d-4<0?0:d-4,d);c.unshift(parseInt(b,2).toString(16))}return c.join("")};
var V=new Q;
V.addBrowser(new P("opera11plus-linux-osx-win2003-win7plus-winvista-winxp","d",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k))||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],
10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k))||(e=="Ubuntu"||e=="Linux"?i:q);if(!h)return q;a=a=="Opera"?parseFloat(c)>=11.1:q;return a}));
V.addBrowser(new P("chrome6plus-linux-osx-win2003-win7plus-winvista-winxp","d",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k))||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],
10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k))||(e=="Ubuntu"||e=="Linux"?i:q);if(!h)return q;return function(f,m){if(f=="Chrome"){var n=/([0-9]+.[0-9]+).([0-9]+).([0-9]+)/.exec(m);if(n)if(parseFloat(n[1])>=6)return i}}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("safari3to5-win2003-win7plus-winvista-winxp","a",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k);if(!h)return q;return function(f,m,n,p){if(f=="Safari"&&n=="AppleWebKit")if(f=/([0-9]+.[0-9]+)/.exec(p)){f=parseFloat(f[1]);return f>=
525.13&&f<534.5}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("ff36plus-linux-osx-win2003-win7plus-winvista-winxp","d",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k))||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],
10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k))||(e=="Ubuntu"||e=="Linux"?i:q);if(!h)return q;return function(f,m,n,p){if(n=="Gecko")if(m=/([0-9]+.[0-9]+)(.([0-9]+)|)/.exec(p)){f=parseFloat(m[1]);m=parseInt(m[3],10);return f>1.9||f>=1.9&&m>1}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("ff35-osx","b",function(a,c,b,d,e,g,k){var h=q;h=h||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k);if(!h)return q;return function(f,m,n,p){if(n=="Gecko"){f=/1.9.1b[1-3]{1}/;return/1.9.1/.test(p)&&!f.test(p)}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("chrome4to5-linux-osx-win2003-win7plus-winvista-winxp","a",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k))||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],
10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k))||(e=="Ubuntu"||e=="Linux"?i:q);if(!h)return q;return function(f,m){if(f=="Chrome"){var n=/([0-9]+.[0-9]+).([0-9]+).([0-9]+)/.exec(m);if(n){var p=parseFloat(n[1]),j=parseInt(n[2],10);n=parseInt(n[3],10);if(p>=6)return q;else if(p>4)return i;else if(p==4&&j>249)return i;else if(p==4&&j==249&&n>=4)return i}}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("ff35-linux-win2003-win7plus-winvista-winxp","a",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k))||(e=="Ubuntu"||e=="Linux"?i:q);if(!h)return q;return function(f,m,n,p){if(n=="Gecko"){f=/1.9.1b[1-3]{1}/;return/1.9.1/.test(p)&&
!f.test(p)}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("ie6to8-win2003-win7plus-winvista-winxp","i",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k);if(!h)return q;return function(f,m,n,p,j,l,F){if(f=="MSIE"){if(f=/([0-9]+.[0-9]+)/.exec(m))return parseFloat(f[1])>=6&&(F===undefined||
F<9);return q}}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("safari5plus-osx-win2003-win7plus-winvista-winxp","d",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k))||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],10);
return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k);if(!h)return q;return function(f,m,n,p){if(f=="Safari"&&n=="AppleWebKit")if(f=/([0-9]+.[0-9]+)/.exec(p))return parseFloat(f[1])>=534.5;return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("safari3to5-osx","b",function(a,c,b,d,e,g,k){var h=q;h=h||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k);if(!h)return q;return function(f,m,n,p){if(f=="Safari"&&n=="AppleWebKit")if(f=/([0-9]+.[0-9]+)/.exec(p)){f=parseFloat(f[1]);return f>=525.13&&f<534.5}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("air-linux-win","a",function(a,c,b,d,e,g,k){var h=q;h=(h=h||(e=="Windows"&&g=="Unknown"?i:q))||(e=="Ubuntu"||e=="Linux"?i:q);if(!h)return q;return function(f,m){if(f=="AdobeAIR"){var n=/([0-9]+.[0-9]+)/.exec(m);if(n)return parseFloat(n[1])>=2.5}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("opera10-linux-win2003-win7plus-winvista-winxp","a",function(a,c,b,d,e,g,k){var h=q;h=(h=(h=(h=(h=h||(e=="Windows"&&g=="5.1"?i:q))||(e=="Windows"&&g=="5.2"?i:q))||(e=="Windows"&&g=="6.0"?i:q))||function(f,m,n,p,j,l){f=/^([0-9]+).([0-9]+)/.exec(l);if(j=="Windows"&&f){j=parseInt(f[1],10);f=parseInt(f[2],10);return j>6||j==6&&f>=1}else return q}(a,c,b,d,e,g,k))||(e=="Ubuntu"||e=="Linux"?i:q);if(!h)return q;return function(f,m){if(f=="Opera"){var n=parseFloat(m);return n>=10.54&&n<
11.1}return q}(a,c,b,d,e,g,k)}));V.addBrowser(new P("air-osx","b",function(a,c,b,d,e,g,k){var h=q;h=h||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k);if(!h)return q;return function(f,m){if(f=="AdobeAIR"){var n=/([0-9]+.[0-9]+)/.exec(m);if(n)return parseFloat(n[1])>=2.5}return q}(a,c,b,d,e,g,k)}));
V.addBrowser(new P("ie9plus-win7plus-winvista","d",function(a,c,b,d,e,g,k){var h=q;h=(h=h||function(m,n,p,j,l,F){m=/^([0-9]+).([0-9]+)/.exec(F);if(l=="Windows"&&m){l=parseInt(m[1],10);m=parseInt(m[2],10);return l>6||l==6&&m>=1}else return q}(a,c,b,d,e,g,k))||(e=="Windows"&&g=="6.0"?i:q);if(!h)return q;var f;if(a=="MSIE")f=k>=9;return f}));
V.addBrowser(new P("opera10-osx","b",function(a,c,b,d,e,g,k){var h=q;h=h||function(f,m,n,p,j,l){f=/^([0-9]+)(_|.)([0-9]+)/.exec(l);if(j=="Macintosh"&&f){j=parseInt(f[1],10);l=parseInt(f[3],10);return j>10||j==10&&l>=4}else return j=="Macintosh"&&l=="Unknown"?i:q}(a,c,b,d,e,g,k);if(!h)return q;return function(f,m){if(f=="Opera"){var n=parseFloat(m);return n>=10.54&&n<11.1}return q}(a,c,b,d,e,g,k)}));var W=new function(){this.H=[];this.r={}},ya=new T("AllFonts",function(a,c){return c});
U(W,ya.getName())||W.H.push(ya);
var za=new T("DefaultFourFontsWithSingleFvdFamilies",function(a,c,b){for(var d=0;d<c.length;d++){var e=c[d],g=a.replace(/(-1|-2)$/,"").slice(0,28)+"-"+e;b.push(new oa(g,[e]))}a={};for(e=0;e<c.length;e++){b=c[e];d=b.charAt(1);(a[d]||(a[d]=[])).push(b)}b=[[4,3,2,1,5,6,7,8,9],[7,8,9,6,5,4,3,2,1]];d=[];for(e=0;e<b.length;e++){g=b[e];for(var k=0;k<g.length;k++){var h=g[k];if(a[h]){d=d.concat(a[h]);break}}}b=d;d={};a=[];for(e=0;e<b.length;e++){g=b[e];if(!d[g]){d[g]=i;a.push(g)}}b=[];for(d=0;d<c.length;d++){e=
c[d];for(g=0;g<a.length;g++){k=a[g];k==e&&b.push(k)}}return b});U(W,za.getName())||W.H.push(za);W.r.a="AllFonts";W.r.b="AllFonts";W.r.d="AllFonts";W.r.e="AllFonts";W.r.f="AllFonts";W.r.g="AllFonts";W.r.h="AllFonts";W.r.i="DefaultFourFontsWithSingleFvdFamilies";var X=new function(){this.s={}};X.s.a=[];X.s.b=[];X.s.d=[];X.s.e=[];X.s.f=["observeddomain"];X.s.g=["observeddomain"];X.s.h=["observeddomain"];X.s.i=["observeddomain","fontmask"];
if(!window.Typekit){var Aa=new O(i,"use.typekit.net","/"),Ba=(new x(navigator.userAgent,document)).parse(),Ca=new M(document,Ba),Da=function(a,c){setTimeout(a,c)},Y=new R(Aa,Ca,Ba,document.documentElement,Da),Z=new S(window,Ca,Da);window.Typekit=Y;window.Typekit.load=Y.load;window.Typekit.addKit=Y.K}var Ea,Fa,$;Ea=new O(i,"use.typekit.net","/k");Fa=new function(a,c,b){this.T=a;this.Ra=o;this.ka=b}(o,o,o);$=new qa("bih1sjl");$.setSecurityToken("3bb2a6e53c9684ffdc9a9bf01d5b2a62a6cf22dd8069c1189991f713eba86ca0d3ba9922e4fa8c97d989947552490ec30f513395cc5eb073f937633be3f44bab61c7606e7ac0a0e3a549ea51d159da73160bbcf58e1687ec994997c24af6adf34feb15fb1c6f51838df1b440490d2961b46dd970c671124a44ff0cef20358ab22cef6fdea7ef8522c0433bdaf85f5ebd234a391d79dfef6d9216337e9abf73d1506a41f0be3d45");
$.setNestedUrl(Ea);$.setKitOptions(Fa);$.addFontFamily(new N("anivers-1,anivers-2",["n4","n7"]));$.addFontFamily(new N("adelle-1,adelle-2",["n4","i4","n7"]));$.addCssRule(new ka([".webfont-sser"],[{name:"font-family",value:'"anivers-1","anivers-2","Futura","Helvetica Neue","Helvetica",sans-serif'}]));$.addCssRule(new ka([".tk-adelle",".webfont-ser"],[{name:"font-family",value:'"adelle-1","adelle-2","Palatino","Georgia","Hoefler Text",serif'}]));$.addBrowser(V.getBrowserById("air-linux-win"));$.addBrowser(V.getBrowserById("air-osx"));
$.addBrowser(V.getBrowserById("chrome4to5-linux-osx-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("chrome6plus-linux-osx-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("ff35-linux-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("ff35-osx"));$.addBrowser(V.getBrowserById("ff36plus-linux-osx-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("ie6to8-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("ie9plus-win7plus-winvista"));
$.addBrowser(V.getBrowserById("opera10-linux-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("opera10-osx"));$.addBrowser(V.getBrowserById("opera11plus-linux-osx-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("safari3to5-osx"));$.addBrowser(V.getBrowserById("safari3to5-win2003-win7plus-winvista-winxp"));$.addBrowser(V.getBrowserById("safari5plus-osx-win2003-win7plus-winvista-winxp"));$.setFontFilterSet(W);if(Z&&Z.ca.__webfonttypekitmodule__){Z.K($);Z.load()}else window.Typekit.addKit($);
})(this,document);
window.Typekit.config={"p":"//p.typekit.net/p.gif?s=1&k=bih1sjl&ht=tk&h={host}&f=2074.2019.2001.6863.6862&a=13924&_={_}"};
/*{"k":"1.3.0","created":"2013-01-30T19:08:16Z"}*/
;(function(window,document,undefined){
function e(b,a){this.b=a||b;this.a=document}e.prototype=function(b,a){this.b=a||b;this.a=this.b.document}.prototype;function f(b){var a=new Image(1,1);a.src=b;a.onload=function(){a.onload=null}}function g(){this.d=window.Typekit.config.p}function h(b,a,c){var d=c||{},b=b.d.replace(/\{\/?([^*}]*)(\*?)\}/g,function(b,a,c){return c&&d[a]?"/"+d[a].join("/"):d[a]||""});b.match(/^\/\//)&&(b=(a?"https:":"http:")+b);return b.replace(/\/*\?*($|\?)/,"$1")}window.Typekit||(window.Typekit={});
var i=new e(window),j=new function(){this.c=new g},k=!1;function l(){if(!k)for(var b=document.getElementsByTagName("link"),a=0;a<b.length;a++){var c=b[a].getAttribute("href");if(c&&0<=c.indexOf("use.typekit")){b=j;a=i;b.c&&(c=(c=window.__adobewebfontsappname__)?c.toString().substr(0,20):"",f(h(b.c,"https:"==a.a.location.protocol,{host:encodeURIComponent(a.a.location.hostname),app:encodeURIComponent(c),_:(+new Date).toString()})));k=!0;break}}}var m=window.Typekit.load;
window.Typekit.load=function(){m&&m.apply(window.Typekit,arguments);l()};window.__webfonttypekitmodule__&&l();
})(this,document);