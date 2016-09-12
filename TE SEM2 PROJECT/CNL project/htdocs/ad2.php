
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


.margin4
{
	margin-left:120px;
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


.imgpos
{
	position:absolute;
	left:800px;
	top:60px;
	z-index:-1;
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
<a class="main" href="#MAIN"><b>ADS</b><span><i> </i></span></a>
</div>


<div class="link">
<a class="main" href="fd.php"><b>FEEDBACK</b><span><i> </i></span></a>
</div>

<div class="hidehotspot"><b> </b></div>
</div>
</div>


<a href="ad1.php">
<img  class="i1" border="0" src="pictures/back.png" alt="HTML tutorial" width="60" height="60" style="position:absolute; left:65px; top:290px;" ></a>

<div style="position: absolute; left:140px; top: 125px;">
  <embed src="b.avi" width="600" height="400"  z-index:-1 autostart="TRUE">
</div>

<a href="ad3.php">
<img  class="i1" border="0" src="pictures/forward.png" alt="HTML tutorial" width="60" height="60" style="position:absolute; right:530px; top:290px;" ></a>


<a href="ad1.php">
<img  class="i1" border="0" src="pictures/g.jpg" alt="HTML tutorial" width="90" height="80" style="position:absolute; right:250px; top:70px;" ></a>


<a href="ad2.php">
<img  class="i1" border="0" src="pictures/h.jpg" alt="HTML tutorial" width="90" height="80" style="position:absolute; right:250px; top:170px;" ></a>

<a href="ad3.php">
<img  class="i1" border="0" src="pictures/i.jpg" alt="HTML tutorial" width="90" height="80" style="position:absolute; right:250px; top:270px;" ></a>

<a href="ad4.php">
<img  class="i1" border="0" src="pictures/j.jpg" alt="HTML tutorial" width="90" height="80" style="position:absolute; right:250px; top:370px;" ></a>

<a href="ad5.php">
<img  class="i1" border="0" src="pictures/k.jpg" alt="HTML tutorial" width="90" height="80" style="position:absolute; right:250px; top:470px;" ></a>

<div style="position: absolute; right: 45px; top: 95px;">
<span style="font-family:calibri;font-size:13pt; color:black;">Butterscotch Mousse Cake</span>
</div>

<div style="position: absolute; right: 100px; top: 195px;">
<span style="font-family:calibri;font-size:13pt; color:black;">Double Burst Pizza</span>
</div>

<div style="position: absolute; right: 15px; top: 295px;">
<span style="font-family:calibri;font-size:13pt; color:black;">Pasta Italiano & Mexican Wrap</span>
</div>

<div style="position: absolute; right: 145px; top: 395px;">
<span style="font-family:calibri;font-size:13pt; color:black;">Pizza Mania</span>
</div>

<div style="position: absolute; right: 100px; top: 495px;">
<span style="font-family:calibri;font-size:13pt; color:black;">Cheese Burst Pizza</span>
</div>

<a href="viewcart.php">
<img border="0" src="cart.jpg" alt="View Cart" style="position:absolute; left:880px; top:10px;" width=40 height=40></a>
</body>
</html>



