<?php
$con=mysql_connect("localhost","scott","");
if(!$con)
{
	die('Could not connect'.mysql_error());
}
$title="";
if('$_POST[title(0)]'.checked==true)
{
	$title="Mr";
}
if('$_POST[title(1)]'.checked==true)
{
	$title="Ms";
}
if('$_POST[title(2)]'.checked==true)
{
	$title="Mrs";
}

mysql_select_db("proj",$con);
$sql="Insert into feedback values ('$title','$_POST[fname]','$_POST[lname]','$_POST[addr]','$_POST[city]','$_POST[mobno]',
'$_POST[email_id]','$_POST[feedback]')";

if(!mysql_query($sql,$con))
{
	die('Error : '.mysql_error());
}
else
{	header("Location: feedback.html");
}
mysql_close($con);
?>