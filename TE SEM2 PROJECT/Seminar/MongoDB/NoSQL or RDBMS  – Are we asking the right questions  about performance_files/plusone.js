var gapi=window.gapi=window.gapi||{};gapi._bs=new Date().getTime();(function(){var l=void 0,p=!0,q=null,s=!1,aa=encodeURIComponent,t=window,ba=Object,u=document,v=String,ca=decodeURIComponent;function da(a,b){return a.type=b}
var ea="appendChild",w="push",x="test",fa="exec",z="replace",ga="getElementById",A="concat",ha="JSON",B="indexOf",ia="match",ja="readyState",D="createElement",E="setAttribute",ka="getTime",la="getElementsByTagName",F="length",G="split",H="location",I="style",ma="removeChild",na="call",J="getAttribute",K="href",oa="action",L="apply",pa="attributes",M="parentNode",N="join",O="toLowerCase";var P=t,Q=u,qa=P[H],ra=function(){},sa=/\[native code\]/,R=function(a,b,c){return a[b]=a[b]||c},ta=function(a){for(var b=0;b<this[F];b++)if(this[b]===a)return b;return-1},ua=/&/g,va=/</g,wa=/>/g,xa=/"/g,ya=/'/g,za=function(a){return v(a)[z](ua,"&amp;")[z](va,"&lt;")[z](wa,"&gt;")[z](xa,"&quot;")[z](ya,"&#39;")},S=function(){var a;if((a=ba.create)&&sa[x](a))a=a(q);else{a={};for(var b in a)a[b]=l}return a},T=function(a,b){return ba.prototype.hasOwnProperty[na](a,b)},Aa=function(a){if(sa[x](ba.keys))return ba.keys(a);
var b=[],c;for(c in a)T(a,c)&&b[w](c);return b},W=function(a,b){a=a||{};for(var c in a)T(a,c)&&(b[c]=a[c])},Ba=function(a,b){if(!a)throw Error(b||"");},X=R(P,"gapi",{});var Ca=function(a,b,c){var e=RegExp("([#].*&|[#])"+b+"=([^&#]*)","g");b=RegExp("([?#].*&|[?#])"+b+"=([^&#]*)","g");if(a=a&&(e[fa](a)||b[fa](a)))try{c=ca(a[2])}catch(d){}return c},Da=/^([^?#]*)(\?([^#]*))?(\#(.*))?$/,Ea=function(a){a=a[ia](Da);var b=S();b.k=a[1];b.c=a[3]?[a[3]]:[];b.g=a[5]?[a[5]]:[];return b},Fa=function(a){return a.k+(0<a.c[F]?"?"+a.c[N]("&"):"")+(0<a.g[F]?"#"+a.g[N]("&"):"")},Ga=function(a){var b=[];if(a)for(var c in a)T(a,c)&&a[c]!=q&&b[w](aa(c)+"="+aa(a[c]));return b},Ha=function(a,
b,c){a=Ea(a);a.c[w][L](a.c,Ga(b));a.g[w][L](a.g,Ga(c));return Fa(a)};var Ia=function(a,b,c){if(P[b+"EventListener"])P[b+"EventListener"]("message",a,s);else if(P[c+"tachEvent"])P[c+"tachEvent"]("onmessage",a)},Ja={button:p,div:p,span:p};var Y;Y=R(P,"___jsl",S());R(Y,"I",0);R(Y,"hel",10);var Ka=function(a){return!Y.dpo?Ca(a,"jsh",Y.h):Y.h},La=function(a){return R(R(Y,"H",S()),a,S())};var Ma=R(Y,"perf",S()),Oa=R(Ma,"g",S()),Pa=R(Ma,"i",S());R(Ma,"r",[]);S();S();var Qa=function(a,b,c){var e=Ma.r;"function"===typeof e?e(a,b,c):e[w]([a,b,c])},Ra=function(a,b,c){Oa[a]=!b&&Oa[a]||c||(new Date)[ka]();Qa(a)},Ta=function(a,b,c){b&&0<b[F]&&(b=Sa(b),c&&0<c[F]&&(b+="___"+Sa(c)),28<b[F]&&(b=b.substr(0,28)+(b[F]-28)),c=b,b=R(Pa,"_p",S()),R(b,c,S())[a]=(new Date)[ka](),Qa(a,"_p",c))},Sa=function(a){return a[N]("__")[z](/\./g,"_")[z](/\-/g,"_")[z](/\,/g,"_")};var Ua=S(),Va=[],Z;Z={b:"callback",p:"sync",n:"config",d:"_c",i:"h",q:"platform",l:"jsl",TIMEOUT:"timeout",o:"ontimeout",u:"mh",t:"u"};Va[w]([Z.l,function(a){for(var b in a)if(T(a,b)){var c=a[b];"object"==typeof c?Y[b]=R(Y,b,[])[A](c):R(Y,b,c)}if(b=a[Z.t])a=R(Y,"us",[]),a[w](b),(b=/^https:(.*)$/[fa](b))&&a[w]("http:"+b[1])}]);var Wa=decodeURI("%73cript");Ua.m=function(a){var b=Y.ms||"https://apis.google.com";a=a[0];if(!a||0<=a[B](".."))throw"Bad hint";return b+"/"+a[z](/^\//,"")};
var Xa=function(a){return a[N](",")[z](/\./g,"_")[z](/-/g,"_")},Ya=function(a,b){for(var c=[],e=0;e<a[F];++e){var d=a[e];d&&0>ta[na](b,d)&&c[w](d)}return c},Za=/^[\/_a-zA-Z0-9,.\-!:=]+$/,$a=/^https?:\/\/[^\/\?#]+\.google\.com(:\d+)?\/[^\?#]+$/,ab=/\/cb=/g,bb=/\/\//g,cb=function(a){var b=Q[D](Wa);b[E]("src",a);b.async="true";(a=Q[la](Wa)[0])?a[M].insertBefore(b,a):(Q.head||Q.body||Q.documentElement)[ea](b)},eb=function(a,b){var c=b||{};"function"==typeof b&&(c={},c[Z.b]=b);var e=c,d=e&&e[Z.d];if(d)for(var g=
0;g<Va[F];g++){var j=Va[g][0],h=Va[g][1];h&&T(d,j)&&h(d[j],a,e)}e=a?a[G](":"):[];if(!(d=c[Z.i]))if(d=Ka(qa[K]),!d)throw"Bad hint";g=d;j=R(Y,"ah",S());if(!j["::"]||!e[F])db(e||[],c,g);else{d=[];for(h=q;h=e.shift();){var f=h[G]("."),f=j[h]||j[f[1]&&"ns:"+f[0]||""]||g,i=d[F]&&d[d[F]-1]||q,m=i;if(!i||i.hint!=f)m={hint:f,j:[]},d[w](m);m.j[w](h)}var C=d[F];if(1<C){var k=c[Z.b];k&&(c[Z.b]=function(){0==--C&&k()})}for(;e=d.shift();)db(e.j,c,e.hint)}},db=function(a,b,c){var e=a.sort();a=[];for(var d=l,g=0;g<
e[F];g++){var j=e[g];j!=d&&a[w](j);d=j}a=a||[];var h=b[Z.b],f=b[Z.n],d=b[Z.TIMEOUT],i=b[Z.o],m=q,C=s;if(d&&!i||!d&&i)throw"Timeout requires both the timeout parameter and ontimeout parameter to be set";var e=R(La(c),"r",[]).sort(),k=R(La(c),"L",[]).sort(),n=[][A](e),r=function(a,b){if(C)return 0;P.clearTimeout(m);k[w][L](k,y);var d=((X||{}).config||{}).update;d?d(f):f&&R(Y,"cu",[])[w](f);if(b){Ta("me0",a,n);try{fb(function(){var a;a=c===Ka(qa[K])?R(X,"_",S()):S();a=R(La(c),"_",a);b(a)})}finally{Ta("me1",
a,n)}}h&&h();return 1};0<d&&(m=P.setTimeout(function(){C=p;i()},d));var y=Ya(a,k);if(y[F]){var y=Ya(a,e),U=R(Y,"CP",[]),V=U[F];U[V]=function(a){if(!a)return 0;Ta("ml1",y,n);var b=function(){U[V]=q;return r(y,a)};if(0<V&&U[V-1])U[V]=b;else for(b();(b=U[++V])&&b(););};if(y[F]){var Na="loaded_"+Y.I++;X[Na]=function(a){U[V](a);X[Na]=q};a=c[G](";");a=(d=Ua[a.shift()])&&d(a);if(!a)throw"Bad hint:"+c;d=a=a[z]("__features__",Xa(y))[z](/\/$/,"")+(e[F]?"/ed=1/exm="+Xa(e):"")+("/cb=gapi."+Na);g=d[ia](bb);j=
d[ia](ab);if(!j||!(1===j[F]&&$a[x](d)&&Za[x](d)&&g&&1===g[F]))throw"Bad URL "+a;e[w][L](e,y);Ta("ml0",y,n);b[Z.p]||P.___gapisync?(b=a,"loading"!=Q[ja]?cb(b):Q.write("<"+Wa+' src="'+encodeURI(b)+'"></'+Wa+">")):cb(a)}else U[V](ra)}else r(y)};var fb=function(a){if(Y.hee&&0<Y.hel)try{return a()}catch(b){Y.hel--,eb("debug_error",function(){t.___jsl.hefn(b)})}else return a()};X.load=function(a,b){return fb(function(){return eb(a,b)})};var gb=function(a){var b=t.___jsl=t.___jsl||{};b[a]=b[a]||[];return b[a]},hb=function(a){var b=t.___jsl=t.___jsl||{};b.cfg=!a&&b.cfg||{};return b.cfg},ib=function(a){return"object"===typeof a&&/\[native code\]/[x](a[w])},jb=function(a,b){if(b)for(var c in b)b.hasOwnProperty(c)&&(a[c]&&b[c]&&"object"===typeof a[c]&&"object"===typeof b[c]&&!ib(a[c])&&!ib(b[c])?jb(a[c],b[c]):b[c]&&"object"===typeof b[c]?(a[c]=ib(b[c])?[]:{},jb(a[c],b[c])):a[c]=b[c])},kb=function(a){if(a&&!/^\s+$/[x](a)){for(;0==a.charCodeAt(a[F]-
1);)a=a.substring(0,a[F]-1);var b;try{b=t[ha].parse(a)}catch(c){}if("object"===typeof b)return b;try{b=(new Function("return ("+a+"\n)"))()}catch(e){}if("object"===typeof b)return b;try{b=(new Function("return ({"+a+"\n})"))()}catch(d){}return"object"===typeof b?b:{}}},$=function(a){if(!a)return hb();a=a[G]("/");for(var b=hb(),c=0,e=a[F];b&&"object"===typeof b&&c<e;++c)b=b[a[c]];return c===a[F]&&b!==l?b:l};var lb=R(Y,"rw",S()),mb=function(a,b){var c=lb[a];c&&c.state<b&&(c.state=b)};var nb=function(a){var b;a[ia](/^https?%3A/i)&&(b=ca(a));b=b?b:a;var c=u;a=c[D]("div");c=c[D]("a");c.href=b;a[ea](c);a.innerHTML=a.innerHTML;b=v(a.firstChild[K]);a[M]&&a[M][ma](a);return b},ob=function(a){a=a||"canonical";for(var b=u[la]("link"),c=0,e=b[F];c<e;c++){var d=b[c],g=d[J]("rel");if(g&&g[O]()==a&&(d=d[J]("href")))return nb(d)}return t[H][K]};var pb=function(){var a=Y.onl;if(!a){a=S();Y.onl=a;var b=S();a.e=function(a){var e=b[a];e&&(delete b[a],e())};a.a=function(a,e){b[a]=e};a.r=function(a){delete b[a]}}return a};var qb={allowtransparency:"true",frameborder:"0",hspace:"0",marginheight:"0",marginwidth:"0",scrolling:"no",style:"",tabindex:"0",vspace:"0",width:"100%"},rb={allowtransparency:p,onload:p},sb=0,tb=function(a,b,c,e,d){var g,j;var h=c.onload;"function"===typeof h?(pb().a(e,h),j=h):j=q;j?(Ba(/^\w+$/[x](e),"Unsupported id - "+e),pb(),h='onload="window.___jsl.onl.e(&#34;'+e+'&#34;)"'):h="";try{g=a[D]('<iframe frameborder="'+za(c.frameborder)+'" scrolling="'+za(c.scrolling)+'" '+h+' name="'+za(c.name)+
'"/>')}catch(f){g=a[D]("iframe"),j&&(g.onload=function(){g.onload=q;j[na](this)},pb().r(e))}for(var i in c)a=c[i],"style"===i&&"object"===typeof a?W(a,g[I]):rb[i]||g[E](i,v(a));if(!d||!d.dontclear)for(;b.firstChild;)b[ma](b.firstChild);b[ea](g);g=b.lastChild;c.allowtransparency&&(g.allowTransparency=p);return g};var ub=/:([a-zA-Z_]+):/g,vb={style:"position:absolute;top:-10000px;width:300px;margin:0px;borderStyle:none"},wb="onPlusOne _ready _close,_open _resizeMe _renderstart oncircled".split(" "),xb=q,yb=R(Y,"WI",S()),zb=function(){var a=$("googleapis.config/sessionIndex");a==q&&(a=t.__X_GOOG_AUTHUSER);if(a==q){var b=t.google;b&&(a=b.authuser)}a==q&&(a=l,a==q&&(a=t[H][K]),a=a?Ca(a,"authuser")||q:q);return a==q?q:v(a)},Ab=function(a,b){if(!xb){var c=$("iframes/:socialhost:"),e=zb()||"0",d=zb();xb={socialhost:c,
session_index:e,session_prefix:d!==l&&d!==q&&""!==d?"u/"+d+"/":"",im_prefix:$("googleapis.config/signedIn")===s?"_/im/":""}}return xb[b]||""},Bb=["style","data-gapiscan"],Cb=function(a){var b=l;"number"===typeof a?b=a:"string"===typeof a&&(b=parseInt(a,10));return b},Db=function(){};var Eb,Fb,Gb,Hb,Ib,Jb=/(?:^|\s)g-((\S)*)(?:$|\s)/;Eb=R(Y,"SW",S());Fb=R(Y,"SA",S());Gb=R(Y,"SM",S());Hb=R(Y,"FW",[]);Ib=q;
var Lb=function(a,b){Kb(l,s,a,b)},Kb=function(a,b,c,e){Ra("ps0",p);c=("string"===typeof c?u[ga](c):c)||Q;var d;d=Q.documentMode;if(c.querySelectorAll&&(!d||8<d)){d=e?[e]:Aa(Eb)[A](Aa(Fb))[A](Aa(Gb));for(var g=[],j=0;j<d[F];j++){var h=d[j];g[w](".g-"+h,"g\\:"+h)}d=c.querySelectorAll(g[N](","))}else d=c[la]("*");c=S();for(g=0;g<d[F];g++){j=d[g];var f=j,h=e,i=f.nodeName[O](),m=l;f[J]("data-gapiscan")?h=q:(0==i[B]("g:")?m=i.substr(2):(f=(f=v(f.className||f[J]("class")))&&Jb[fa](f))&&(m=f[1]),h=m&&(Eb[m]||
Fb[m]||Gb[m])&&(!h||m===h)?m:q);h&&(j[E]("data-gapiscan",p),R(c,h,[])[w](j))}if(b)for(var C in c){b=c[C];for(e=0;e<b[F];e++)b[e][E]("data-onload",p)}for(var k in c)Hb[w](k);Ra("ps1",p);((C=Hb[N](":"))||a)&&X.load(C,a);if(Mb(Ib||{}))for(var n in c){a=c[n];k=0;for(b=a[F];k<b;k++)a[k].removeAttribute("data-gapiscan");Nb(n)}else{e=[];for(n in c){a=c[n];k=0;for(b=a[F];k<b;k++){j=a[k];d=n;h=g=j;j=S();m=0!=h.nodeName[O]()[B]("g:");f=0;for(i=h[pa][F];f<i;f++){var r=h[pa][f],y=r.name,r=r.value;0<=ta[na](Bb,
y)||(m&&0!=y[B]("data-")||"null"===r)||(m&&(y=y.substr(5)),j[y[O]()]=r)}m=j;h=h[I];(f=Cb(h&&h.height))&&(m.height=v(f));(h=Cb(h&&h.width))&&(m.width=v(h));Ob(d,g,j,e,b)}}Pb(C,e)}},Qb=function(a){var b=R(X,a,{});b.go||(b.go=function(b){return Lb(b,a)},b.render=function(b,e){var d=e||{};da(d,a);var g=d.type;delete d.type;var j=("string"===typeof b?u[ga](b):b)||l,h={},f;for(f in d)T(d,f)&&(h[f[O]()]=d[f]);h.rd=1;d=[];Ob(g,j,h,d,0);Pb(g,d)})},Rb=function(a){Eb[a]=p},Sb=function(a){Fb[a]=p},Tb=function(a){Gb[a]=
p};var Nb=function(a,b){var c=R(Y,"watt",S())[a];b&&c?(c(b),(c=b.iframeNode)&&c[E]("data-gapiattached",p)):X.load(a,function(){var c=R(Y,"watt",S())[a],d=b&&b.iframeNode;!d||!c?(0,X[a].go)(d&&d[M]):(c(b),d[E]("data-gapiattached",p))})},Mb=function(){return s},Pb=function(){},Ob=function(a,b,c,e,d){switch(Ub(b,a)){case 0:a=Gb[a]?a+"_annotation":a;e={};e.iframeNode=b;e.userParams=c;Nb(a,e);break;case 1:if(b[M]){var g=p;c.dontclear&&(g=s);delete c.dontclear;var j,h,f;h=f=a;"plus"==a&&c[oa]&&(f=a+"_"+c[oa],
h=a+"/"+c[oa]);(f=$("iframes/"+f+"/url"))||(f=":socialhost:/_/widget/render/"+h);h=f[z](ub,Ab);f={};W(c,f);f.hl=$("lang")||"en-US";f.origin=t[H].origin||t[H].protocol+"//"+t[H].host;f.exp=$("iframes/"+a+"/params/exp");var i=$("iframes/"+a+"/params/location");if(i)for(var m=0;m<i[F];m++){var C=i[m];f[C]=P[H][C]}switch(a){case "plus":i=f[K];m=c[oa]?l:"publisher";i=(i="string"==typeof i?i:l)?nb(i):ob(m);f.url=i;delete f[K];break;case "plusone":case "recobox":f.url=c[K]?nb(c[K]):ob();i=c.db;m=$();i==
q&&m&&(i=m.db,i==q&&(i=m.gwidget&&m.gwidget.db));f.db=i||l;i=c.ecp;m=$();i==q&&m&&(i=m.ecp,i==q&&(i=m.gwidget&&m.gwidget.ecp));f.ecp=i||l;delete f[K];break;case "signin":f.url=ob()}f.hl=$("lang")||"en-US";Y.ILI&&(f.iloader="1");delete f["data-onload"];delete f.rd;f.gsrc=$("iframes/:source:");i=$("inline/css");"undefined"!==typeof i&&(0<d&&i>=d)&&(f.ic="1");i=/^#|^fr-/;d={};for(var k in f)T(f,k)&&i[x](k)&&(d[k[z](i,"")]=f[k],delete f[k]);k=[][A](wb);i=$("iframes/"+a+"/methods");"object"===typeof i&&
sa[x](i[w])&&(k=k[A](i));for(j in c)if(T(c,j)&&/^on/[x](j)&&("plus"!=a||"onconnect"!=j))k[w](j),delete f[j];delete f.callback;d._methods=k[N](",");j=Ha(h,f,d);c.rd?k=b:(k=u[D]("div"),b[E]("data-gapistub",p),k[I].cssText="position:absolute;width:100px;left:-10000px;",b[M].insertBefore(k,b));k.id||(b=k,R(yb,a,0),h="___"+a+"_"+yb[a]++,b.id=h);b=S();b[">type"]=a;W(c,b);k[E]("data-gwattr",Ga(b)[N](":"));b=k;k={allowPost:1,attributes:vb};k.dontclear=!g;var n;h=k||{};g=h[pa]||{};Ba(!h.allowPost||!g.onload,
"onload is not supported by post iframe");!h.rpctoken&&!Ca(j,"rpctoken")&&(h.rpctoken=q);g=b.ownerDocument||Q;f=0;do k=h.id||["I",sb++,"_",(new Date)[ka]()][N]("");while(g[ga](k)&&5>++f);Ba(5>f,"Error creating iframe id");d=g[H][K];f=S();(i=Ca(d,"_bsh",Y.bsh))&&(f._bsh=i);(d=Ka(d))&&(f.jsh=d);d=S();d.id=k;d.parent=g[H].protocol+"//"+g[H].host;i=Ca(g[H][K],"id","");m=Ca(g[H][K],"pfname","");(i=i?m+"/"+i:"")&&(d.pfname=i);h.rpctoken&&(d.rpctoken=h.rpctoken);h.hintInFragment?W(f,d):n=f;f=Ha(j,n,d);n=
S();W(qb,n);W(h[pa],n);n.name=n.id=k;n.src=f;var r;if((h||{}).allowPost&&2E3<f[F]){f=Ea(f);n.src="";n["data-postorigin"]=f.k;n=tb(g,b,n,k);-1!=navigator.userAgent[B]("WebKit")&&(r=n.contentWindow.document,r.open(),d=r[D]("div"),i={},m=k+"_inner",i.name=m,i.src="",i.style="display:none",tb(g,d,i,m,h));d=(h=f.c[0])?h[G]("&"):[];h=[];for(i=0;i<d[F];i++)m=d[i][G]("=",2),h[w]([ca(m[0]),ca(m[1])]);f.c=[];d=Fa(f);f=g[D]("form");f.action=d;f.method="POST";f.target=k;f[I].display="none";for(k=0;k<h[F];k++)d=
g[D]("input"),da(d,"hidden"),d.name=h[k][0],d.value=h[k][1],f[ea](d);b[ea](f);f.submit();f[M][ma](f);r&&r.close();r=n}else r=tb(g,b,n,k,h);n=r;r={};r.userParams=c;r.url=j;da(r,a);r.iframeNode=n;r.id=n[J]("id");c=r.id;n=S();n.id=c;n.userParams=r.userParams;n.url=r.url;da(n,r.type);n.state=1;lb[c]=n;c=r}else c=q;c&&((r=c.id)&&e[w](r),Nb(a,c))}},Ub=function(a,b){if(a&&1===a.nodeType&&b)if(Gb[b]){if(Ja[a.nodeName[O]()]){var c=a.innerHTML;return c&&c[z](/^[\s\xa0]+|[\s\xa0]+$/g,"")?0:1}}else{if(Fb[b])return 0;
if(Eb[b])return 1}return q};R(X,"platform",{}).go=Lb;var Mb=function(a){for(var b=[Z.d,Z.l,Z.i],c=0;c<b[F]&&a;c++)a=a[b[c]];b=Ka(qa[K]);return!a||0!=a[B]("n;")&&0!=b[B]("n;")&&a!==b},Pb=function(a,b){var c=function(){Ia(e,"remove","de")},e=function(e){var j=e.data,h=e.origin;if(Vb(j,b)){var f=d;d=s;f&&Ra("rqe");eb(a,function(){f&&Ra("rqd");c();for(var a=R(Y,"RPMQ",[]),b=0;b<a[F];b++)a[b]({data:j,origin:h})})}};if(!(0===b[F]||!t[ha]||!t[ha].parse)){var d=p;Ia(e,"add","at");eb(a,c)}},Wb=function(a,b){for(var c=b||[],e=0;e<c[F];++e)a(c[e]);for(e=0;e<c[F];e++)Qb(c[e])};
Va[w]([Z.q,function(a,b,c){Ib=c;b&&Hb[w](b);Wb(Rb,a);Wb(Sb,c[Z.d].annotation);Wb(Tb,c[Z.d].bimodal);if(b=t.__GOOGLEAPIS)b.googleapis&&!b["googleapis.config"]&&(b["googleapis.config"]=b.googleapis),R(Y,"ci",[])[w](b),t.__GOOGLEAPIS=l;hb(p);var e=t.___gcfg;b=gb("cu");if(e&&e!==t.___gu){var d={};jb(d,e);b[w](d);t.___gu=e}var e=gb("cu"),g=u.scripts||u[la]("script")||[],d=[],j=[];j[w][L](j,gb("us"));for(var h=0;h<g[F];++h)for(var f=g[h],i=0;i<j[F];++i)f.src&&0==f.src[B](j[i])&&d[w](f);0==d[F]&&(0<g[F]&&
g[g[F]-1].src)&&d[w](g[g[F]-1]);for(g=0;g<d[F];++g)d[g][J]("gapi_processed")||(d[g][E]("gapi_processed",p),(j=d[g])?(h=j.nodeType,j=3==h||4==h?j.nodeValue:j.textContent||j.innerText||j.innerHTML||""):j=l,(j=kb(j))&&e[w](j));g=gb("cd");e=0;for(d=g[F];e<d;++e)jb(hb(),g[e]);g=gb("ci");e=0;for(d=g[F];e<d;++e)jb(hb(),g[e]);e=0;for(d=b[F];e<d;++e)jb(hb(),b[e]);if("explicit"!=$("parsetags")){b=R(Y,"sws",[]);b[w][L](b,a);var m;if(c){var C=c[Z.b];C&&(m=function(){P.setTimeout(C,0)},delete c[Z.b])}if("complete"!==
Q[ja])try{Kb(l,p)}catch(k){}var n=function(){Kb(m,p)};if("complete"===Q[ja])n();else{var r=s,y=function(){if(!r)return r=p,n[L](this,arguments)};P.addEventListener?(P.addEventListener("load",y,s),P.addEventListener("DOMContentLoaded",y,s)):P.attachEvent&&(P.attachEvent("onreadystatechange",function(){"complete"===Q[ja]&&y[L](this,arguments)}),P.attachEvent("onload",y))}}}]);var Xb=/^\{h\:'/,Yb=/^!_/,Vb=function(a,b){a=v(a);if(Xb[x](a))return p;a=a[z](Yb,"");if(!/^\{/[x](a))return s;try{var c=t[ha].parse(a)}catch(e){return s}if(!c)return s;var d=c.f;if(c.s&&d&&-1!=ta[na](b,d)){if("_renderstart"===c.s){var c=c.a&&c.a[1],g=Q[ga](d);mb(d,2);(d=lb[d])&&(d.args=c);c&&g&&Db(g[M],g,c)}return p}return s};var Zb=function(a){a=(a=lb[a])?a.oid:l;if(a){var b=Q[ga](a);b&&b[M][ma](b);delete lb[a];Zb(a)}},Db=function(a,b,c){if(c.width&&c.height){a[I].cssText="";a:{c=c||{};var e=Y.ssfn;if(e&&e(l)){if("number"===typeof Y.ucs)break a;var d=b.id;if(d){e=(e=lb[d])?e.state:l;if(1===e||4===e)break a;Zb(d)}}e=c.width;c=c.height;var g=a[I];g.textIndent="0";g.margin="0";g.padding="0";g.background="transparent";g.borderStyle="none";g.cssFloat="none";g.styleFloat="none";g.lineHeight="normal";g.fontSize="1px";g.verticalAlign=
"baseline";a[I].display="inline-block";a=b[I];a.position="static";a.left=0;a.top=0;a.visibility="visible";e&&(a.width=e+"px");c&&(a.height=c+"px");d&&mb(d,3)}b["data-csi-wdt"]=(new Date)[ka]()}};Ra("bs0",p,t.gapi._bs);Ra("bs1",p);delete t.gapi._bs;})();
gapi.load("plusone",{callback:window["gapi_onload"],_c:{"jsl":{"ci":{"services":{},"deviceType":"desktop","lexps":[69,100,71,98,96,79,74,45,17,86,82,92,94,61,90,30],"inline":{"css":1},"report":{},"oauth-flow":{"authUrl":"https://accounts.google.com/o/oauth2/auth","proxyUrl":"https://accounts.google.com/o/oauth2/postmessageRelay"},"isPlusUser":false,"iframes":{"additnow":{"methods":["launchurl"],"url":"https://apis.google.com/additnow/additnow.html?bsv"},"plus":{"methods":["onauth"],"url":":socialhost:/u/:session_index:/_/pages/badge?bsv"},":socialhost:":"https://plusone.google.com","plus_followers":{"params":{"url":""},"url":":socialhost:/_/im/_/widget/render/plus/followers?bsv"},"recobox":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/render/recobox?bsv"},"autocomplete":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/render/autocomplete?bsv"},"plus_share":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/+1/sharebutton?plusShare\u003dtrue\u0026bsv"},"savetowallet":{"url":"https://clients5.google.com/s2w/o/savetowallet?bsv"},"plus_circle":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/plus/circle?bsv"},"hangout":{"url":"https://talkgadget.google.com/widget/go?bsv"},"savetodrive":{"methods":["save"],"url":"https://drive.google.com/savetodrivebutton?bsv"},"card":{"url":":socialhost:/:session_prefix:_/hovercard/card?bsv"},"evwidget":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/events/widget?bsv"},":signuphost:":"https://plus.google.com","plusone":{"preloadUrl":["https://ssl.gstatic.com/s2/oz/images/stars/po/Publisher/sprite4-a67f741843ffc4220554c34bd01bb0bb.png"],"params":{"count":"","size":"","url":""},"url":":socialhost:/:session_prefix:_/+1/fastbutton?bsv"}},"debug":{"host":"https://plusone.google.com","reportExceptionRate":0.05,"rethrowException":true},"csi":{"rate":0.0},"googleapis.config":{"mobilesignupurl":"https://m.google.com/app/plus/oob?"}},"h":"m;/_/scs/apps-static/_/js/k\u003doz.gapi.en.OdHYDgvBnac.O/m\u003d__features__/am\u003dQQ/rt\u003dj/d\u003d1/rs\u003dAItRSTM_7RQ7OQeTq8mj4MdArhj4w7GWvQ","u":"http://apis.google.com/js/plusone.js","hee":true,"fp":"97628b64701df7a3d1dbf1c33954d7afa650e979","dpo":false},"platform":["additnow","identity","plus","plusone","recobox","savetodrive","savetowallet","notifications","hangout"],"fp":"97628b64701df7a3d1dbf1c33954d7afa650e979","annotation":["autocomplete","profile"],"bimodal":[]}});