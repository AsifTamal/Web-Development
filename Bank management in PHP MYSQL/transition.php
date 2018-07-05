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
<div style="width:700px;height:400px;float:right;padding-top:30px;margin:0 auto;">
<div style="padding:30px 20px;float:left;border:#3333FF 1px solid;border-radius:5px;">
	<form method="post">
	
		<div align="center" style="position:relative;bottom:15px;"><a style="background-color:#3366FF;font-size:14px;font-weight:bold;border-radius:5px; color:#FFFFFF; text-decoration:blink;" href="cdetail.php">Please Identify Account</a></div>
	
		<table>
			<tr>
				<td><label style="font-size:18px;font-weight:bold;color:#666666;">From</label></td><td></td>
			</tr>
			<tr>
				<td><label style="font-size:14px;font-weight:bold;">Account NO</label></td><td><input type="text" name="acc1"></td>
			</tr>
			<tr>
				<td><label style="font-size:18px;font-weight:bold;color:#666666;">To</label></td><td></td>
			</tr>
			<tr>
				<td><label style="font-size:14px;font-weight:bold;">Account NO</label></td><td><input type="text" name="acc2"></td>
			</tr>
			<tr>
				<td><label style="font-size:14px;font-weight:bold;">Balance</label></td><td><input type="text" name="amount" onClick="identify()"></td>
			</tr>
			<tr>
				<td></td><td></td><td><input type="submit" name="submit" value="Transfer" style="width:80px;height:30px;font-size:16px;color:#FFFFFF;background-color:#3333FF;border:inherit;border-radius:5px;text-align:center;position:relative;top:45px;left:20px;"></td>
			</tr>
		</table>
	</form>
</div>

<div style="float:left;position:relative;right:250px;bottom:25px;"> 
	<?php 
		if(isset($_POST['submit']))
		{
			$con=mysql_connect("localhost","root","");
			mysql_select_db("btcl",$con);
			
			$account1=$_POST['acc1'];
			$account2=$_POST['acc2'];
			$amount=$_POST['amount'];
			
			if(($account1!="")&&($account2!="")&&($amount!=""))
			{
				$sel1="select * from adduser where accountno=$account1";
				$fet1=mysql_query($sel1,$con);
				$row1=mysql_fetch_array($fet1);
				
				$sel2="select * from adduser where accountno=$account2";
				$fet2=mysql_query($sel2,$con);
				$row2=mysql_fetch_array($fet2);
				
				if(($row1['accountno']==$account1)&&($row2['accountno']==$account2))
				{
					$balan1=$row1['balance']-$amount;
					$balan2=$row2['balance']+$amount;
					
					$upd1="UPDATE adduser set balance=$balan1,amount=$amount where accountno=$account1";
					mysql_query($upd1,$con);
					
					$upd2="UPDATE adduser set balance=$balan2,amount=$amount where accountno=$account2";
					mysql_query($upd2,$con);
					
					echo "Accounts are successfully transmited";
				}
				else
				echo "<a style='text-decoration:blink;font-size:16px;font-weight:bold:'>Accounts are not available</a>";
			}
			else
			{
				echo "<a style='text-decoration:blink;font-size:16px;font-weight:bold:'>Must fullfil all field</a>";
			}
		}
	?>
</div>


</div>
</div>
</body>
<script type="text/javascript">
	function identify()
	{
		var result=confirm("Have you identified account ?");
		if(result==true)
		{
			alert("Wish you happy day.");
		}
	}
</script>

<?php
}
?>