
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>
	CART
</title>

<style type="text/css">

<!-- css for pizza menu -->

.margin
{
	margin-left:130px;
}

.margin1
{
	margin-left:120px;
}

.v2
{
	position:absolute;
	left:465px;
	top:120px;
	z-index:50;
	border: 1px solid black;
	padding: 2px;
}

.caption
{
	
	font-family:MS Sans Serif;
	font-size:17px;
	text-align:center;
	color:red;
}

.veg
{
	font-family:MS Sans Serif;
	width:6cm;
	text-decoration:none;
	color:white;
	background-color:green;
	padding:0.2em 0.6em;
}


.submenu_veg
{
	font-family:MS Sans Serif;
	font-size:17px;	
	margin-left:20px;
	text-decoration:none;
	color:black;
}


hr.v1
{
	margin-left:-115px;
	
}


<!-- css for menu bar -->

a
{
	color:white;
}

.navigation 
{
	height:2em; 
	width:56.25em;
	background-color:brown;
	margin-left:130px;
}

.link 
{
	height:2em;
	position:relative;
	float:left;
	z-index:10;
}

a.main 
{
	position:relative;
	display:inline-block;
	text-decoration:none;
	text-align:center;
	line-height:2em;
	height:2em;
	z-index:10;
}

a.main b 
{
	position:relative;
	display:inline-block;
	padding:0 .5em 0 .5em;
	line-height:2em;
	cursor:pointer;
}

.sublinkscontainer 
{
	position:absolute;
}

.sublinks 
{
	position:relative;
	float:left;/*can be any float*/
	margin-top:-2em;
}

.sublinks a 
{
	display:block;
	background:brown;
	padding:.2em 0 .2em 0;
	text-decoration:none;
}

.shifter 
{
	position:relative;
	float:left;
}

.sublinks .bgthing 
{
	height:2em;
	background:orange;
	display:block;
}

ul, li 
{
	margin:0;
	padding:0;
	list-type:none;
	
}


/*height limit*/
.link 
{
	top:-25em;
}

a.main 
{
	top:25em;
	width:7.5em;
}

a.main:hover, a.main:active, a.main:focus 
{
	margin-bottom:25em;
	background:orange;
	color:yellow;
	outline:none;
}

a.main:active b, a.main:focus b 
{
	outline: dotted thin;/*resetting the outline*/
}

.sublinkscontainer, .shifter 
{
	height:25em;
}

/*valid browser height maximization*/
.nav > .link 
{
	top:-1000em;
}

.link > a.main 
{
	top:1000em;
}

.link > a.main:hover, .link > a.main:active, .link > a.main:focus 
{
	margin-bottom:1000em;
}

.link > .sublinkscontainer, .sublinkscontainer > .shifter 
{
	height:1000em;
}


/*/valid browser height maximization*/


/*width limit*/

.sublinkscontainer 
{
	width:7.563em;
}

.sublinks a 
{
	width:7.5em;/*6.5 - padding*/
}


.sublinks a:hover, .sublinks a:active, .sublinks a:focus 
{
	margin-right:0.063em;
	background:orange;
	color:yellow;
}

.sublinks:hover a 
{/*opera fix*/
	margin-right:0.063em; 
}

a.main:focus + div .sublinks a, a.main:active + div .sublinks a 
{/*valid browser tab+hover fix*/
	margin-right:0;
}

.shifter 
{
	width:0.063em;
}

.sublinks .bgthing 
{
	width:7.5em;
}


.content 
{
	clear:both; 
}


a.main span 
{/*this nullifies the masks effects*/
	position:absolute;
	right:0;
	top:0;
	line-height:0;
}

a.main span i 
{/*the mask*/
	display:block;
	position:absolute;
	width:7.5em;
	background:brown;/*must be bg color for masking*/
	height:2em;
	top:0;
	right:auto;
}


.hidehotspot 
{
	position:relative;
	float:left;
	background:blue;
	height:2em;
	z-index:10;
}

.hidehotspot b 
{
	position:absolute;
	background-image:url('bkc1.jpg');
	height:2em;
	width:56.25em;
	display:block;
}


/*ie5 fault for not supporting paddings on links*/
.sublinks a b 
{
	font-weight:normal;
	position:relative;
	padding-left:.5em;
	display:block;
}

/*valid browser height fix*/
.link > a.main:hover,
.link > a.main:active,
.link > a.main:focus 
{
	margin-bottom:0;
}

.link > a.main:hover + div .sublinks a,
.link > a.main:active + div .sublinks a,
.link > a.main:focus + div .sublinks a 
{
	margin-right:0.063em;
}




<!--
/*/valid browser height fix*/
</style>

<!--[if lte IE 6]>
<style type="text/css">
.link {
margin-bottom:-2000px;/*only for ie5-6*/
}
/*ie5 fix*/
li {
float:left;
}
-->




.nav {/*only ie5-6 need this*/
height:25em;
position:absolute;
width:56.25em;
overflow:hidden;
}

<!--css to display image on mouseover event-->

.gallerycontainer{
position: relative;
/*Add a height attribute and set to largest image's height to prevent overlaying*/
}

.thumbnail img{
border: 1px solid white;
margin: 0 5px 5px 0;
}

.thumbnail:hover{
background-color: transparent;
}

.thumbnail:hover img{
border: 1px solid black;
}

.thumbnail span{ /*CSS for enlarged image*/
position: absolute;
padding: 5px;
left: -1000px;
visibility: hidden;
color: black;
text-decoration: none;
}

.thumbnail span img{ /*CSS for enlarged image*/
border-width: 0;
padding: 2px;
}

.thumbnail:hover span{ /*CSS for enlarged image*/
visibility: visible;
top: 115px;
left: 460px; /*position where enlarged image should offset horizontally */
z-index: 50;
}

body
{ 
	background-image:url('bkc.jpg'); 
}


</style>

</head>
<body>

<div class="navigation">
<div class="nav">
<div class="link">

<a class="main" href="abtus.php"><b>ABOUT US</b><span><i> </i></span></a>
</div>

<div class="link">
<a class="main" href="veg.php"><b>MENU</b><span><i> </i></span></a>

<div><!--IE6 needs this div-->
<div class="sublinkscontainer">
<div class="shifter"></div>
<ul class="sublinks">
             <li class="bgthing"> </li>
     <li><a href="veg.php"><b>Veg Pizzas</b></a></li>
         <li><a href="Nonveg_pizza.php"><b>Non Veg Pizzas</b></a></li>
         <li><a href="Side_Orders.php"><b>Side Orders</b></a></li>

         <li><a href="Beverages.php"><b>Beverages</b></a></li>
         <li><a href="Crusts.php"><b>Crusts</b></a></li>
	<li><a href="Toppings.php"><b>Toppings</b></a></li>
</ul>
</div>
</div>
</div>

<div class="link">
<a class="main" href="store_loc.php"><b>LOCATION</b><span><i> </i></span></a>
</div>


<div class="link">
<a class="main" href="callus.php"><b>CALL US</b><span><i> </i></span></a>
</div>


<div class="link">
<a class="main" href="ad1.php"><b>ADS</b><span><i> </i></span></a>
</div>


<div class="link">
<a class="main" href="fd.php"><b>FEEDBACK</b><span><i> </i></span></a>
</div>

<div class="hidehotspot"><b> </b></div>
</div>
</div>
<br>

<br>
<center><font size="4" color="Teal"><h3>MY CART</h3></font></center>
<form method="POST">
<table border="0" align="center" cellspacing="6" cellpadding="6" colspan="4">

<b><tr rowspan="1">
<th>Pic</th>
<th>Pizza</th>
<th>Price</th>
<th>Size</th>
<th>Quantity</th>
<th>Topping</th>
<th>Crust</th>
<th>Total</th></tr></b>


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
 
 $name=$row['cname'];
 $price=$row[price];
 $size=$row['size'];
 $qty=$row[qty];
 $top=$row['topping'];
 $crust=$row['crust'];
 $tot=$row[total];
 $img=$row['path'];
 $net_tot=$net_tot + $tot;
 
?>

<tr>
<td><?php echo "<img src=' ".$img." ' width=50 height=50 />"; ?></td>
<td><?php echo $name; ?></td>
<td><?php echo $price; ?></td>
<td><?php echo $size; ?></td>
<td><?php echo $qty; ?></td>
<td><?php echo $top; ?></td>
<td><?php echo $crust; ?></td>
<td><?php echo $tot;?></td>
</tr>

<?php 

  echo "<br />";
}


?>

</table>


<br><br><br>

<center><b>Net Total  : Rs<?php echo $net_tot; ?></b></center>


<br><br><br>
<center><input type="submit" value="Order" name="order"></center>

<?php

if(isset($_POST['order']))
{

if($_SERVER['REQUEST_METHOD']=='POST')
{
	if($net_tot==0)
	{
		echo "<script languge=\javascript\">";
		echo "Confirmed = window.confirm('Add items to the cart !');";
		echo"</script>";
	}
	else
	{
		echo '<script type="text/javascript" language="javascript"> 
		window.open("bill2.php","no","height=600,width= 700"); 
		</script>'; 
	}
}
}
?>
<br>
<center><input type="submit" value="Build New Order" name="build"/></center>
<?php

if(isset($_POST['build']))
{
 if($_SERVER['REQUEST_METHOD']=='POST')
 {
	$sql=mysql_query("delete from cart");
	echo '<script type="text/javascript" language="javascript"> 
	window.open("veg.php","_self"); 
	</script>'; 
 }

}

mysql_close($con);
?>

</form>

</body>
</html>



