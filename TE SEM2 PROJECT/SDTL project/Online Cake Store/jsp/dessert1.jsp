<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Welcome To Copper Chocs</title>

</title>
<Script Language = JavaScript>

function MessageBoard(cake)
{
window.open("addtocart.jsp?name1="+cake,"no","height= 400,width= 600");
}
</Script>

<style type="text/css">

.caption
{
	
	font-family:Garamond;
	font-size:17px;
	text-align:center;
	color:black;
}

ul.main
{
	float:left;
	width:100%;
 	margin-left:120px;
	margin-top:140px;
	padding:0;
	list-style-type:none;
}


a.menu
{
	float:left;
	width:3.8cm;
	text-align:center;
	text-decoration:none;
	color:white;
	background-color:brown;
	padding:0.2em 0.6em;
	border-right:1px solid white;
}


ul.submain
{
	float:left;
	width:100%;
 	margin-left:60px;
	margin-top:15px;
	padding:0;
	list-style-type:none;
}


a.submenu
{
	float:left;
	width:4.9cm;
	text-align:center;
	text-decoration:none;
	color:black;
	background-color:white;
	padding:0em 0em;
	border-right:1px solid white;
}

a.menu:hover{background-color:orange;}
li{display:inline;}

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
	left:600px;
	top:275px;
	z-index:50;
	border: 1px solid black;
	padding: 2px;
}


.veg
{
	font-family:Garamond;
	font-size:20px;
	width:6cm;
	text-decoration:none;
	
	margin-left:120px;
	color:white;
	background-color:SteelBlue;
	padding:0.2em 0.6em;
}

.submenu_veg
{
	font-family:Garamond;
	font-size:20px;	
	margin-left:120px;
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
top: 270px;
left: 595px; /*position where enlarged image should offset horizontally */
z-index: 50;
}

</style>
<body>
<br>
<ul class="main">
<li><a class="menu" href="page1.jsp">HOME</a></li>
<li><a class="menu selected" href="About us.jsp">ABOUT US</a></li>
<li><a class="menu" href="choc1.jsp">THE MENU</a></li>
<li><a class="menu" href="outlets.jsp">OUR OUTLETS</a></li>
<li><a class="menu" href="contact.jsp">CALL US</a></li>
<li><a class="menu" href="feedback1.jsp">FEEDBACK</a></li>
</ul>

<ul class="submain">
<li><a class="submenu" href="dessert1.jsp">DESSERT</a></li>
<li><a class="submenu selected" href="choc1.jsp">CHOCOLATE CAKES</a></li>
<li><a class="submenu" href="fruit1.jsp">FRUIT CAKES</a></li>
<li><a class="submenu" href="small1.jsp">SMALL BITES</a></li>
<li><a class="submenu" href="special1.jsp">SPECIAL CAKES</a></li>
<li><a class="submenu" href="ad1.jsp">ADS</a></li>
</ul>

<div class="navigation">
<div class="nav">

<div class="hidehotspot"><b> </b></div>
</div>
</div>
<br>

<div class="margin1">
<br>
<hr class="v1">

</div>

<span><img class="v2" src="61.jpg" width=390 height=320/>


<div class="margin"></div>
<div class="gallerycontainer">
<b>
<br>
<div class="veg">Desserts</div><br>
	
	<a class="thumbnail" href="#"  onClick="MessageBoard('Chocolate Torte')" STYLE="TEXT-DECORATION: NONE"><div class="submenu_veg">Chocolate Torte</div>
	<span><img src="55.jpg" width=390 height=320/>
	<br/><div class="caption">Chocolate Torte</div>
	</span></a>
	<br>
	<a class="thumbnail" href="#" onClick="MessageBoard('Strawberry Torte')" STYLE="TEXT-DECORATION: NONE"><div class="submenu_veg">Strawberry Torte</div>
	<span><img src="56.jpg" width=390 height=320/>
	<br/><div class="caption">Strawberry Torte</div>
	</span></a>
	<br>

	<a class="thumbnail" href="#" onClick="MessageBoard('Chocolate Mousse')" STYLE="TEXT-DECORATION: NONE">
	<div class="submenu_veg">Chocolate Mousse</div>
	<span><img src="57.jpg" width=390 height=320/>
	<br/><div class="caption">Chocolate Mousse</div>
	</span></a>
	<br>

	<a class="thumbnail" href="#" onClick="MessageBoard('Assorted Dessert')" STYLE="TEXT-DECORATION: NONE"><div class="submenu_veg">Assorted Dessert</div>
	<span><img src="58.jpg" width=390 height=320/>
	<br/><div class="caption">Assorted Dessert</div>
	</span></a>
	<br>

	<a class="thumbnail" href="#" onClick="MessageBoard('Supreme Alaska')" STYLE="TEXT-DECORATION: NONE"><div class="submenu_veg">Supreme Alaska</div>
	<span><img src="59.jpg" width=390 height=320/>
	<br/><div class="caption">Supreme Alaska</div>
	</span></a>
	<br>

	
	<a class="thumbnail" href="#" onClick="MessageBoard('Tiramisu')" STYLE="TEXT-DECORATION: NONE"><div class="submenu_veg">Tiramisu</div>
	<span><img src="60.jpg" width=390 height=320/>
	<br/><div class="caption">Tiramisu</div>
	</span></a>
	<br>



</b>
</div>
</div>
<img src="logo.png" alt="HTML tutorial" style="position:absolute; left:130px; top:0px;">
<a href="cart.jsp">
<img border="0" src="cart.jpg" alt="View Cart" style="position:absolute; left:1060px; top:115px;" width=50 height=50></a>
</body>
</html>