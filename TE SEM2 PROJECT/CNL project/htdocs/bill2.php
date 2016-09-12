<html>
<head>
<title>
	BILL
</title>

<style type="text/css">
body
{ 
	background-image:url('clusbg.jpg');
}

</style>

<script type="text/vbscript">

Sub chkname()

	Dim TheForm,flag
	Set TheForm=Document.forms("Form1")
	
	flag=0
	If(Instr(TheForm.name1.value,"1") Or Instr(TheForm.name1.value,"2") Or Instr(TheForm.name1.value,"3"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"4") Or Instr(TheForm.name1.value,"5"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"6") Or Instr(TheForm.name1.value,"7"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"8") Or Instr(TheForm.name1.value,"9"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"0") Or Instr(TheForm.name1.value,"+"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"-") Or Instr(TheForm.name1.value,"*"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"/") Or Instr(TheForm.name1.value,"."))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"!") Or Instr(TheForm.name1.value,"~"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"@") Or Instr(TheForm.name1.value,"#"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"$") Or Instr(TheForm.name1.value,"%"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"^") Or Instr(TheForm.name1.value,"&"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"=") Or Instr(TheForm.name1.value,"_"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"(") Or Instr(TheForm.name1.value,")"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"|") Or Instr(TheForm.name1.value,"\"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"{") Or Instr(TheForm.name1.value,"}"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,";") Or Instr(TheForm.name1.value,":"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"<") Or Instr(TheForm.name1.value,">"))then
		flag=1
	ElseIf(Instr(TheForm.name1.value,"?") Or Instr(TheForm.name1.value,","))then
		flag=1
	End If

	If(flag=1)Then
		msgBox "Invalid name !"
	End If
End Sub

Sub chkemail()

	Dim TheForm,flag1,flag2
	Set TheForm=Document.forms("Form1")
	
	flag1=0
	flag2=0
	If(Instr(TheForm.email_id.value,"@"))then
		flag1=1
	End If
	If(Instr(TheForm.email_id.value,"."))then
		flag2=1
	End If

	If(flag1=0 Or flag2=0)Then
		msgBox "Email address should be of the form username@site.com !"
	End If

End sub

Sub chkmobno()

	Dim TheForm
	Set TheForm=Document.forms("Form1")

	If(Not IsNumeric(TheForm.mobno.value)) Then
		msgBox "Invalid mobile no !"
	ElseIf(Len(TheForm.mobno.value)<10 Or Len(TheForm.mobno.value)>10) Then
		msgBox "Number of digits should be 10 !"
	End If
	
End Sub

Sub chkempty()

	Dim TheForm,flag,msg
	Set TheForm=Document.forms("Form1")
	
	flag=0
	
	If(TheForm.name1.value="")Then
		flag=1
		msg="Enter first name !"
	ElseIf(TheForm.addr.value="")Then
		flag=1
		msg="Enter address !"
	ElseIf(TheForm.mobno.value="")Then
		flag=1
		msg="Enter mobile number !"
	ElseIf(TheForm.email_id.value="")Then
		flag=1
		msg="Enter email address !"
	End If
	
	If(flag=1)Then
		msgBox "All the fields are compulsory "+msg
	Else
		Call chkname()
		Call chkemail()
		Call chkmobno()
		msgBox "Order has been placed successfully !"
	End If

End Sub

Sub Cancel_onClick()

	Dim TheForm,flag
	Set TheForm=Document.forms("Form1")
	
	TheForm.name1.value=""
	TheForm.addr.value=""
	TheForm.mobno.value=""
	TheForm.email_id.value=""
	
End Sub
</script>


</head>

<body>
<center><font size="4" color="magenta"><h3>BILL</h3></font></center>
<hr>



<form method="POST" id="Form1">

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

$res=mysql_result(mysql_query("SELECT MAX(id) FROM bill"),0);
$id1=$res + 1;

?>


<tr>
<td><b>Bill no      :<?php echo $id1; ?></b></td>
</tr>

<tr>
<td><b>Total      :  Rs <?php echo $tot; ?></b></td>
</tr>

<tr>
<td>Name* :</td>
<td><input type="text" name="name1" onchange="chkname()"/></td>
</tr>

<tr>
<td>Full Address* :</td>
<td><textarea rows=5 cols=17 name="addr"></textarea></td>
</tr>

<tr>
<td>Contact Number* :</td>
<td><input type="text" name="mobno" onchange="chkmobno()"  /></td>
</tr>

<tr>
<td>Email Address* :</td>
<td><input type="text" name="email_id"  onchange="chkemail()"/></td>
</tr>


</table>

<PRE>
            </table><input type="submit" value="Confirm" name="confirm" onClick="chkempty()">        <input type="button" value="Cancel" name="Cancel" onClick="window.close()">
</PRE>

</form>

<?php

if($_SERVER['REQUEST_METHOD']=='POST')
{

$sql="Insert into bill values ($id1,$tot,'$_POST[name1]','$_POST[addr]','$_POST[mobno]','$_POST[email_id]')";

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


$sql=mysql_query("Select * from cart");

while($row=mysql_fetch_array($sql,MYSQL_ASSOC))
{

  $sql1="Insert into per_cart values ('$_POST[name1]','$row[cname]',$row[price],'$row[size]',$row[qty],'$row[topping]','$row[crust]',$row[total],'$row[path]')";
  if(!mysql_query($sql1,$con))
 {
	die('Error : '.mysql_error());
  }
}

$sql=mysql_query("delete from cart");


mysql_close($con);

}

?>


</body>
</html>



