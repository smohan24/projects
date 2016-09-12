
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Adding Side Orders to cart</title>

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
<td>Side Order : </td> 
<td> <?php 
$bev1=$_GET['name1'];
echo " ".$_GET['name1']; ?></td>
</tr>

<tr>
<td>Quantity :</td>
<td><input type="text" name="qty" /></td>
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



mysql_select_db("proj",$con);

$sideorder=$_GET['name1'];

$qt=$_POST[qty];

if(isset($_POST['add']))
{
  if($qt==0 || $qt<0)
 { 
        echo "<script languge=\javascript\">";
	echo "Confirmed = window.confirm('First specify quantity !');";
	echo"</script>";
 }


 else
 {

$sql1=mysql_query("Select * from pizza_db where pname like '%$sideorder%'");

$r= mysql_fetch_array($sql1);

$tot=$_POST[qty] * $r[2] ;

$sql="Insert into cart values('$sideorder',$r[2],'NA',$_POST[qty],'NA','NA',$tot,'$r[3]')";

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



