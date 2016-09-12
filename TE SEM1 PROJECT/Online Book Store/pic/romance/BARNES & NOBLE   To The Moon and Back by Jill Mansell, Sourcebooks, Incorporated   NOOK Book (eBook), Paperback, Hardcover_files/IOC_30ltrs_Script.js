function enter_check(e)
{
	var whichCode = (window.Event) ? e.which : e.keyCode;	
	if (whichCode==13)
	{
	 if(validate(1))
	 return true;
	 return false;
	}
}
function special_validation(incomingString, defaultValue)
{
	if(trimSpace(incomingString).length == 0 || incomingString.search(/[^a-zA-Z0-9.,'&-/ ]/g) != -1 || incomingString==defaultValue)
		return false;
	else
		return true;
}
function limitlength(obj, length)
{
	var maxlength=length;
	if (obj.value.length>maxlength)
		obj.value=obj.value.substring(0, maxlength);
}
function setlength(obj, length)
{
	if(navigator.appName=="Netscape")
	{
		var maxlength=length;
		if (obj.value.length>maxlength);
		obj.value=obj.value.substring(0, maxlength);
	}
}
function trimSpace(x)
{
	var emptySpace = / /g;
	var trimAfter = x.replace(emptySpace,"");
	return(trimAfter);
}

function textValidate(incomingString, defaultValue)
{
	if(trimSpace(incomingString).length == 0 || incomingString.search(/[^a-zA-Z ]/g) != -1 || incomingString==defaultValue)
		return false;
	else
		return true;
}
function nameValidate(incomingString, defaultValue)
{
	if(trimSpace(incomingString).length == 0 || incomingString.search(/[^a-zA-Z ]/g) != -1 || incomingString==defaultValue)
		return false;
	else
		return true;
}
function numberValidate(incomingString, defaultValue)
{
	if(trimSpace(incomingString).length == 0 || incomingString.search(/[^0-9]/g) != -1)
	{
		return false;
	}
	else
		return true;	
}
function alphaValidatePAN(incomingString, defaultValue)
{
	if(trimSpace(incomingString).length == 0 || incomingString.search(/[^a-zA-Z]/g) != -1 || incomingString==defaultValue || parseInt(incomingString, 10) <= 0 )
		return false;
	else
		return true;	
}
function switchText(object, baseText, eventName)
 {
	if (eventName == "blur")
	{
		if (object.value == "")
		{
			object.value = baseText;
		}
	 }
	 else
	 {
		if (object.value == baseText)
		{
			object.value = "";
		 }
	 }
}
function validate(track, focusvalue)
{
		
	var DobFailed = false;
    if((document.getElementById('FirstName').value=='First Name') || trimSpace(document.getElementById('FirstName').value)=="")
	{
		alert("Please enter your First Name")
		document.getElementById('FirstName').focus()
		document.getElementById('FirstName').select()
		return false
	}
	if(!nameValidate(document.getElementById('FirstName').value,''))
	{
		alert("Please enter your First Name (Alphabets only)")
		document.getElementById('FirstName').focus()
		document.getElementById('FirstName').select()
		return false
	}
	
	if((document.getElementById('LastName').value=='Last Name') || trimSpace(document.getElementById('LastName').value)=="")
	{
		alert("Please enter your Last Name")
		document.getElementById('LastName').focus()
		document.getElementById('LastName').select()
		return false
	}
	if(!nameValidate(document.getElementById('LastName').value,''))
	{
		alert("Please enter your Last Name (Alphabets only)")
		document.getElementById('LastName').focus()
		document.getElementById('LastName').select()
		return false
	}
		
	if(trimSpace(document.getElementById('mobileno').value)=='')
	{
		    alert("Please enter your Mobile Number");
			document.getElementById('mobileno').focus();
			document.getElementById('mobileno').select();
			return false;
	}
	if(!numberValidate(document.getElementById('mobileno').value,''))
	{
		alert("Please enter a valid Mobile Number");
		document.getElementById('mobileno').focus();
		document.getElementById('mobileno').select();
		return false;
	}
	if(document.getElementById('mobileno').value.length!=10 || (document.getElementById('mobileno').value.charAt(0)!=9 && document.getElementById('mobileno').value.charAt(0)!=8 && document.getElementById('mobileno').value.charAt(0)!=7))
	{
		alert("Please enter a valid Mobile Number");
		document.getElementById('mobileno').focus();
		document.getElementById('mobileno').select();
		return false;
	}
	if(document.getElementById('dob_dd').selectedIndex<=0)
	{
		alert("Please select your Date of Birth")
		document.getElementById('dob_dd').focus()
		return false
	}	
	
	if(document.getElementById('dob_mm').selectedIndex<=0)
	{
		alert("Please select your Month of Birth")
		document.getElementById('dob_mm').focus()
		return false
	}	
	
	if(document.getElementById('dob_yy').selectedIndex<=0)
	{
		alert("Please select your Year of Birth")
		document.getElementById('dob_yy').focus()
		return false
	 }	 
	 if(document.getElementById('dob_yy').selectedIndex!=0 && document.getElementById('dob_mm').selectedIndex!=0 && document.getElementById('dob_dd').selectedIndex!=0)
	{
		date=document.getElementById('dob_dd').options[document.getElementById('dob_dd').selectedIndex].text;
		month=document.getElementById('dob_mm').options[document.getElementById('dob_mm').selectedIndex].value;
		year=document.getElementById('dob_yy').options[document.getElementById('dob_yy').selectedIndex].text;

		var currentdate = new Date()

		if(year % 4 == 0)
		{
			if(month ==02 && date >29)
			{
			  alert("Please select a valid Date of Birth ")
				document.getElementById('dob_dd').focus()
				return false
			}
		}
		else if(month ==02 && date > 28)
		{
		  	alert("Please select a valid Date of Birth ")
			document.getElementById('dob_dd').focus()
			return false
		}
		if(month ==04 || month ==06 || month ==09 || month ==11)
		{
			if(date >30)
			{
			  alert("Please select a valid Date of Birth ")
			  document.getElementById('dob_dd').focus()
			   return false
			}
		}

		var curday = currentdate.getDate();
		var curmon = currentdate.getMonth() + 1;
		var curyear =currentdate.getFullYear();
		var calday = date;
		var calmon = month;
		var calyear = year;
		
		if(curday == "" || curmon=="" || curyear=="" || calday=="" || calmon=="" || calyear=="")
		{
			alert("please fill all the values and click go -");
		}	
		else
		{
			var curd = new Date(curyear,curmon-1,curday);
			var cald = new Date(calyear,calmon-1,calday);
			var diff =  Date.UTC(curyear,curmon,curday,0,0,0)
			 - Date.UTC(calyear,calmon,calday,0,0,0);
			
			var dife = datediff(curd,cald);
			//alert(curd+"--"+cald);
			var ageCur = dife[0];
			var ageMonth = dife[1];
			var ageDay = dife[2];
			
			if(ageCur < 25)
			{
				DobFailed = true;				
			}
			
			if(ageCur > 65)
			{
				DobFailed = true;				
			}
			if(ageCur == 65)
			{
				if((ageMonth != 0) || (ageDay != 0))
				{
				}
			}
		}
	}
	
	var emailexp = /^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9\-]+)\.(([a-zA-Z]{2,}|[0-9]{2,})|([a-zA-Z]{2,}\.[a-zA-Z]{2,})|([a-zA-Z]{2,}\.[a-zA-Z]{2,}\.[a-zA-Z]{2,}))$/;
	if(trimSpace(document.getElementById('email').value)==''||document.getElementById('email').value=='E-mail Id')
	{
		    alert("Please enter your E-mail Id");
			document.getElementById('email').focus();
			document.getElementById('email').select();
			return false;
	}
	if(emailexp.test(document.getElementById('email').value)==false) 
	{
		alert("Please enter a valid E-mail Id");
		document.getElementById('email').focus();
		document.getElementById('email').select();
		return false;
	}

	if(document.getElementById('city').selectedIndex==0)
	{
		alert("Please select your City")
		document.getElementById('city').focus()
		return false
	}
	if(document.getElementById('Profession').selectedIndex==0)
	{
		alert("Please select your Profession")
		document.getElementById('Profession').focus()
		return false
	}
	if(trimSpace(document.getElementById('gross_annual_income').value)=='')
	{
		    alert("Please enter your Annual Income");
			document.getElementById('gross_annual_income').focus();
			document.getElementById('gross_annual_income').select();
			return false;
	}
	if(!numberValidate(document.getElementById('gross_annual_income').value,''))
	{
		alert("Please enter a valid Annual Income");
		document.getElementById('gross_annual_income').focus();
		document.getElementById('gross_annual_income').select();
		return false;
	}
	if((document.getElementById('gross_annual_income').value.length == 0) || (document.getElementById('gross_annual_income').value.length < 4))
	{
		alert("Please enter a valid Annual Income");
		document.getElementById('gross_annual_income').focus();
		document.getElementById('gross_annual_income').select();
		return false;
	}

	if(document.getElementById('gross_annual_income').value < 375000)
	{
		  alert("Annual Income to be greater than 375000");
			document.getElementById('gross_annual_income').focus();
			document.getElementById('gross_annual_income').select();
			return false;
	}

	if(trimSpace(document.getElementById('Company_name').value)=='')
	{
		    alert("Please enter your Company name");
			document.getElementById('Company_name').focus();
			document.getElementById('Company_name').select();
			return false;
	}
	if((document.getElementById('Company_name').value.length < 3) && (document.getElementById('Company_name').value.length > 200))
	{
	alert("Please enter Valid Company Name")
	document.getElementById('Company_name').focus()
	document.getElementById('Company_name').select()
	return false
	}
	if(!special_validation(document.getElementById('Company_name').value,''))
	{
	alert("Please enter Valid Company Name")
	document.getElementById('Company_name').focus()
	document.getElementById('Company_name').select()
	return false
	}
	var professionVal = document.getElementById('Profession').options[document.getElementById('Profession').selectedIndex].value;
	
	if(((professionVal == 'Salaried') && (eval(document.getElementById('gross_annual_income').value) < 300000)) || ((professionVal == 'Self_employed') &&(eval(document.getElementById('gross_annual_income').value) < 500000)) ||(document.getElementById('city').value == 'Others') || (DobFailed == true))
    {
		//window.open('https://www.online.citibank.co.in/portal/newgen/cards/tab/stp-thank-you-prescreening.htm');
		document.frmshioc.action=track + 'https://www.online.citibank.co.in/portal/newgen/cards/tab/stp-thank-you-prescreening.htm';
		document.frmshioc.submit();
	}
	
	else if(((professionVal == 'Salaried') && (eval(document.getElementById('gross_annual_income').value) < 360000) && (eval(document.getElementById('gross_annual_income').value) >= 300000)) || ((professionVal == 'Self_employed') &&(eval(document.getElementById('gross_annual_income').value) >= 500000)) )
    {
		//window.open('https://www.online.citibank.co.in/portal/newgen/cards/tab/shortlead-thankyou.htm');
		document.frmshioc.action=track + 'https://asia.citi.com/india/Shortlead/scriptIOC/SaveExcel_Banner.asp';
		document.frmshioc.submit();
	}
	else if((professionVal == 'Salaried') &&(eval(document.getElementById('gross_annual_income').value) >= 360000))
    {
		//window.open('https://asia.citi.com/india/Shortlead/scriptIOC/SaveExcel_Banner.asp');
		document.frmshioc.action=track + 'https://asia.citi.com/india/Shortlead/scriptIOC/SaveExcel_Banner.asp';
		document.frmshioc.submit();
	}
	
return false;
}


function isNum(arg)
{
	var args = arg;

	if (args == "" || args == null || args.length == 0)
	{
		return false;
	}

	args = args.toString();

	for (var i = 0;  i<args.length;  i++)
	{
		if ((args.substring(i,i+1) < "0" || args.substring(i, i+1) > "9") && args.substring(i, i+1) != ".")
		{
		return false;
		}
	}
	return true;
}

function checkday(aa)
{
	var val = aa.value;
	var valc = val.substring(0,1);

	if(val.length>0 && val.length<3)
	{
		if(!isNum(val) || val == 0)
		{
			aa.value="";
		}
		else if( val < 1 || val > 31)
		{
			aa.value=valc;
		}
	}
	else if(val.length>2)
	{
		val = val.substring(0, 2);
		aa.value=val;
	}
}

function checkmon(aa)
{
	var val = aa.value;
	var valc = val.substring(0,1);

	if(val.length>0 && val.length<3)
	{
		if(!isNum(val) || val == 0)
		{
			aa.value="";
		}
		else if(val < 1 || val > 12)
		{
			aa.value=valc;
		}
	}
	else if(val.length>2)
	{
		val = val.substring(0, 2);
		aa.value=val;
	}
}

function checkyear(aa)
{
	var val = aa.value;
	var valc = val.substring(0,(val.length-1));

	if(val.length>0 && val.length<7)
	{
		if(!isNum(val) || val == 0)
		{
			aa.value=valc;
		}
		else if(val < 1 || val>275759)
		{
			aa.value="";
		}
	}
	else if(val.length>4)
	{
		aa.value=valc;
	}
}

function checkleapyear(datea)
{
	if(datea.getYear()%4 == 0)
	{
		if(datea.getYear()% 10 != 0)
		{
			return true;
		}
		else
		{
			if(datea.getYear()% 400 == 0)
				return true;
			else
				return false;
		}
	}
return false;
}


function DaysInMonth(Y, M) {
    with (new Date(Y, M, 1, 12)) {
        setDate(0);
        return getDate();
    }
}


function datediff(date1, date2) {
	
    var y1 = date1.getFullYear(), m1 = date1.getMonth(), d1 = date1.getDate(),
	 y2 = date2.getFullYear(), m2 = date2.getMonth(), d2 = date2.getDate();

    if (d1 < d2) {
        m1--;
        d1 += DaysInMonth(y2, m2);
    }
    if (m1 < m2) {
        y1--;
        m1 += 12;
    }
    return [y1 - y2, m1 - m2, d1 - d2];
}