<html>
<body>

<?php
$con = mysql_connect("localhost","scott","");
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}


if (mysql_query("CREATE DATABASE  my_db",$con))
{
	echo "Database created";
}
else
{
	echo "Error creating database: " . mysql_error();
}
?>
</body>
</html>
