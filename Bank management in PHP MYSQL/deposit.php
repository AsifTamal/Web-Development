<?php 
	session_start();
	if(isset($_SESSION['user']))
	{
?>
<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 980px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile1.php"); ?>
<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu.php"); ?>
</div>
<div align="center" style="padding:25px;">
	<div align="center" style="padding:30px 15px;border:#3333FF 1px solid;border-radius:5px;width:300px;height:100px;width:470px;">
	<form method="post" name="accform" style="float:left;">
		<div><label style="font-size:16px;font-weight:bold;float:left;padding:0 20px;">Account NO</label><input type="text" name="accno" onClick="hide()" value="Enter account NO" style="width:230px;height:30px;color:#666666;"></input></div>
		
		<div style="padding:5px;"><label style="font-size:16px;font-weight:bold;float:left;padding:0 20px;">Amount</label><input type="text" name="amount" onClick="hide1()" value="Enter amount" style="width:230px;height:30px;color:#666666;position:relative;left:17px;"></input></div>
		<div align="right" style="padding:25px; position:relative;left:80px;">
			<input type="submit" name="submit" value="Submit" style="border:inherit;background-color:#3333FF;border-radius:5px;color:#FFFFFF;font-size:18px;font-weight:bold;" />
		</div>
	</form>
	</div>
</div>
<div style="width:700px;height:400px;float:right;padding:30px;">
<div style="padding:5px 40px;float:left;position:relative;right:90px;">
	<?php
		$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);
if(isset($_POST['submit']))
{
$accono=$_POST['accno'];
$amount=$_POST['amount'];
$sel=mysql_query("select * from adduser where accountno='$accono'",$con);
$row=mysql_fetch_array($sel);
if($row['accountno']==$accono)
{
$id=$row['customerid'];
$user=$row['username'];
$date=mktime(0,0,0,date("d"),date("m"),date("y"));
$date1=date("d/m/y",$date);
		$balan=$row['balance']+$amount;
		$updt="UPDATE adduser set balance='$balan'";
		mysql_query($updt,$con);
		$updt1="UPDATE adduser set amount='$amount'";
		mysql_query($updt1,$con);
		$str="insert into deposit(customerid,accountno,customername,date,depositamount) values(".$id.",".$accono.",'".$user."','".$date1."',".$amount.")";
		mysql_query($str,$con);
		
		echo "Account successfully Updated by $amount";
	
}
else
echo "Don't match account";
}
	?>
	
<script>
function hide1()
{
	document.accform.amount.value="";
}
function hide()
{
	document.accform.accno.value="";
}

</script>


</div>
</div>
</div>
</body>


<?php 
}
?>