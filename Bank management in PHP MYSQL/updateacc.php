<?php
session_start();
 if(isset($_SESSION['user']))
 {
?>


<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 1080px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile1.php"); ?>
<div class="midtopbottom">
	
</div>
<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu.php"); ?>
</div>
<div style="padding:30px 30px;">

<div align="center" style="margin: 0 auto; width:500px; border:#339966 1px solid;border-radius:10px;box-shadow: #e5e5e5 5px 5px;height:60px;padding:20px 30px;">

		<form method="post" name="accform" action="accupdate.php">
			<div style="float:left;">
				<label style="padding:0 20px 0 0;font-size:16px;font-weight:bold;font-family:Geneva, Arial, Helvetica, sans-serif;">Account NO</label><input type="text" name="accno" onClick="hide()" value="Enter account NO" style="width:230px;height:30px;color:#666666;"></input>
			</div>
			<div style="float:right;padding:18px;">
				<input type="submit" name="submit" value="Show Details" style="border:inherit;background-color:#3333FF;color:#FFFFFF;font-size:16px;font-weight:bold;border-radius:5px;height:30px;text-align:center;">
			</div>
		</form>
</div>
<div align="center" style="font-size:16px;font-weight:bold;padding:40px 180px;">

<?php
if(isset($_POST['change']))
{
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);

$sel=mysql_query("select * from adduser",$con);
$row=mysql_fetch_array($sel);
 	echo "<form method='post' action='updateaccount.php'><table border='1'><tr>";
	echo "<tr><td>Branch Name</td><td><input type='text' name='branch' style='width:220px;'></td></tr>";
	echo "<tr><td>Account Type</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[15]</td></tr>";
	echo "<td>Customer ID </td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[0]</td></tr>";
	echo "<tr><td>Account NO </td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[1]</td></tr>";
	echo "<tr><td>Customer Name</td><td><input type='text' name='cname' style='width:220px;'></td></tr>";
	echo "<tr><td>Father Name</td><td><input type='text' name='fname' style='width:220px;'></td></tr>";
	echo "<tr><td>Mother Name</td><td><input type='text' name='mname' style='width:220px;'></td></tr>";
	echo "<tr><td>Address</td><td><input type='text' name='addr' style='width:220px;'></td></tr>";
	echo "<tr><td>City</td><td><input type='text' name='cit' style='width:220px;'></td></tr>";
	echo "<tr><td>State</td><td><input type='text' name='stat' style='width:220px;'></td></tr>";
	echo "<tr><td>Nationality</td><td><input type='text' name='nation' style='width:220px;'></td></tr>";
	echo "<tr><td>Card NO</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[9]</td></tr>";
	echo "<tr><td>Religion</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[10]</td></tr>";
	echo "<tr><td>Gender</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[11]</td></tr>";
	echo "<tr><td>Date of Birth</td><td><input type='text' style='width:220px;' name='dofb'></td></tr>";
	echo "<tr><td>Mobile NO</td><td><input type='text' style='width:220px;' name='mobin'></td></tr>";
	echo "<tr><td>Last Amount</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[17]</td></tr>";
	echo "<tr><td>Balance</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[16]</td></tr>";
	echo "</tr></table>";
	echo "<div style='padding:20px'><input type='submit' name='successpdate' value='Save & Change' style='border:inherit;border-radius:5px;text-align:center;font-weight:bold;font-size:16px;background-color:#3333FF;color:#FFFFFF;'/></div>";
	echo "</form>";

}

?>


</div>
<script>
function hide()
{
	document.accform.accno.value="";
}
</script>



</div>
</div>
</body>

<?php
} 
?>