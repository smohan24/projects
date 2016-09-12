<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<html>
<head>
<title>
	CART
</title>

<style type="text/css">
body
{ 
	background-image:url('clusbg.jpg');
}


.margin
{
	margin-left:325px;
}

</style>

<script language="javascript" type="text/javascript">
if(history.back)
{
history.go(+1)
}
</script>

</head>

<body>
<center><font size="4" color="magenta"><h3>MY CART</h3></font></center>
<div class="margin">
<form name="frm" method="post" action="">

<br><br>

<table border="0" cellpadding="6" cellspacing="6" colspan="4">
<tr><th align="center">Pic</th>
<th>Cake</th>
<th>Type</th>
<th align="center">Price</th>
<th align="center">Weight</th>
<th align="center">Quantity</th>
<th align="center">Total</th></tr>


<%

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

String sSql = "SELECT * FROM cart";

String sDBQ = "g://cart.mdb";

int total=0,price=0;
Connection cn = null;
Statement st = null;
ResultSet rs = null;
try 
{
	cn = DriverManager.getConnection( "jdbc:odbc:mycon");
	st = cn.createStatement();
	rs = st.executeQuery(sSql);
	
	while( rs.next() )
	{			
%>

<tr>
<td><img src="<%=rs.getString(6)%>" height=50 width=50></td>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getInt(2)%></td>
<td><%=rs.getInt(3)%></td>
<td align="center"><%=rs.getInt(4)%></td>
<%price=rs.getInt(5);%>
<td><%out.println(price);%></td></tr>


<%

	total=total+price;
	}
} 

finally {
try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
try { if( null != st ) st.close(); } catch( Exception ex ) {}
try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
}	    

%>

</table>
<br>
<hr>
<PRE>					<b>Total</b>			<%out.println(total);%><br>
		<input type="button" value="Refresh" name="refresh" >			<input type="button" value="Confirm" name="confirm" onClick="window.open('bill.jsp','bill','height= 500,width= 600')">
</PRE>
</table>
</form>
</div>
</body>
</html>



