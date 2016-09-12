<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<html>
<head>
<title>CART</title>
<script type="text/vbscript">

Sub chkempty()

	Dim TheForm,flag,msg
	Set TheForm=Document.forms("Form1")
	
	flag=0
	
	If(TheForm.qty.value="")Then
		flag=1
		msgBox "Enter valid quantity !"
	ElseIf(TheForm.qty.value<0)Then
		flag=1
		msgBox "Enter valid quantity !"
	ElseIf(Not(TheForm.type(0).checked) And Not(TheForm.type(1).checked))Then
		flag=1
		msgBox "Select type !"
	ElseIf(Not(TheForm.wt(0).checked) And Not(TheForm.wt(1).checked)And Not(TheForm.wt(2).checked))Then
		flag=1
		msgBox "Select weight !"
	Else
		msgBox "Item added to cart !"
	End If

End Sub

</script>

<script type="text/javascript">

function close1()
{
	window.close();
}

</script>

</head>

<style type="text/css">
body
{ 
	background-image:url('clusbg.jpg');
}

</style>

<body>

<center><font size="4" color="magenta"><h3>MY CART</h3></font></center>


<div>
<form action="" method="post" id="Form1">

<table border="0" cellspacing="10" cellpadding="7" style="font-size:20px;">

<tr>
<td>Cake:</td>
<td><%= request.getParameter("name1") %></td>
</tr>


<tr>
<td>Type :</td>
<td><PRE><input type="radio" name="type" value="regular" /> Regular     <input type="radio" name="type" value="eggless" /> Eggless </PRE></td>
</tr>

<tr>
<td>Weight :</td>
<td><PRE><input type="radio" name="wt" value="500" />1/2 kg      <input type="radio" name="wt" value="1000" />1 kg      <input type="radio" name="wt" value="2000" /> 2 kg</td></PRE>
</tr>

<tr>
<td>Quantity :</td>
<td><input type="text" name="qty" /></td>
</tr>

</table>
<br><br>
<PRE>
           <input type="submit" value="Add to Cart" name="submit" onClick="chkempty()">        <input type="button" value="Cancel" name="Cancel" onClick="close1()">
</PRE>
</form>
</div>

<%

if(request.getParameter("submit")!=null)
{
	String cname="",wt1="",qty1="",type1="",path="";
	int w=0,q=0,p=0,tot=0,ptot=0;

	cname= request.getParameter("name1");
	wt1= request.getParameter("wt");	
	qty1= request.getParameter("qty");
	type1= request.getParameter("type");

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

	String sSql="",sSql1="";

	Connection cn = null;
	Statement st = null,st1=null;
	ResultSet rs = null;
	try 
	{
		cn = DriverManager.getConnection( "jdbc:odbc:mycon");
		st = cn.createStatement();
		sSql1="SELECT * FROM Cake where cakename='"+cname+"'";
		rs=st.executeQuery(sSql1);
		if(rs.next())
		{
			try{
				w=Integer.parseInt(wt1);
  				q=Integer.parseInt(qty1);
			} 
			catch(NumberFormatException e) {}
		
			p=rs.getInt(2);	
			path=rs.getString(3);
			if(w==500)
			{
				ptot=p;
			}
			if(w==1000)
			{
				ptot=p*2;
			}
			if(w==2000)
			{
				ptot=p*4;
			}
			tot=ptot*q;
	
			st1 = cn.createStatement();
			sSql="INSERT INTO cart VALUES ('"+cname+"',"+ptot+","+w+","+q+","+tot+",'"+path+"','"+type1+"')"; 	
			st1.executeUpdate(sSql);
		}
		else
		{
			out.println("No record found !");
		}
	} 

	finally 
	{
		try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
		try { if( null != st ) st.close(); } catch( Exception ex ) {}
		try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
		try { if( null != st1 ) st1.close(); } catch( Exception ex ){}
	}
}
	   
%>
</body>
</html>



