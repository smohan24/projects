
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Adding Veg Pizzas to cart</title>

<Script Language = JavaScript>

function close1()
{
	window.close();
}
</Script>


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
<td>PIZZA:</td> 
<td> <?php 
$pizza1=$_GET['name1'];
echo " ".$_GET['name1']; ?></td>
</tr>

<tr>
<td>SIZE :</td>
<td><input type="radio" name="s" value="small" /> Small <input type="radio" name="s" value="medium" /> Medium <input type="radio" name="s" value="large" /> Large</td>
</tr>

<tr>
<td>QTY :</td>
<td><input type="text" name="qty" /></td>
</tr>

<tr>
<td>CHOICE OF TOPPINGS :</td>
<td><select name="topping">
<option value="Veg Toppings">Veg Toppings</option>
<option value="Extra Cheese">Extra Cheese</option>
</select>
</td>
</tr>

<tr>
<td>CHOICE OF CRUSTS :</td>
<td><select name="crust">
<option value="Cheese Burst">Cheese Burst</option>
<option value="Classic Hand Tossed">Classic Hand Tossed</option>
<option value="Ultimate Deep Dish">Ultimate Deep Dish</option>
<option value="Wheat Thin Crust">Wheat Thin Crust</option>
<option value="Cheesy Boloroni">Cheesy Boloroni</option>
</select>
</td>
</tr>

</table>
<br><br>
<PRE>
            </table><input type="submit" value="Add to Cart" name="add">   <input type="button" value="Cancel" name="Cancel" onClick="close1()">
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

$size1=$_POST['s'];


mysql_select_db("proj",$con);

$pizza2=$_GET['name1'];

$qt=$_POST[qty];


if(isset($_POST['add']))
{
  if($qt==0 || $qt<0)
  { 
        echo "<script languge=\javascript\">";
	echo "Confirmed = window.confirm('Inavlid quantity !');";
	echo"</script>";
  }
 elseif($size1==NULL)
  {	
	 echo "<script languge=\javascript\">";
	echo "Confirmed = window.confirm('First specify size of pizza !');";
	echo"</script>";
  }
  else
  {

$sql1=mysql_query("Select * from pizza_db where pname like '%$pizza2%' and size like '%$size1%'");

$r= mysql_fetch_array($sql1);


$sql2=mysql_query("Select * from pizza_db where pname like '%$_POST[topping]%' and size like '%$size1%'");

$r1= mysql_fetch_array($sql2);


$sql3=mysql_query("Select * from pizza_db where pname like '%$_POST[crust]%'");

$r2= mysql_fetch_array($sql3);


$tot=($_POST[qty] * $r[2]) + $r1[2] + $r2[2];

$sql="Insert into cart values('$pizza2',$r[2],'$size1',$_POST[qty],'$_POST[topping]','$_POST[crust]',$tot,'$r[3]')";

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
}
}
?>

</body>
</html>



