<html>
<head><title></title>
<style>
body
{ 
	background-image:url('bkc.jpg'); 
}

.margin
{
	margin-left:130px;
}

</style>
</head>

<body>
<form action="<?=$SERVER['PHP_SELF'];?>" method="post" id="Form2">

<table border="0" cellspacing="10" cellpadding="7" style="font-size:20px;">
<tr>
<td>SIZE :</td>
<td><input type="radio" name="size" value="small" /> Small <input type="radio" name="size" value="medium" /> Medium <input type="radio" name="size" value="large" /> Large</td>
</tr>

<tr>
<td>QTY :</td>
<td><input type="text" name="qty" /></td>
</tr>
</table>
</form>
<br><br>
<PRE>
            </table><input type="submit" value="Add to Cart">        <input type="button" value="Cancel" name="Cancel">
</PRE>


<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
$con=mysql_connect("localhost","scott","");
if(!$con)
{
	die('Could not connect'.mysql_error());
}
$size="";
if('$_POST[size(0)]'.checked==true)
{
	$size="Mr";
}
if('$_POST[size(1)]'.checked==true)
{
	$size="Ms";
}
if('$_POST[size(2)]'.checked==true)
{
	$size="Mrs";
}

mysql_select_db("proj",$con);
$sql="Insert into cart values ('$size','$_POST[qty]')";

if(!mysql_query($sql,$con))
{
	die('Error : '.mysql_error());
}
else
{
	echo "<script languge=\javascript\">";
	echo "Confirmed = window.confirm('Item added to cart !');";
	echo"</script>";
}
mysql_close($con);
}
?>

</body>
</html>