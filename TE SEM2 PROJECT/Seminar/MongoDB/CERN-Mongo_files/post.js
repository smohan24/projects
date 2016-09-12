// bbCode control by
// subBlue design
// www.subBlue.com
var imageTag = false;
var theSelection = false;
var pollOptionCount = -1;

var clientPC = navigator.userAgent.toLowerCase(); // Get client info
var clientVer = parseInt(navigator.appVersion); // Get browser version

var is_ie = ((clientPC.indexOf("msie") != -1) && (clientPC.indexOf("opera") == -1));
var is_nav  = ((clientPC.indexOf('mozilla')!=-1) && (clientPC.indexOf('spoofer')==-1)
	&& (clientPC.indexOf('compatible') == -1) && (clientPC.indexOf('opera')==-1)
	&& (clientPC.indexOf('webtv')==-1) && (clientPC.indexOf('hotjava')==-1));

var is_win   = ((clientPC.indexOf("win")!=-1) || (clientPC.indexOf("16bit") != -1));
var is_mac    = (clientPC.indexOf("mac")!=-1);

// Define the bbCode tags
bbcode = new Array();
bbtags = new Array('[b]','[/b]','[i]','[/i]','[u]','[/u]','[quote]','[/quote]','[code]','[/code]','[list]','[/list]',
	'[img]','[/img]','[url]','[/url]','[google]','[/google]','[youtube]','[/youtube]','[flash]','[/flash]',
	'[wmv]','[/wmv]','[tt]','[/tt]','[javadoc]','[/javadoc]','[strike]','[/strike]','[wikipedia]','[/wikipedia]');
imageTag = false;

var openBBtags = new Array();

function tmOpenTag(eltag) {
   if (bbtags[eltag+1] != '') {
      openBBtags[openBBtags.length] = eltag;
      //Add '*' in the button's text:
      eval('document.post.addbbcode'+eltag+'.value += "*"');
   }
}

function tmQuitTag(eltag) {
   for (i = 0; i < openBBtags.length; i++) {
      if (openBBtags[i] == eltag) {
         openBBtags.splice(i, 1);
         //Remove '*' from the button's text:
         buttext = eval('document.post.addbbcode' + eltag + '.value');
         eval('document.post.addbbcode' + eltag + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
      }
   }
}

function tmIsTagOpen(eltag) {
   var tag = 0;
   for (i = 0; i < openBBtags.length; i++) {
      if (openBBtags[i] == eltag) { tag++; }
   }
   if (tag > 0) { return true;   } else { return false; }
}

function tmCloseTags() {
   var count = openBBtags.length;
   for (n = 0; n < count; n++) { bbstyle(openBBtags[openBBtags.length - 1]); }
}

// Shows the help messages in the helpline window
function helpline(help) {
   document.post.helpbox.value = eval(help + "_help");
}


// Replacement for arrayname.length property
function getarraysize(thearray) {
	for (i = 0; i < thearray.length; i++) {
		if ((thearray[i] == "undefined") || (thearray[i] == "") || (thearray[i] == null))
			return i;
		}
	return thearray.length;
}

// Replacement for arrayname.push(value) not implemented in IE until version 5.5
// Appends element to the array
function arraypush(thearray,value) {
	thearray[ getarraysize(thearray) ] = value;
}

// Replacement for arrayname.pop() not implemented in IE until version 5.5
// Removes and returns the last element of an array
function arraypop(thearray) {
	thearraysize = getarraysize(thearray);
	retval = thearray[thearraysize - 1];
	delete thearray[thearraysize - 1];
	return retval;
}

function bbplace(text) {
    var txtarea = document.post.message;
    if (txtarea.createTextRange && txtarea.caretPos) {
        var caretPos = txtarea.caretPos;
        caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? caretPos.text + text + ' ' : caretPos.text + text;
        txtarea.focus();
    } else if (txtarea.selectionStart || txtarea.selectionStart == '0') {
        var startPos = txtarea.selectionStart;
        var endPos = txtarea.selectionEnd;
        txtarea.value = txtarea.value.substring(0, startPos)
                      + text
                      + txtarea.value.substring(endPos, txtarea.value.length);
        txtarea.focus();
        txtarea.selectionStart = startPos + text.length;
        txtarea.selectionEnd = startPos + text.length;
    } else {
        txtarea.value  += text;
        txtarea.focus();
    }
}

function emoticon(text) {
   text = ' ' + text;
   bbfontstyle(text,'');
   return;
}

function bbfontstyle(bbopen,bbclose) {
var txtarea = document.post.message;

//IE
if (document.selection)
  { txtarea.focus();
    sel = document.selection.createRange();
    sel.text = bbopen+sel.text+bbclose;
  }
//Mozilla-Netscape
else if (txtarea.selectionStart || txtarea.selectionStart == '0') {
   var startPos = txtarea.selectionStart;
   var endPos = txtarea.selectionEnd;
   var cursorPos = endPos;
   var scrollTop = txtarea.scrollTop;

   if (startPos != endPos) {
      txtarea.value = txtarea.value.substring(0, startPos)
                 + bbopen
                 + txtarea.value.substring(startPos, endPos)
                 + bbclose
                 + txtarea.value.substring(endPos, txtarea.value.length);
      cursorPos += bbopen.length + bbclose.length;
   }
   else {

         txtarea.value = txtarea.value.substring(0, startPos)
                  + bbopen+' '+bbclose
                  + txtarea.value.substring(endPos, txtarea.value.length);
      cursorPos = startPos + bbopen.length+bbclose.length+1;
   }
   txtarea.focus();
   txtarea.selectionStart = cursorPos;
   txtarea.selectionEnd = cursorPos;
   txtarea.scrollTop = scrollTop;
}
 else {   txtarea.value += bbopen+' '+bbclose;
   txtarea.focus();
    }
}

// modified function from UBB
// eltag defined in post_form.html
function getPromptUbbData(textToWrap, eltag){

	// bold
	if ( eltag == 0 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "b", 
			"Enter the text that you wish to make bold."); 		
	} else if ( eltag == 2 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "i", 
			"Enter the text that you wish to italicize."); 		
	} else if ( eltag == 4 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "u", 
			"Enter the text that you wish to underline."); 		
	} else if ( eltag == 24 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "tt", 
			"Enter the text that you wish to monospace."); 		
	} else if ( eltag == 28 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "strike", 
			"Enter the text that you wish to strike through."); 		
	} else if ( eltag == 6 ) {
		return getPromptUbbDataForNoPrompt(textToWrap, "quote"); 		
	} else if ( eltag == 8 ) {
		return createCodeTag(textToWrap);
	} else if ( eltag == 9 ) {
		return getAttributedCodeUbbDataForNoPrompt(textToWrap, "plain"); 		        
	} else if ( eltag == 10 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "list", 
			"Enter the new list item."); 		
	}  else if ( eltag == 12 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "img", 
			"Enter the complete URL for the image you want to display.", "http://"); 		
	} else if ( eltag == 14 ) {
		return getPromptUbbDataForTwoPrompts(textToWrap, "url", 
			"Enter the complete URL for the link you wish to add.", "http://",
			"Now enter the title of the web page you wish to reference.  For instance, if you are linking to the URL for the Java API, you might use the title JavaDocs.",
			"webpage"); 		
	}  else if ( eltag == 16 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "google", 
			"Enter the search text."); 	
	}  else if ( eltag == 18 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "youtube", 
			"Enter the youtube link.");
	}  else if ( eltag == 26 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "javadoc", 
			"Enter the Java class name."); 		
	}  else if ( eltag == 30 ) {
		return getPromptUbbDataForSinglePrompt(textToWrap, "wikipedia", 
			"Enter the page name."); 		
	} 
	// if we get here something went awry 
    // however in case future tags mean we DO get here...
	return "";
}

function createCodeTag(textToWrap){
	   var select = document.getElementById("languageSelect");
	   var language = select.options[select.selectedIndex].value;

	   if(textToWrap.length>0){
	      return "[code=" + language + "]" + textToWrap+"[/code]";
	   }else{
	      return "[code=" + language + "][/code]";
	   }
	}

function getPromptUbbDataForTwoPrompts(textToWrap, tag, promptQuestion1, defaultDisplay1, promptQuestion2, defaultDisplay2) {
	if(textToWrap.length>0){
		return "["+tag+"]"+textToWrap+"[/"+tag+"]";
	}else{
		if ( ! defaultDisplay1 ) {
			defaultDisplay1 = "";
		}
		if ( ! defaultDisplay2 ) {
			defaultDisplay2 = "";
		}
		value1 = prompt(promptQuestion1, defaultDisplay1);
		if(value1==null) { return "" };
		value2 = prompt(promptQuestion2, defaultDisplay2);
		if(value2==null) { return "" };
		return "["+tag+"="+ value1+"]"+value2+"[/"+tag+"]";
	}
}

function getPromptUbbDataForSinglePrompt(textToWrap, tag, promptQuestion, defaultDisplay) {
	if(textToWrap.length>0){
		return "["+tag+"]"+textToWrap+"[/"+tag+"]";
	}else{
		if ( ! defaultDisplay ) {
			defaultDisplay = "";
		}
		value = prompt(promptQuestion, defaultDisplay);
		if(value==null) { return "" };
		return "["+tag+"]"+value+"[/"+tag+"]";
	}
}

function getPromptUbbDataForNoPrompt(textToWrap, tag) {
	if(textToWrap.length>0){
		return "["+tag+"]"+textToWrap+"[/"+tag+"]";
	}else{
		return "["+tag+"]    [/"+tag+"]";
	}
}

function getAttributedCodeUbbDataForNoPrompt(textToWrap, tag) {
	if(textToWrap.length>0){
		return "[code="+tag+"]"+textToWrap+"[/code]";
	}else{
		return "[code="+tag+"]    [/code]";
	}
}

// modified function from UBB
// This function inserts the tag into the right place into the text area.
// If possible the user selected text is selected to tag
function insertText(eltag){
  // if the form name or textarea name change this has to be updated
  var textArea = document.post.message;
  textArea.focus();
  if(typeof document.selection != 'undefined') {
    // IE browser
    // get selection
    var range = document.selection.createRange();
    var insText = range.text;
    insText = getPromptUbbData(insText, eltag);
    if(insText.length>0){
	range.text = insText;
      // adjust caret position
	  range = document.selection.createRange();
	range.moveStart('character', insText);      
	range.select();
    }
}else if(typeof textArea.selectionStart != 'undefined') {
    // gecko based browsers
	var start = textArea.selectionStart;
    var end = textArea.selectionEnd;
    var insText = textArea.value.substring(start, end);
    insText =getPromptUbbData(insText, eltag);
    if(insText.length>0){
	textArea.value = textArea.value.substr(0, start) + insText + textArea.value.substr(end);
      // adjust caret position as described above
	  var pos;
	pos = start + insText.length;
	textArea.selectionStart = pos;
	textArea.selectionEnd = pos;
    }
} else {
     // Opera or something not supported anyway...
	 var insText = getPromptUbbData(insText, eltag);
     if(insText.length>0){
	 textArea.value += insText;  
     }     
 }
  textArea.focus()
}

function bbstyle(eltag) {
   var txtarea = document.post.message;

   if (eltag == -1) {
   	 tmCloseTags(); 
   	 return; 
   }

   // UBB style with prompting for type 		
   insertText(eltag);    
}

// Insert at Claret position. Code from
// http://www.faqts.com/knowledge_base/view.phtml/aid/1052/fid/130
function storeCaret(textEl) {
	if (textEl.createTextRange) textEl.caretPos = document.selection.createRange().duplicate();
}

// Depends of jquery.js
function previewMessage()
{
	var f = document.post;

	var p = {
		text:f.message.value,
		subject:f.subject.value,
		html:!f.disable_html.checked,
		bbcode:!f.disable_bbcode.checked,
		smilies:!f.disable_smilies.checked
	};
	
	// hide error message if it exists
	var errorMessageSpan = document.getElementById("errorMessage");
	if ( errorMessageSpan ) {
		errorMessageSpan.style.display = 'none';
	}

	$.ajax({
		type:"POST",
		url:CONTEXTPATH + "/jforum?module=ajax&action=previewPost",
		data:p,
		dataType:"script",
		global:false
	});
}

function incrementPollOptionCount()
{
	pollOptionCount++;
	document.getElementById("pollOptionCount").value = pollOptionCount;
}

function initPollOptionCount()
{
	if (pollOptionCount == -1) {
		var countField = document.getElementById("pollOptionCount");

		if (countField != null) {
			pollOptionCount = parseInt(countField.value);
		}
		else {
			pollOptionCount = 1;
		}
	}
}

function deletePollOption(button)
{
	initPollOptionCount();

	var node = button.parentNode;
	while (node != null) {
		if (node.id == "pollOption") {
			node.parentNode.removeChild(node);
			break;
		}

		node = node.parentNode;
	}
}

function addPollOption()
{
	initPollOptionCount();
	incrementPollOptionCount();

	var addOption = document.getElementById("pollOptionWithAdd");
	var deleteOption = document.getElementById("pollOptionWithDelete");
	var newOption = deleteOption.cloneNode(true);

	if (is_nav) {
		newOption.style.display = "table-row";
	}
	else {
		newOption.style.display = "block";
	}

	newOption.id = "pollOption";

	var newTextField = newOption.getElementsByTagName("input")[0];
	var addTextField = newOption.getElementsByTagName("input")[1];

	//copy the active text data to the inserted option
	newTextField.id = "pollOption" + pollOptionCount;
	newTextField.name = "poll_option_" + pollOptionCount;
	newTextField.value = "";

	//clear out the last text field and increment the id
	addTextField.id = "pollOption" + pollOptionCount;
	addTextField.name = "poll_option_" + pollOptionCount;

	addOption.parentNode.insertBefore(newOption, addOption);
	addTextField.focus();
}


function checkForm() {

   formErrors = false;

   if (document.post.message.value.length < 2) {
      formErrors = "You must enter a message when posting.";
   }

   if (formErrors) {
      alert(formErrors);
      return false;
   } else {
      bbstyle(-1);
      return true;
   }
}

function activateTab(name, currentLi)
{
	$("#tabs10 > ul > li").each(function() {
		var targetName = $(this).attr("target");
		var target = $("#" + targetName);

		if (target.length && name != targetName) {
			target.hide();
			$(this).removeClass("current");
		}
	});


	$("#" + name).show();
	$(currentLi).parent().addClass("current");
}

function limitURLSize()
{
	$(".snap_shots").each(function () {
		var value = $(this).text();

		if (value.length > 80) {
			$(this).text(value.substring(0, 50) + "..." + value.substring(value.length - 30));
		}
	});
}
