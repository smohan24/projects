
<html>
<head>
<title>
	BILL
</title>
</head>

<body>
<center><font size="4" color="magenta"><h3>BILL</h3></font></center>
<hr>
<form name="frm" method="post" action="">

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
<td><input type="text" name="name" /></td>
</tr>

<tr>
<td>Full Address* :</td>
<td><textarea rows=5 cols=17 name="addr"></textarea></td>
</tr>

<tr>
<td>Contact Number* :</td>
<td><input type="text" name="mobno" /></td>
</tr>

<tr>
<td>Email Address* :</td>
<td><input type="text" name="email_id" /></td>
</tr>

</table>
<PRE>
            </table><input type="submit" value="Confirm" name="confirm" onClick="msg()">        <input type="button" value="Cancel" name="Cancel" onClick="window.close()">
</PRE>
</form>

</div>

<script type="text/vbscript">

Sub msg()

	msgBox"Order has been placed successfully !"
End sub


</script>
<%
if(request.getParameter("confirm")!=null)
{
	
	Connection cn2 = null;
	Statement st2 = null;

	String sSql2="";
	String name="",addr="", emailid="", mobno="";

	name = request.getParameter( "name" ); 
	addr= request.getParameter( "addr" );
	emailid= request.getParameter( "email_id" );
	mobno= request.getParameter( "mobno" );

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

	try 
	{
		cn2 = DriverManager.getConnection( "jdbc:odbc:mycon");
		st2 = cn2.createStatement();
	
		sSql2="INSERT INTO Bill VALUES ( "+id+","+total+",'"+name+"','"+addr+"','"+mobno+"','"+emailid+"')"; 	
		st2.executeUpdate(sSql2);
	} 
	finally 
	{
		try { if( null != st2 ) st2.close(); } catch( Exception ex ) {}
		try { if( null != cn2 ) cn2.close(); } catch( Exception ex ) {}
	}
}
	   
%>

</body>
</html>



