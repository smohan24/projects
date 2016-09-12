
<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<title>Welcome To Copper Chocs</title>

</title>

<style>

.margin
{
	margin-left:150px;
}

ul.main
{
	float:left;
	width:100%;
 	margin-left:166px;
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


<img src="logo.png" alt="HTML tutorial" style="position:absolute; left:180px; top:0px;">

<img src="29.jpg" alt="HTML tutorial" style="position:absolute; left:180px; top:200px;" >

<a href="page5.jsp">
<img border="0" src="forward.png" alt="HTML tutorial" width="60" height="60" style="position:absolute; right:75px; top:370px;" ></a>

<a href="page3.jsp">
<img border="0" src="back.png" alt="HTML tutorial" width="60" height="60" style="position:absolute; left:65px; top:370px;" ></a>

</body>

</html>