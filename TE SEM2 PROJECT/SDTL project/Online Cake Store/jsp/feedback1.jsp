
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>

<style type="text/css">
body
{ 
	background-image:url('clusbg.jpg');
}

pre {font-family: Garamond,monospace}

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

.setfont
{
	margin-left:120px;
	font-family:Edwardian Script ITC; 

}

.margin
{
	margin-left:120px;
}

a.menu:hover{background-color:orange;}
li{display:inline;}

</style>
<script type="text/vbscript">

Sub chkname(name1)

	Dim TheForm,flag
	Set TheForm=Document.forms("Form1")
	
	flag=0
	If(Instr(TheForm.name1.value,"1") Or Instr(TheForm.name1.value,"2") Or Instr(TheForm.name1.value,"3"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"4") Or Instr(TheForm.name1.value,"5"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"6") Or Instr(TheForm.name1.value,"7"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"8") Or Instr(TheForm.name1.value,"9"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"0") Or Instr(TheForm.name1.value,"+"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"-") Or Instr(TheForm.name1.value,"*"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"/") Or Instr(TheForm.name1.value,"."))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"!") Or Instr(TheForm.name1.value,"~"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"@") Or Instr(TheForm.name1.value,"#"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"$") Or Instr(TheForm.name1.value,"%"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"^") Or Instr(TheForm.name1.value,"&"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"=") Or Instr(TheForm.name1.value,"_"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"(") Or Instr(TheForm.name1.value,")"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"|") Or Instr(TheForm.name1.value,"\"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"{") Or Instr(TheForm.name1.value,"}"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,";") Or Instr(TheForm.name1.value,":"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"<") Or Instr(TheForm.name1.value,">"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"?") Or Instr(TheForm.name1.value,","))then
		flag=1
	End If

	If(flag=1)Then
		msgBox "Invalid name !"
	End If
End Sub

Sub chkemail()

	Dim TheForm,flag1,flag2
	Set TheForm=Document.forms("Form1")
	
	flag1=0
	flag2=0
	If(Instr(TheForm.email_id.value,"@"))then
		flag1=1
	End If
	If(Instr(TheForm.email_id.value,"."))then
		flag2=1
	End If

	If(flag1=0 Or flag2=0)Then
		msgBox "Email address should be of the form username@site.com !"
	End If

End sub

Sub chkmobno()

	Dim TheForm
	Set TheForm=Document.forms("Form1")

	If(Not IsNumeric(TheForm.mobno.value)) Then
		msgBox "Invalid mobile no !"
	ElseIf(Len(TheForm.mobno.value)<10 Or Len(TheForm.mobno.value)>10) Then
		msgBox "Number of digits should be 10 !"
	End If
	
End Sub

Sub chkempty()

	Dim TheForm,flag,msg
	Set TheForm=Document.forms("Form1")
	
	If(TheForm.fname.value="")Then
		msgBox "Enter first name !"
	ElseIf(TheForm.lname.value="")Then
		msgBox "Enter last name !"
	ElseIf(TheForm.addr.value="")Then
		msgBox "Enter address !"
	ElseIf(TheForm.city.value="")Then
		msgBox "Enter city !"
	ElseIf(TheForm.mobno.value="")Then
		msgBox "Enter mobile number !"
	ElseIf(TheForm.email_id.value="")Then
		msgBox "Enter email address !"
	ElseIf(TheForm.feedback.value="")Then
		msgBox "Enter Feedback !"
	Else
		msgBox "Thanks for your feedback!"
	End If

End Sub

Sub Cancel_onClick()

	Dim TheForm,flag
	Set TheForm=Document.forms("Form1")
	
	TheForm.fname.value=""
	TheForm.lname.value=""
	TheForm.addr.value=""
	TheForm.feedback.value=""
	TheForm.mobno.value=""
	TheForm.email_id.value=""
	TheForm.title(0).checked=false
	TheForm.title(1).checked=false
	TheForm.title(2).checked=false
	TheForm.city.value=""

End Sub
</script>
</head>
<body>
<img src="logo.png" alt="HTML tutorial" style="position:absolute; left:130px; top:0px;">
<a href="cart.jsp">
<img border="0" src="cart.jpg" alt="View Cart" style="position:absolute; left:1060px; top:115px;" width=50 height=50></a>

<br>
<ul class="main">
<li><a class="menu" href="page1.jsp">HOME</a></li>
<li><a class="menu selected" href="About us.jsp">ABOUT US</a></li>
<li><a class="menu" href="choc1.jsp">THE MENU</a></li>
<li><a class="menu" href="outlets.jsp">OUR OUTLETS</a></li>
<li><a class="menu" href="contact.jsp">CALL US</a></li>
<li><a class="menu" href="feedback1.jsp">FEEDBACK</a></li>
</ul>


<div class="margin">

<fieldset>
<form action="" method="post" id="Form1">

<table border="0" cellspacing="10" cellpadding="7" style="font-size:20px;">
<tr>
<td>Title* :</td>
<td><input type="radio" name="title" value="Mr" checked/> Mr. <input type="radio" name="title" value="Ms" /> Ms. <input type="radio" name="title" value="Mrs" /> Mrs.</td>
</tr>

<tr>
<td>First Name* :</td>
<td><input type="text" name="fname" onchange="chkname(fname)" /></td>
</tr>

<tr>
<td>Last Name* :</td>
<td><input type="text" name="lname" onchange="chkname(lname)"/></td>
</tr>

<tr>
<td>Address* :</td>
<td><textarea rows=5 cols=17 name="addr"></textarea></td>
</tr>

<tr>
<td>City* :</td>
<td><input type="text" name="city" /></td>
</tr>

<tr>
<td>Contact Number* :</td>
<td><input type="text" name="mobno" onchange="chkmobno()"/></td>
</tr>

<tr>
<td>Email Address* :</td>
<td><input type="text" name="email_id" onchange="chkemail()"/></td>
</tr>

<tr>
<td>Feedback* :</td>
<td><textarea rows=5 cols=17 name="feedback"></textarea></td>
</tr>

<tr>
<td align="center"><input type="submit" value="Submit" name="submit" onClick="chkempty()"></td>
<td align="center"><input type="button" value="Cancel" name="Cancel"></td>
</tr>

</table>
</form>
</fieldset>
</div>

<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<%

if(request.getParameter("submit")!=null)
{

	String title="", fname="", lname="", addr="", email_id="", mobno="", city="",feedback ="";

	title = request.getParameter( "title" ); 
	fname = request.getParameter( "fname" ); 
	lname= request.getParameter( "lname" ); 
	addr= request.getParameter( "addr" );
	email_id= request.getParameter( "email_id" );
	mobno= request.getParameter( "mobno" );
	city= request.getParameter( "city" );
	feedback= request.getParameter( "feedback" );

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

	String sSql="";
	String sDBQ = "g://feedback.mdb";

	Connection cn = null;
	Statement st = null;
	ResultSet rs = null;
	try 
	{
		cn = DriverManager.getConnection( "jdbc:odbc:mycon");
		st = cn.createStatement();
	

		sSql="INSERT INTO feedback VALUES ( '"+title+"','"+fname+"','"+lname+"','"+addr+"','"+email_id+"','"+city+"','"+mobno+"','"+feedback+"')"; 	
		st.executeUpdate(sSql);
	
	} 

	finally 
	{
		try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
		try { if( null != st ) st.close(); } catch( Exception ex ) {}
		try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
	}
}
	   
%>
</body>
</html>


