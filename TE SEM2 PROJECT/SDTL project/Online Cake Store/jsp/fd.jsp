<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<%
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
	

	sSql="INSERT INTO feedback VALUES ( '"+title+"','"+fname+"','"+lname+"','"+addr+"','"+email_id+"','"+city+"','"+mobno+"','"+feedback+"') "; 	
	st.executeUpdate(sSql);
	
	
} 

finally {
try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
try { if( null != st ) st.close(); } catch( Exception ex ) {}
try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
}

	    

%>