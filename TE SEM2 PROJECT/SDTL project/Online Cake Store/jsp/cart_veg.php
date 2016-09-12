<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>

<style type="text/css">

<!-- css for pizza menu -->

.margin
{
	margin-left:130px;
}
	

body
{ 
	background-image:url('bkc.jpg'); 
}


</style>

</head>

<body>
<div>
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

<tr>
<td>CHOICE OF TOPPINGS :</td>
<td><select>
<option value="veg">Veg Toppings</option>
<option value="cheese">Extra Cheese</option>
</select>
</td>
</tr>

<tr>
<td>CHOICE OF CRUSTS :</td>
<td><select>
<option value="cheese">Cheese Burst</option>
<option value="classic">Classic Hand Tossed</option>
<option value="ultimate">Ultimate Deep Dish</option>
<option value="thin">Wheat Thin Crust</option>
<option value="boloroni">Cheesy Boloroni</option>
</select>
</td>
</tr>

</table>
<br><br>
<PRE>
            </table><input type="submit" value="Add to Cart">        <input type="button" value="Cancel" name="Cancel">
</PRE>
</form>

</div>
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



