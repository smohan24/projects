<html>
<?php
$con=mysql_connect("localhost","scott","tiger");
if(!($con))
{
	die('Could not connect'.mysql_error());
}
$title;
if('$_POST[title(0)]'.checked==true)
{
	$title="Mr";
}
elseif('$_POST[title(1)]'.checked==true)
{
	$title="Ms";
}
else
{
	$title="Mrs";
}
mysql_select_db("proj",$con);
$sql="Insert into feedback values('$title','$_POST[fname]','$_POST[lname]','$_POST[addr]','$_POST[city]','$_POST[mobno]',
'$_POST[email_id]','$_POST[feedback]')";
if(!mysql_query($sql, $con))
{
	die('Error : '.mysql_error());
}
else
{
	echo "1 record added";
}
mysql_close($con);
?>
</html>