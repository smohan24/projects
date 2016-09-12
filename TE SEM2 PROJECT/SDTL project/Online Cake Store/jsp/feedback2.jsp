<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<title>Welcome To Copper Chocs</title>

</title>

<style type="text/css">
body
{ 
	background-image:url('clusbg.jpg');
}

.fieldset-auto-width 
{
	margin-left:120px;
        
}

p.margin
{
margin-left:110px;
}

ul.main
{
	float:left;
	width:100%;
 	margin-left:120px;
	margin-top:140px;
	padding:0;
	list-style-type:none;
}


a.menu
{
	float:left;
	width:3.8cm;
	text-align:center;
	text-decoration:none;
	color:white;
	background-color:brown;
	padding:0.2em 0.6em;
	border-right:1px solid white;
}

a.menu:hover{background-color:orange;}
li{display:inline;}

</style>
<body>

<ul class="main">
<li><a class="menu" href="page1.jsp">HOME</a></li>
<li><a class="menu selected" href="About us.jsp">ABOUT US</a></li>
<li><a class="menu" href="choc1.jsp">THE MENU</a></li>
<li><a class="menu" href="outlets.jsp">OUR OUTLETS</a></li>
<li><a class="menu" href="contact.jsp">CALL US</a></li>
<li><a class="menu" href="feedback1.jsp">FEEDBACK</a></li>
</ul>

<img src="logo.png" alt="HTML tutorial" style="position:absolute; left:130px; top:0px;">

<form action="" id="Form1">
<div>
  <fieldset class="fieldset-auto-width" color=black>

<legend style="font-size:20px;">Feedback</legend>
<p class="margin" style="font-size:16px;">
<table border="0" cellspacing="10" cellpadding="7" style="font-size:20px;">
<tr>
<td >Name</td>
<td><input type="text" name="name" onchange="chkname()"><br></td>
</tr>
<tr>
<td>Address</td>
<td><textarea rows=2 cols=16 name="addr"></textarea><br></td>
</tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="male">Male  <input type="radio" name="gender" value="female">Female<br/></td>
</tr>
<tr>
<td>City</td>
<td>
<select name="city">
<option value="">Select</option>
<option value="pune">Pune</option>
<option value="bombay">Bombay</option>
<option value="delhi">Delhi</option>
<option value="bangalore">Bangalore</option>
<option value="calcutta">Calcutta</option>
<option value="chennai">Chennai</option>
</select><br/>
</tr>
<tr>
<td>Mobile Number</td>
<td><input type="text" name="mobno" onchange="chkmobno()"><br/></td>
</tr>
<tr>
<td>Email address</td>
<td><input type="text" name="email" onchange="chkemail()"><br/></td>
</tr>

<tr>
<td>Feedback</td>
<td><textarea rows=2 cols=16 name="feed"></textarea><br></td>
</tr>
</table>
<br/>
<PRE>
            		</table><input type="submit" value="Submit" onClick="chkempty()">   <input type="button" value="Cancel" name="Cancel">	
</PRE>
</p>  
</fieldset>
</div>
</form>

</body>
</html>