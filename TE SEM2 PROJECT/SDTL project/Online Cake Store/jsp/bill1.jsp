<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<html>
<head>
<title>
	BILL
</title>
</head>

<style type="text/css">
body
{ 
	background-image:url('clusbg.jpg');
}

</style>

<body>
<center><font size="4" color="magenta"><h3>BILL</h3></font></center>
<hr>

<%

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

String sSql = "SELECT * FROM cart";
String sSql1 = "SELECT MAX(ID) FROM Bill";


String sDBQ = "g://cart.mdb";

int total=0,price=0,id=0;
Connection cn = null;
Statement st = null,st1=null;
ResultSet rs = null,rs1=null;
try 
{
	cn = DriverManager.getConnection( "jdbc:odbc:mycon");
	st = cn.createStatement();
	rs = st.executeQuery(sSql);
	
	while( rs.next() )
	{			
		price=rs.getInt(5);
		total=total+price;
	}
	try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
	try { if( null != st ) st.close(); } catch( Exception ex ) {}
	st1 = cn.createStatement();
	rs1=st1.executeQuery(sSql1);
	if(rs1.next())
	{
		id=rs1.getInt(1)+1;
	}	
	else
	{
		id=1;
	}
} 

finally {
try { if( null != rs1 ) rs1.close(); } catch( Exception ex ) {}
try { if( null != st1 ) st1.close(); } catch( Exception ex ) {}
try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
}	    

%>

<script type="text/vbscript">

Sub chkname()

	Dim TheForm,flag
	Set TheForm=Document.forms("Form1")
	
	flag=0
	If(Instr(TheForm.name.value,"1") Or Instr(TheForm.name.value,"2") Or Instr(TheForm.name.value,"3"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"4") Or Instr(TheForm.name.value,"5"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"6") Or Instr(TheForm.name.value,"7"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"8") Or Instr(TheForm.name.value,"9"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"0") Or Instr(TheForm.name.value,"+"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"-") Or Instr(TheForm.name.value,"*"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"/") Or Instr(TheForm.name.value,"."))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"!") Or Instr(TheForm.name.value,"~"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"@") Or Instr(TheForm.name.value,"#"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"$") Or Instr(TheForm.name.value,"%"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"^") Or Instr(TheForm.name.value,"&"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"=") Or Instr(TheForm.name.value,"_"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"(") Or Instr(TheForm.name.value,")"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"|") Or Instr(TheForm.name.value,"\"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"{") Or Instr(TheForm.name.value,"}"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,";") Or Instr(TheForm.name.value,":"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"<") Or Instr(TheForm.name.value,">"))then
		flag=1
	ElseIf(Instr(TheForm.name.value,"?") Or Instr(TheForm.name.value,","))then
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
	
	flag=0
	
	If(TheForm.name.value="")Then
		msgBox "Enter first name !"
	ElseIf(TheForm.addr.value="")Then
		msgBox "Enter address !"
	ElseIf(TheForm.mobno.value="")Then
		msgBox "Enter mobile number !"
	ElseIf(TheForm.email_id.value="")Then
		msgBox "Enter email address !"
	Else
		Call chkname()
		Call chkemail()
		Call chkmobno()
		msgBox "Order has been placed successfully !"
	End If

End Sub

Sub Cancel_onClick()

	Dim TheForm,flag
	Set TheForm=Document.forms("Form1")
	
	TheForm.name.value=""
	TheForm.addr.value=""
	TheForm.mobno.value=""
	TheForm.email_id.value=""
	
End Sub
</script>

<form action="" method="post" id="Form1">

<table border="0" cellspacing="10" cellpadding="7" style="font-size:20px;">

<tr>
<td><b>Bill no      :  <%out.println(id);%></b></td>
</tr>

<tr>
<td><b>Total      : Rs <%out.println(total);%></b></td>
</tr>

<tr>
<td>Name* :</td>
<td><input type="text" name="name" onchange="chkname()" /></td>
</tr>

<tr>
<td>Full Address* :</td>
<td><textarea rows=5 cols=17 name="addr"></textarea></td>
</tr>

<tr>
<td>Contact Number* :</td>
<td><input type="text" name="mobno" onchange="chkmobno()" /></td>
</tr>

<tr>
<td>Email Address* :</td>
<td><input type="text" name="email_id" onchange="chkemail()" /></td>
</tr>

</table>
<PRE>
            </table><input type="submit" value="Confirm" name="confirm" onClick="chkempty()">        <input type="button" value="Cancel" name="Cancel" onClick="window.close()">
</PRE>
</form>
<a href="choc1.jsp">Back to menu</a>
</div>
<script type="text/vbscript">


</script>
<%
if(request.getParameter("confirm")!=null)
{
	
	Connection cn2 = null;
	Statement st2 = null,st3=null,st4=null,st5=null;
	ResultSet rs3=null;
	String sSql2="",sSql3="",sSql4="",sSql5="";
	String name="",addr="", emailid="", mobno="";

	name = request.getParameter( "name" ); 
	addr= request.getParameter( "addr" );
	emailid= request.getParameter( "email_id" );
	mobno= request.getParameter( "mobno" );

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

	try 
	{
		cn2 = DriverManager.getConnection( "jdbc:odbc:mycon");
		st3 = cn2.createStatement();
		st2 = cn2.createStatement();	
		st4 = cn2.createStatement();	
		sSql2="INSERT INTO Bill VALUES ( "+id+","+total+",'"+name+"','"+addr+"','"+mobno+"','"+emailid+"')"; 	
		st2.executeUpdate(sSql2);
		sSql3="SELECT * FROM cart"; 	
		rs3=st3.executeQuery(sSql3);
		while(rs3.next())
		{
			
			sSql4="INSERT INTO Finalcart VALUES ('"+name+"','"+rs3.getString(1)+"',"+rs3.getInt(2)+","+rs3.getInt(3)+","+rs3.getInt(4)+","+rs3.getInt(5)+",'"+rs3.getString(6)+"','"+rs3.getString(7)+"')"; 	
			st4.executeUpdate(sSql4);
		}
		
		sSql5 = "DELETE FROM cart";

		st5 = cn2.createStatement();
		st5.executeUpdate(sSql5);
	
	}
	finally 
	{
		try { if( null != st2 ) st2.close(); } catch( Exception ex ) {}
		try { if( null != st3 ) st3.close(); } catch( Exception ex ) {}
		try { if( null != st4 ) st4.close(); } catch( Exception ex ) {}
		try { if( null != st5 ) st5.close(); } catch( Exception ex ) {}
		try { if( null != cn2 ) cn2.close(); } catch( Exception ex ) {}
	}
}
	   
%>

<%@ page import="sun.net.smtp.SmtpClient, java.io.*" %>
<%
 String from="copperchocs@gmail.com";
 String to="soumyannd5@gmail.com";
 try{
     SmtpClient client = new SmtpClient("mail.xxxxx.xxx");
     client.from(from);
     client.to(to);
     PrintStream message = client.startMessage();
     message.println("To: " + to);
     message.println("Subject:  Sending email from JSP!");
     message.println("This was sent from a JSP page!");
     message.println();
     message.println("Cool beans! :-)");
     message.println();     
     message.println();
     client.closeServer();
  }
  catch (IOException e){	
     System.out.println("ERROR SENDING EMAIL:"+e);
  }
%>

</body>
</html>



