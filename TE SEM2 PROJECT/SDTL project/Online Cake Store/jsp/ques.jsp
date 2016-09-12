<%

	String sid=session.getAttribute( "sid").toString();
	String t1=session.getAttribute( "flag1").toString();
	String t2=session.getAttribute( "flag2").toString();
	String t3=session.getAttribute( "flag3").toString();
	int flag1=Integer.parseInt(t1);	
	out.println(flag1);
	int flag2=Integer.parseInt(t2);	
	out.println(flag2);
	int flag3=Integer.parseInt(t3);	
	out.println(flag3);
	String type="";
	int no=0;
	
	if(request.getParameter("aptitude")!=null)
	{
		type="aptitude";
		flag1++;
		no=flag1;
		
	}
	else if(request.getParameter("gk")!=null)
	{
		type="gk";
		flag2++;
		no=flag2+20;
	}
	else if(request.getParameter("technical")!=null)
	{
		type="technical";
		flag3++;
		no=flag3+10;
	}
	else
	{
		type=session.getAttribute("type").toString();
		if(type.equals("aptitude"))
		{
			type="aptitude";
			flag1++;
			no=flag1;
		
		}
		else if(type.equals("gk"))
		{
			type="gk";
			flag2++;	
			no=flag2+20;
		}
		else if(type.equals("technical"))
		{
			type="technical";
			flag3++;
			no=flag3+10;
		}
		
		
	}
	session.setAttribute("flag1",flag1);
	session.setAttribute("flag2",flag2);
	session.setAttribute("flag3",flag3);
	session.setAttribute("type",type);
%>

<%@ page language="java" %>
<%@ page import ="java.sql.*" %>

<html>
<head>
<title>
	QUESTION PAGE
</title>
<script language="javascript" type="text/javascript">
if(history.back)
{
history.go(+1)
}
</script>


<body bgcolor="black">
<center>
<hr color="green">
<hr color="green">
<font size="4" color="MAGENDA"><h3>ONLINE EXAMINATION</h3></font>
<hr color="green">
<hr color="green">
</center>

<%

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

String sSql = "SELECT * FROM questions where qid= "+ no;

String sDBQ = "c://exam.mdb";

String ques,op1,op2,op3,op4;
int ans=0,qid=0;
String qry="";
String database = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=" + sDBQ + ";DriverID=22;READONLY=false"; 
Connection cn = null;
Statement st = null;
ResultSet rs = null;
try 
{
	cn = DriverManager.getConnection( database ,"","");
	st = cn.createStatement();
	rs = st.executeQuery(sSql);
	
	if( rs.next() )
	{
		qid=rs.getInt(1);
		ans=rs.getInt(7);
		session.setAttribute("ans",ans);
		session.setAttribute("qid",qid);
		session.setAttribute("sid",sid);

%>
<form name="frm" method="post" action="ans.jsp">

<font size="5" color="pink" face="Lucida handwritting">
<center> 
<br>
<br>
Ques.	<%=rs.getString(2)%>
</center>

<br>
<br><br>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp


&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="radio" name="opt" value="1" checked><%=rs.getString(3)%>
<br><br>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="radio" name="opt" value="2"><%=rs.getString(4)%>
<br><br>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="radio" name="opt" value="3"><%=rs.getString(5)%>
<br><br>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="radio" name="opt" value="4"><%=rs.getString(6)%>


</font>
<br><br><br>
<center>
<input type="submit" value="SUBMIT" name="submit" >
</center>
</form>

</head>
</html>



<%

}
	
} 

finally {
try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
try { if( null != st ) st.close(); } catch( Exception ex ) {}
try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
}

	    

%>