
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>

<style type="text/css">

<!-- css for pizza menu -->

.margin
{
	margin-left:130px;
}


.margin1
{
	margin-left:120px;
}

hr.v1
{
	margin-left:-115px;
	
}

<!-- css for menu bar -->

a
{
	color:white;
}

.navigation 
{
	height:2em; 
	width:56.25em;
	background-color:brown;
	margin-left:130px;
}

.link 
{
	height:2em;
	position:relative;
	float:left;
	z-index:10;
}

a.main 
{
	position:relative;
	display:inline-block;
	text-decoration:none;
	text-align:center;
	line-height:2em;
	height:2em;
	z-index:10;
}

a.main b 
{
	position:relative;
	display:inline-block;
	padding:0 .5em 0 .5em;
	line-height:2em;
	cursor:pointer;
}

.sublinkscontainer 
{
	position:absolute;
}

.sublinks 
{
	position:relative;
	float:left;/*can be any float*/
	margin-top:-2em;
}

.sublinks a 
{
	display:block;
	background:brown;
	padding:.2em 0 .2em 0;
	text-decoration:none;
}

.shifter 
{
	position:relative;
	float:left;
}

.sublinks .bgthing 
{
	height:2em;
	background:orange;
	display:block;
}

ul, li 
{
	margin:0;
	padding:0;
	list-type:none;
	
}


/*height limit*/
.link 
{
	top:-25em;
}

a.main 
{
	top:25em;
	width:7.5em;
}

a.main:hover, a.main:active, a.main:focus 
{
	margin-bottom:25em;
	background:orange;
	color:yellow;
	outline:none;
}

a.main:active b, a.main:focus b 
{
	outline: dotted thin;/*resetting the outline*/
}

.sublinkscontainer, .shifter 
{
	height:25em;
}

/*valid browser height maximization*/
.nav > .link 
{
	top:-1000em;
}

.link > a.main 
{
	top:1000em;
}

.link > a.main:hover, .link > a.main:active, .link > a.main:focus 
{
	margin-bottom:1000em;
}

.link > .sublinkscontainer, .sublinkscontainer > .shifter 
{
	height:1000em;
}


/*/valid browser height maximization*/


/*width limit*/

.sublinkscontainer 
{
	width:7.563em;
}

.sublinks a 
{
	width:7.5em;/*6.5 - padding*/
}


.sublinks a:hover, .sublinks a:active, .sublinks a:focus 
{
	margin-right:0.063em;
	background:orange;
	color:yellow;
}

.sublinks:hover a 
{/*opera fix*/
	margin-right:0.063em; 
}

a.main:focus + div .sublinks a, a.main:active + div .sublinks a 
{/*valid browser tab+hover fix*/
	margin-right:0;
}

.shifter 
{
	width:0.063em;
}

.sublinks .bgthing 
{
	width:7.5em;
}


.content 
{
	clear:both; 
}


a.main span 
{/*this nullifies the masks effects*/
	position:absolute;
	right:0;
	top:0;
	line-height:0;
}

a.main span i 
{/*the mask*/
	display:block;
	position:absolute;
	width:7.5em;
	background:brown;/*must be bg color for masking*/
	height:2em;
	top:0;
	right:auto;
}


.hidehotspot 
{
	position:relative;
	float:left;
	background:blue;
	height:2em;
	z-index:10;
}

.hidehotspot b 
{
	position:absolute;
	background-image:url('bkc1.jpg');
	height:2em;
	width:56.25em;
	display:block;
}


/*ie5 fault for not supporting paddings on links*/
.sublinks a b 
{
	font-weight:normal;
	position:relative;
	padding-left:.5em;
	display:block;
}

/*valid browser height fix*/
.link > a.main:hover,
.link > a.main:active,
.link > a.main:focus 
{
	margin-bottom:0;
}

.link > a.main:hover + div .sublinks a,
.link > a.main:active + div .sublinks a,
.link > a.main:focus + div .sublinks a 
{
	margin-right:0.063em;
}




<!--
/*/valid browser height fix*/
</style>

<!--[if lte IE 6]>
<style type="text/css">
.link {
margin-bottom:-2000px;/*only for ie5-6*/
}
/*ie5 fix*/
li {
float:left;
}
-->




.nav {/*only ie5-6 need this*/
height:25em;
position:absolute;
width:56.25em;
overflow:hidden;
}

<!--css to display image on mouseover event-->


.imgpos
{
	position:absolute;
	left:800px;
	top:60px;
	z-index:-1;
}
	

body
{ 
	background-image:url('bkc.jpg'); 
}


</style>

</head>

<body>

<div class="navigation">
<div class="nav">
<div class="link">
<a class="main" href="#MAIN"><b>ABOUT US</b><span><i> </i></span></a>
</div>

<div class="link">
<a class="main" href="Veg_Pizza1.html"><b>MENU</b><span><i> </i></span></a>

<div><!--IE6 needs this div-->
<div class="sublinkscontainer">
<div class="shifter"></div>
<ul class="sublinks">
             <li class="bgthing"> </li>
     <li><a href="Veg_Pizza1.html"><b>Veg Pizzas</b></a></li>
         <li><a href="Nonveg_pizza.html"><b>Non Veg Pizzas</b></a></li>
         <li><a href="Side_Orders.html"><b>Side Orders</b></a></li>

         <li><a href="Beverages.html"><b>Beverages</b></a></li>
         <li><a href="Crusts.html"><b>Crusts</b></a></li>
	<li><a href="Toppings.html"><b>Toppings</b></a></li>
</ul>
</div>
</div>
</div>

<div class="link">
<a class="main" href="#MAIN"><b>LOCATION</b><span><i> </i></span></a>
</div>


<div class="link">
<a class="main" href="#MAIN"><b>CALL US</b><span><i> </i></span></a>
</div>


<div class="link">
<a class="main" href="ad1.php"><b>ADS</b><span><i> </i></span></a>
</div>


<div class="link">
<a class="main" href="#MAIN"><b>FEEDBACK</b><span><i> </i></span></a>
</div>

<div class="hidehotspot"><b> </b></div>
</div>
</div>
<br>
<div class="margin"><font face="arial" color="#FF0000">Home >> Feedback</font></div>
<div class="margin1">

<hr class="v1">

</div>

<div class="margin">
<PRE>
<h3><font face ="arial" color="Blue">Please take a moment to tell us what you think about our website, our products, our 
organization , or anything else that comes to your mind. We truely welcome all your 
comments and suggestions that will help us serve you better. And ... please visit us
ofen!. All fields marked with * are required. </font><h3>
</PRE>
<BR>

<form action="<?=$SERVER['PHP_SELF'];?>" method="post" id="Form1">


<table border="0" cellspacing="10" cellpadding="7" style="font-size:20px;">
<tr>
<td>TITLE* :</td>
<td><input type="radio" name="title" value="Mr" /> MR. <input type="radio" name="title" value="Ms" /> MS. <input type="radio" name="title" value="Mrs" /> MRS.</td>
</tr>

<tr>
<td>FIRST NAME* :</td>
<td><input type="text" name="fname" /></td>
</tr>

<tr>
<td>LAST NAME* :</td>
<td><input type="text" name="lname" /></td>
</tr>

<tr>
<td>ADDRESS* :</td>
<td><textarea rows=5 cols=17 name="addr"></textarea></td>
</tr>

<tr>
<td>CITY* :</td>
<td><input type="text" name="city" /></td>
</tr>

<tr>
<td>CONTACT NUMBER* :</td>
<td><input type="text" name="mobno" /></td>
</tr>

<tr>
<td>E-MAIL ADDRESS* :</td>
<td><input type="text" name="email_id" /></td>
</tr>

<tr>
<td>FEEDBACK* :</td>
<td><textarea rows=5 cols=17 name="feedback"></textarea></td>
</tr>

</table>
<br><br>
<PRE>
            </table><input type="submit" value="Submit">        <input type="button" value="Cancel" name="Cancel">
</PRE>
</form>



<!--
<h3><font face ="arial" color="Blue">CONSUMER FEEDBACK|Careers|co-marketing|oppurtuities|offices<br><p align=right></p></font></h3>-->

</div>
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
$con=mysql_connect("localhost","scott","");
if(!$con)
{
	die('Could not connect'.mysql_error());
}
$title="";
if('$_POST[title(0)]'.checked==true)
{
	$title="Mr";
}
if('$_POST[title(1)]'.checked==true)
{
	$title="Ms";
}
if('$_POST[title(2)]'.checked==true)
{
	$title="Mrs";
}

mysql_select_db("proj",$con);
$sql="Insert into feedback values ('$title','$_POST[fname]','$_POST[lname]','$_POST[addr]','$_POST[city]','$_POST[mobno]',
'$_POST[email_id]','$_POST[feedback]')";

if(!mysql_query($sql,$con))
{
	die('Error : '.mysql_error());
}
else
{
	echo "<script languge=\javascript\">";
	echo "Confirmed = window.confirm('Feedback submitted successfully !');";
	echo"</script>";
}
mysql_close($con);
}
?>

</body>
</html>



