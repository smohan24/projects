
<html>
<head>
<title> Welcome to Pizza Mania-Online Ordering of Pizzas</title>

<style>
	body 
	{
		background-color:#FFFF99;
	}
	.normal 
	{
		border:4px solid #FFFF99;
	}
	.sel	
	{
		border:4px solid #ff0000;
	}
	h1
	{
		color:Red;
		text-align:center;
		font-family:Lucida Console;
		font-size:250%;	
	}
</style>

<script type="text/javascript">
	var lastsel = 0;
	function SelectImage(id) 
	{
	if (lastsel > 0) 
	{
		document.getElementById(lastsel).className = "normal";
	}
	document.getElementById(id).className = "sel";
	var srcnam = document.getElementById(id).src;
	document.getElementById(0).src = srcnam;
	lastsel = id;
	}
	function LoadTrigger()
	{
		SelectImage(1);
	}
	window.onload = LoadTrigger;
</script>

<script type="text/javascript">
//set the time delay,imgsize,arrsize.
var delay=20;
var imgsize=10;
var arrsize=5;
var timeon;
var whoc = new Array(arrsize);
var wid;
var hei;
var i=0;
function zoom_out(p,q,which)
{  
   if(which.width <= p)
      which.width += imgsize;
   if(which.height <= q)
      which.height += imgsize;
   if(which.width <= p)
   {
      var tmp=which.id;
      timeon=eval("setTimeout('zoom_out("+p+","+q+","+tmp+")', delay)");
   }
   if(which.width > p)   
   {
      zoom_check(which.id);
      clearTimeout(timeon);
   }
}
function zoom_check(xx)
{
    for(var x=0; x<(whoc.length);x++)
    {
        if(whoc[x] != null && whoc[x] != xx)
        {
	    var ff = document.getElementById(whoc[x]);
            ff.width=wid;
	    ff.height=hei;
        }
    }
}
function zoom_in(r,s,asd)
{
  if(i<(whoc.length-1))
	i++;
  else
	i=0;
  whoc[i] = asd.id;
  if(asd.width >= r)
      asd.width -= imgsize;
  if(asd.height >= s)
      asd.height -= imgsize; 
  asd.width=r;
  asd.height=s;
  wid=asd.width;
  hei=asd.height;
}
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
var sdss = document.getElementById("dumdiv");
if(sdss == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>

</head>

<body background="bkw.jpg" width="1920" height="1040" vlink="red">

<p align="right"><script language="vbscript">Document.write Time()&" on "&Day(Now)&" "&MonthName(Month(Now),False)&" "&""&Year(Now)</script><br>
<div align=center>
<img align=center src="logo.jpg" width="150" height="150">
</div>
<h1>Pizza Mania</h1>

<div align=center>
</div>
<table border=0 align=center>
	<tr><td valign=top>
	<td width=15> </td>
	<img id=0 src="" class="normal" width=400 height=300>
	</tr><br>
<tr>
<td>	<a href="finalhp.php"> <img src="back.png" border="0" width=20 height=20> </a> </td>
<td>	<img id=1 class="normal" src="14.jpg" width=110 alt="Barbeque Chicken" onmousemove="SelectImage(1)"></td>
<td>	<img id=2 class="normal" src="15.jpg" width=110 alt="Spicy Chicken" onmousemove="SelectImage(2)"></td>
<td>	<img id=3 class="normal" src="17.jpg" width=110 alt="Keema Do Pyaaza" onmousemove="SelectImage(3)"></td>
<td>	<a href="finalhp2.php"> <img src="forward.png" border="0" width=20 height=20> </a> </td>
</tr>

</table>
</div>

<br><br><br><br><br><br><br>

<table align=center cellspacing=1 cellpadding=3 height=100% width=90%><tr>

<td align=center width=50 height=65 style='cursor:pointer;'>
<a href="finalhp1.php"><img border="0" id="myPicture1" src="home.jpg" width="70" height="80" onMouseover="zoom_out(100,105,this)" onMouseout="zoom_in(70,70,this)"></a></td>
<td width=5></td>

<td align=center width=50 height=65 style='cursor:pointer;'>
<a href="abtus.php"><img border="0" id="myPicture2" src="abtus2.jpg" width="70" height="80" onMouseover="zoom_out(105,116,this)" onMouseout="zoom_in(70,70,this)"></a></td>
<td width=5></td>

<td align=center width=50 height=65 style='cursor:pointer;'>
<a href="veg.php"><img border="0" id="myPicture3" src="menu.jpg" width="70" height="80" onMouseover="zoom_out(105,116,this)" onMouseout="zoom_in(70,70,this)"></a></td>
<td width=5></td>

<td align=center width=50 height=65 style='cursor:pointer;'>
<a href="store_loc.php"><img border="0" id="myPicture4" src="location.jpg" width="70" height="80" onMouseover="zoom_out(105,116,this)" onMouseout="zoom_in(70,70,this)"></a></td>
<td width=5></td>

<td align=center width=50 height=65 style='cursor:pointer;'>
<a href="callus.php"><img border="0" id="myPicture5" src="contact1.jpg" width="70" height="80" onMouseover="zoom_out(105,116,this)" onMouseout="zoom_in(70,70,this)"></a></td>
</tr>
<tr><td colspan=7>

<div align=center style="font-size: 10px;color: #dadada;" id="dumdiv">
<a href="http://www.google.com" id="dum" style="text-decoration:none;color: #dadada;">� google.com</a>
</div>

<script language="javascript">document.onload = ctck();</script>
</td></tr>
</table>

<div class="copyright">All rights reserved. Copyright &copy; Jubilant FoodWorks Ltd. 
| <a href="http://www.dominos.co.in/disclaimer">Disclaimer</a> 
| <a href="http://www.dominos.co.in/privacy-policy">Privacy Policy</a></div>
        
</div>
</body>

</html>