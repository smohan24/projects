<%
String Username=request.getParameter("uname");
String Password=request.getParameter("pwd");

if (Username.compareTo("soumya")==0 && Password.compareTo("1234")==0)
{
	response.sendRedirect("success.html");
}

else
{
	response.sendRedirect("fail.html");

}

%>