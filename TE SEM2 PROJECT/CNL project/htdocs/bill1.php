
<html>
<head>
<title>
	BILL
</title>
</head>

<body>
<center><font size="4" color="magenta"><h3>BILL</h3></font></center>
<hr>



<table border="0" cellspacing="10" cellpadding="7" style="font-size:20px;">



<?php

$con=mysql_connect("localhost","scott","");

if(!$con)
{
	die('Could not connect'.mysql_error());
}


mysql_select_db("proj",$con);


$sql=mysql_query("Select * from cart");

while($row=mysql_fetch_array($sql,MYSQL_ASSOC))
{

	$p=$row[total];
	$tot=$tot + $p;
}


$sql1="Select MAX(id) from bill";

$res=mysql_query($sql);

$rows1= mysql_fetch_array($res);

$temp_id=$rows1[0];

$id1=$temp_id + 1;

?>


<tr>
<td><b>Bill no      :<?php echo $id1; ?></b></td>
</tr>

<tr>
<td><b>Total      :  Rs <?php echo $tot; ?></b></td>
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

<?php

if($_SERVER['REQUEST_METHOD']=='POST')
{
$con=mysql_connect("localhost","samu","samu");
if(!$con)
{
	die('Could not connect'.mysql_error());
}

$sql="Insert into bill values ('$id1','$tot','$_POST[name]','$_POST[addr]','$_POST[mobno]','$_POST[email_id]')";

if(!mysql_query($sql,$con))
{
	die('Error : '.mysql_error());
}
else
{
	echo "<script languge=\javascript\">";
	echo "Confirmed = window.confirm('Order has been placed successfully!');";
	echo"</script>";
}

mysql_close($con);

}
?>


</script>


</body>
</html>



