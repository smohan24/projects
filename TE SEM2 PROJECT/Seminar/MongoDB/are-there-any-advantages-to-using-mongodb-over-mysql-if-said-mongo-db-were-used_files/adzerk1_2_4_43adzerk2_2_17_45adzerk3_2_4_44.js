function cssLoad(css){var s=document.createElement('style');document.getElementsByTagName('head')[0].appendChild(s);if(!!window.ActiveXObject){document.styleSheets[document.styleSheets.length-1].cssText=css;}else{var stylenode=document.createTextNode(css);s.appendChild(stylenode);}}function azHtmlLoad(div,content){var azDiv=document.getElementById(div);azDiv.innerHTML=content;}function azScriptSRCLoad(div,script){var newScript=document.createElement('script');newScript.type='text/javascript';newScript.src=script;var azDiv=document.getElementById(div);azDiv.appendChild(newScript);}function azScriptInlineLoad(div,script,interval){var newScript=document.createElement('script');newScript.type='text/javascript';if(/msie/.test(navigator.userAgent.toLowerCase())){newScript.text=script;}else{newScript.innerHTML=script;}var azDiv=document.getElementById(div);azDiv.appendChild(newScript);}function azLoad(div,code){var azDiv=document.getElementById(div);if(azDiv){code();}else {setTimeout(function(){azLoad(div,code)},100);}}var zItems=[];function zshow(div){if(zItems[div]){document.write(zItems[div]);}}function ados_frameLoaded(x, y) {};function ados_loadFIframe(a,b,c,d,e){var adzerkDiv=document.getElementById(a);var ifrm=document.createElement("iframe");ifrm.frameBorder=0;ifrm.scrolling="no";ifrm.noresize="noresize";ifrm.marginheight=0;ifrm.marginwidth=0;if(d!=0){ifrm.height=d}if(e!=0){ifrm.width=e}ifrm.onload=function(){ados_frameLoaded(a,c)};adzerkDiv.innerHtml="";adzerkDiv.appendChild(ifrm);var content='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"><html><body style="margin:0px;"><script type="text/javascript">var divName = "'+a+'";var inDapIF = true;<\/script>'+unescape(b)+"</body></html>";    if (/msie/.test(navigator.userAgent.toLowerCase())) { ifrm.contentWindow.contents = content; return ifrm.src = 'javascript:window["contents"]'; } else { var doc = ifrm.contentDocument; doc.open(); doc.write(content); doc.close(); return ifrm;}}function cssLinkLoad(a){var b;b=document.createElement('link');b.rel='stylesheet';b.href=a;return document.getElementsByTagName('head')[0].appendChild(b)}function azScriptExtensionLoad(a){var b,c;c=document.createElement('script');c.type='text/javascript';c.src=a;b=document.getElementsByTagName('head')[0];return b.appendChild(c)}function azRegisterExtension(a,b){var c,d,e,f;if(window.ados==null){window.ados={}}if(window.ados.extensions==null){window.ados.extensions={}}window.ados.extensions[a]=b;if(window.ados.extensionCalls!=null&&window.ados.extensionCalls[a]!=null){f=window.ados.extensionCalls[a];for(d=0,e=f.length;d<e;d++){c=f[d];b.apply(null,c)}delete window.ados.extensionCalls[a]}}function azInitExtension(){var a,b;b=arguments[0],a=2<=arguments.length?[].slice.call(arguments,1):[];if(window.ados==null){window.ados={}}if(window.ados.extensions!=null&&window.ados.extensions[b]!=null){return window.ados.extensions[b].apply(null,a)}else{if(window.ados.extensionCalls==null){window.ados.extensionCalls={}}if(window.ados.extensionCalls[b]==null){window.ados.extensionCalls[b]=[]}window.ados.extensionCalls[b].push(a)}}var adzerk1_html_2j746rtv6r2cwfdy = '<a href="http://engine.adzerk.net/redirect/0/5923/7472/8277/926dcea8aec945948e81b1614b1c5f8b/43/1178/10188/634956337721092620/?keywords=mysql%2cmongodb%2cnormalization%2cdatabase-schema" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/46a9844d6e504212a85bc72ddd7dd829.png" title="" alt="" border="0" height="90" width="728" /></a><img width="0" height="0" src="http://engine.adzerk.net/v/v.gif?i=eyJVc2VyIjpudWxsLCJDYXRlZ29yaWVzIjpbXSwiQ3JlYXRlZE9uIjoiXC9EYXRlKDEzNjAwMzY5NzIwOTcpXC8iLCJJZCI6IjA0ZTljYTg0LTI1M2QtNGE3Yy04OWY4LWVjYmUyODg1YTE2OCIsIlJlbW90ZUlQIjpudWxsLCJVc2VyQWdlbnQiOm51bGwsIlJlZmVycmVyVXJsIjpudWxsLCJVcmwiOm51bGwsIkNyZWF0aXZlSWQiOjU5MjMsIlJTU0tleSI6bnVsbCwiQWRUeXBlSWQiOjQsIlNpdGVJZCI6ODI3NywiQ2hhbm5lbElkIjoxMTc4LCJQcmlvcml0eUlkIjoxNjA0LCJOZXR3b3JrSWQiOjIyLCJab25lSWQiOjQzLCJMb2NhdGlvbiI6bnVsbCwiQ2FtcGFpZ25JZCI6MjkxMSwiUGFzc0lkIjo3NDcyLCJCcmFuZElkIjo0MTQsIkZpcnN0Q2hhbm5lbElkIjoxMTc4LCJJbXByZXNzaW9uQ291bnQiOjEsIlVzZXJLZXkiOm51bGwsIktleXdvcmRzIjoibXlzcWwsbW9uZ29kYixub3JtYWxpemF0aW9uLGRhdGFiYXNlLXNjaGVtYSIsIkRlbGl2ZXJ5TW9kZSI6MSwiUmV2ZW51ZSI6MCwiSXNUcmFja2luZ0Nvb2tpZUV2ZW50cyI6ZmFsc2UsIlBoYW50b21QYXNzSWQiOjAsIlBoYW50b21DcmVhdGl2ZVBhc3NJZCI6MCwiQ3JlYXRpdmVQYXNzSWQiOjEwMTg4LCJJc1ZhbGlkVUEiOmZhbHNlLCJJc05vVHJhY2siOmZhbHNlLCJNYXRjaGluZ0tleXdvcmRzIjpudWxsfQ2"/>';var adzerk1_func_5g4apl651h0cvxju = function() { azHtmlLoad('adzerk1', adzerk1_html_2j746rtv6r2cwfdy); }; setTimeout(function() { azLoad('adzerk1', adzerk1_func_5g4apl651h0cvxju) }, 100);var adzerk1_inline_y2i9q4j4mlui6pdr = 'azInitExtension("voting", "adzerk1", 414, 8277, 43, 10188, 5923);';var adzerk1_func_gtctdeivng02kvvr = function() { azScriptInlineLoad('adzerk1', adzerk1_inline_y2i9q4j4mlui6pdr); }; setTimeout(function() { azLoad('adzerk1', adzerk1_func_gtctdeivng02kvvr) }, 100);var adzerk2_html_n04rr5wu1uvcd1aa = '<a href="http://engine.adzerk.net/redirect/0/8211/2444/8277/0db23878ffdb4f0c977a6c8e324e0f9f/45/1178/13039/634956337721134180/?keywords=mysql%2cmongodb%2cnormalization%2cdatabase-schema" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/bd294ce7ff4c43b6aad4aa4169fb819b.jpg" title="" alt="" border="0" height="250" width="220" /></a><img width="0" height="0" src="http://engine.adzerk.net/v/v.gif?i=eyJVc2VyIjpudWxsLCJDYXRlZ29yaWVzIjpbXSwiQ3JlYXRlZE9uIjoiXC9EYXRlKDEzNjAwMzY5NzIwOTcpXC8iLCJJZCI6Ijc3MzhhNzRlLWFiZTItNDYxOS05YjljLWQzYzFhMzA0YzNhMiIsIlJlbW90ZUlQIjpudWxsLCJVc2VyQWdlbnQiOm51bGwsIlJlZmVycmVyVXJsIjpudWxsLCJVcmwiOm51bGwsIkNyZWF0aXZlSWQiOjgyMTEsIlJTU0tleSI6bnVsbCwiQWRUeXBlSWQiOjE3LCJTaXRlSWQiOjgyNzcsIkNoYW5uZWxJZCI6MTE3OCwiUHJpb3JpdHlJZCI6MTU2OCwiTmV0d29ya0lkIjoyMiwiWm9uZUlkIjo0NSwiTG9jYXRpb24iOm51bGwsIkNhbXBhaWduSWQiOjg0NywiUGFzc0lkIjoyNDQ0LCJCcmFuZElkIjo0MTQsIkZpcnN0Q2hhbm5lbElkIjoxMTc4LCJJbXByZXNzaW9uQ291bnQiOjEsIlVzZXJLZXkiOm51bGwsIktleXdvcmRzIjoibXlzcWwsbW9uZ29kYixub3JtYWxpemF0aW9uLGRhdGFiYXNlLXNjaGVtYSIsIkRlbGl2ZXJ5TW9kZSI6MSwiUmV2ZW51ZSI6MCwiSXNUcmFja2luZ0Nvb2tpZUV2ZW50cyI6ZmFsc2UsIlBoYW50b21QYXNzSWQiOjAsIlBoYW50b21DcmVhdGl2ZVBhc3NJZCI6MCwiQ3JlYXRpdmVQYXNzSWQiOjEzMDM5LCJJc1ZhbGlkVUEiOmZhbHNlLCJJc05vVHJhY2siOmZhbHNlLCJNYXRjaGluZ0tleXdvcmRzIjpudWxsfQ2"/>';var adzerk2_func_9mbanaz3l3p9643l = function() { azHtmlLoad('adzerk2', adzerk2_html_n04rr5wu1uvcd1aa); }; setTimeout(function() { azLoad('adzerk2', adzerk2_func_9mbanaz3l3p9643l) }, 100);var adzerk2_inline_jywz51229c0i9nqn = 'azInitExtension("voting", "adzerk2", 414, 8277, 45, 13039, 8211);';var adzerk2_func_rcui7ows3063420r = function() { azScriptInlineLoad('adzerk2', adzerk2_inline_jywz51229c0i9nqn); }; setTimeout(function() { azLoad('adzerk2', adzerk2_func_rcui7ows3063420r) }, 100);var adzerk3_html_ive2vwtxs7ub2twy = '<a href="http://engine.adzerk.net/redirect/0/5923/2444/8277/c055c35d63604468b2f4b916c9bb4b5d/44/1178/8809/634956337721182660/?keywords=mysql%2cmongodb%2cnormalization%2cdatabase-schema" rel="nofollow" target="_blank" title=""><img src="http://static.adzerk.net/Advertisers/46a9844d6e504212a85bc72ddd7dd829.png" title="" alt="" border="0" height="90" width="728" /></a><img width="0" height="0" src="http://engine.adzerk.net/v/v.gif?i=eyJVc2VyIjpudWxsLCJDYXRlZ29yaWVzIjpbXSwiQ3JlYXRlZE9uIjoiXC9EYXRlKDEzNjAwMzY5NzIwOTcpXC8iLCJJZCI6IjYyMGYyM2YxLWQ3NzctNDZhNC1hZTg0LTdjZjhlMTg2NDU0YiIsIlJlbW90ZUlQIjpudWxsLCJVc2VyQWdlbnQiOm51bGwsIlJlZmVycmVyVXJsIjpudWxsLCJVcmwiOm51bGwsIkNyZWF0aXZlSWQiOjU5MjMsIlJTU0tleSI6bnVsbCwiQWRUeXBlSWQiOjQsIlNpdGVJZCI6ODI3NywiQ2hhbm5lbElkIjoxMTc4LCJQcmlvcml0eUlkIjoxNTY4LCJOZXR3b3JrSWQiOjIyLCJab25lSWQiOjQ0LCJMb2NhdGlvbiI6bnVsbCwiQ2FtcGFpZ25JZCI6ODQ3LCJQYXNzSWQiOjI0NDQsIkJyYW5kSWQiOjQxNCwiRmlyc3RDaGFubmVsSWQiOjExNzgsIkltcHJlc3Npb25Db3VudCI6MSwiVXNlcktleSI6bnVsbCwiS2V5d29yZHMiOiJteXNxbCxtb25nb2RiLG5vcm1hbGl6YXRpb24sZGF0YWJhc2Utc2NoZW1hIiwiRGVsaXZlcnlNb2RlIjoxLCJSZXZlbnVlIjowLCJJc1RyYWNraW5nQ29va2llRXZlbnRzIjpmYWxzZSwiUGhhbnRvbVBhc3NJZCI6MCwiUGhhbnRvbUNyZWF0aXZlUGFzc0lkIjowLCJDcmVhdGl2ZVBhc3NJZCI6ODgwOSwiSXNWYWxpZFVBIjpmYWxzZSwiSXNOb1RyYWNrIjpmYWxzZSwiTWF0Y2hpbmdLZXl3b3JkcyI6bnVsbH01"/>';var adzerk3_func_x2teg07wl9rftc7f = function() { azHtmlLoad('adzerk3', adzerk3_html_ive2vwtxs7ub2twy); }; setTimeout(function() { azLoad('adzerk3', adzerk3_func_x2teg07wl9rftc7f) }, 100);var adzerk3_inline_8dz7kif2vdqz7sr7 = 'azInitExtension("voting", "adzerk3", 414, 8277, 44, 8809, 5923);';var adzerk3_func_66297zx23knxtp8v = function() { azScriptInlineLoad('adzerk3', adzerk3_inline_8dz7kif2vdqz7sr7); }; setTimeout(function() { azLoad('adzerk3', adzerk3_func_66297zx23knxtp8v) }, 100);azScriptExtensionLoad('http://static.adzerk.net/Extensions/ados-voting.js');cssLinkLoad('http://static.adzerk.net/Extensions/ados-voting.css');