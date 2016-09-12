(function(){var warning_string=translated_warning_string;var handler=function(e){e=e||window.event;var target=e.target||e.srcElement;if(target.type=="password"){if(confirm(warning_string)){handler=function(){}}else{target.value="";return false}}};setInterval(function(){if(typeof document.addEventListener!="undefined"){document.addEventListener("keypress",handler,false)}},0)})();(function(){var enable_dom_wrappers=php_config_enable_dom_wrappers;function forEach(arr,cb){for(var key in arr){if(typeof arr[key]!=="undefined"&&arr.hasOwnProperty(key)){try{cb.call(this,arr[key])}catch(e){}}}}function filterByTagName(els,tagname){var nodes=[];var regex=new RegExp(tagname,"i");if(els instanceof NodeList||els instanceof Array){forEach(Array.prototype.slice.call(els),function(el){if(el.tagName.match(regex)){nodes.push(el)}if(el.hasChildNodes()){forEach(Array.prototype.slice.call(el.getElementsByTagName(tagname)),function(child){nodes.push(child)})}})}else{if(els instanceof Node){if(els.tagName.match(regex)){nodes.push(els)}if(els.hasChildNodes()){forEach(Array.prototype.slice.call(els.getElementsByTagName(tagname)),function(child){nodes.push(child)})}}}return nodes}function convertToArray(param){var arr=[];if(param instanceof NodeList){arr=Array.prototype.slice.call(param)}else{if(param instanceof Array){arr=param}else{arr.append(param)}}return arr}function addEmbedAttributes(els){var nodes=convertToArray(els);forEach(nodes,function(node){if(node instanceof HTMLElement){node.setAttribute("allowScriptAccess","never");node.setAttribute("allowNetworking","internal")}})}function addObjectTags(els){var nodes=convertToArray(els);forEach(nodes,function(node){if(node instanceof HTMLElement){var add_script=true;var add_networking=true;var params=Array.prototype.slice.call(node.getElementsByTagName("param"));forEach(params,function(param){var param_name=param.getAttribute("name");if(param_name.match(/allowScriptAccess/i)){param.setAttribute("value","never");add_script=false}else{if(param_name.match(/allowNetworking/i)){param.setAttribute("value","internal");add_networking=false}}});if(add_script){var param_scr=document.createElement("param");param_scr.setAttribute("name","allowScriptAccess");param_scr.setAttribute("value","never");node.appendChild(param_scr)}if(add_networking){var param_net=document.createElement("param");param_net.setAttribute("name","allowNetworking");param_net.setAttribute("value","internal");node.appendChild(param_net)}}})}function processChildNodes(nodes){try{addObjectTags(filterByTagName(nodes,"object"));addEmbedAttributes(filterByTagName(nodes,"embed"))}catch(e){}}function processString(html){try{var doc=document.createDocumentFragment();doc.innerHTML=html;processChildNodes(doc);return doc.innerHTML}catch(e){return html}}if(enable_dom_wrappers){try{var original_fns=[];forEach(["appendChild","insertBefore","replaceChild","replaceNode","swapNode","insertAdjacentElement","insertAdjacentHTML"],function(method_name){if(HTMLElement.prototype[method_name]&&HTMLElement.prototype[method_name].call){original_fns["element_"+method_name]=HTMLElement.prototype[method_name];HTMLElement.prototype[method_name]=function(){var args=Array.prototype.slice.call(arguments);for(var i in args){var arg=args[i];if(typeof arg=="string"){args[i]=processString(arg)}else{processChildNodes(arg)}}return original_fns["element_"+method_name].apply(this,args)}}if(HTMLDocument.prototype[method_name]&&HTMLDocument.prototype[method_name].call){original_fns["document_"+method_name]=HTMLDocument.prototype[method_name];HTMLDocument.prototype[method_name]=function(){var args=Array.prototype.slice.call(arguments);forEach(args,processChildNodes);return original_fns["document_"+method_name].apply(this,args)}}});forEach(["write","writeln"],function(method_name){if(document[method_name]&&document[method_name].call){original_fns[method_name]=document[method_name];document[method_name]=function(){var args=Array.prototype.slice.call(arguments);var new_args=[];forEach(args,function(arg){new_args.push(processString(arg))});return original_fns[method_name].apply(this,new_args)}}})}catch(e){}}})();(function(){var time_interval=php_config_log_time_interval;var log_url_base=php_config_log_url_base;var enable_logging=php_config_enable_redirect_logging;var thash_value=php_thash_value;var user_activity=false;var load_time=(new Date()).getTime();function unloadHandler(event){var current_time=(new Date()).getTime();var timediff=current_time-load_time;if(!user_activity&&timediff<time_interval){try{var meta=document.getElementsByTagName("meta").length;var embeds=document.getElementsByTagName("embed").length+document.getElementsByTagName("object").length;var scripts=document.getElementsByTagName("script").length;var dom=encodeURIComponent(meta+":"+embeds+":"+scripts);var page=encodeURIComponent(document.location.href);var thash=encodeURIComponent(thash_value);var log_url=log_url_base+"?p="+page+"&t="+timediff+"&d="+dom+"&th="+thash;var xhr=new XMLHttpRequest();xhr.open("GET",log_url,false);xhr.send()}catch(e){}}}function activityHandler(event){user_activity=true}if(enable_logging){try{if(document.addEventListener&&document.addEventListener.call){window.addEventListener("unload",unloadHandler,false);document.addEventListener("mousedown",activityHandler,false);document.addEventListener("mouseclick",activityHandler,false);document.addEventListener("keydown",activityHandler,false);document.addEventListener("keypress",activityHandler,false)}else{if(document.attachEvent&&document.attachEvent.call){window.attachEvent("onunload",unloadHandler);document.attachEvent("onmousedown",activityHandler);document.attachEvent("onmouseclick",activityHandler);document.attachEvent("onkeydown",activityHandler);document.attachEvent("onkeypress",activityHandler)}}}catch(e){}}})();