<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<html>
<head>
<title>CART</title>

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

int total=0,price=0,flag=0;
Connection cn = null;
Statement st = null;
ResultSet rs = null;
try 
{
	cn = DriverManager.getConnection( "jdbc:odbc:mycon");
	st = cn.createStatement();
	rs = st.executeQuery(sSql);
	if(rs==null)
	{
		flag=1;
	}
	else
	{
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
} 

finally {
try { if( null!=rs ) rs.close();} catch(Exception ex){}
try { if( null!=st ) st.close();} catch(Exception ex){}
try { if( null!=cn ) cn.close();} catch(Exception ex){}
}	    

%>

</table>
</div>
<br>
<hr align="center">
<br>
<center><b>Total       : Rs  </b>	<%out.println(total);%><br></center>
<br>
<PRE><center><input type="submit" value="Build New Order" name="refresh" />	<input type="submit" value="Order" name="confirm">
</center></PRE>
</table>
</form>
<a href="choc1.jsp">Back to menu</a>
<%

if(request.getParameter("refresh")!=null)
{
	Connection cn2 = null;
	Statement st5 = null;
	String sSql5 = "DELETE FROM cart";
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

	try 
	{
		cn2 = DriverManager.getConnection( "jdbc:odbc:mycon");
		
		st5 = cn2.createStatement();
		st5.executeUpdate(sSql5);
	
	}
	finally 
	{
		try { if( null != st5 ) st5.close(); } catch( Exception ex ) {}
		try { if( null != cn2 ) cn2.close(); } catch( Exception ex ) {}
	}
	response.sendRedirect("choc1.jsp");
}


if(request.getParameter("confirm")!=null)
{
	if(total!=0)
	{
		response.sendRedirect("bill.jsp");
	} 
}
%>

</body>
</html>



