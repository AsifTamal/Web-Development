<?php
session_start();
 if(isset($_SESSION['useradmin']))
 {
?>



<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 980px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile2.php"); ?>
<div class="midtopbottom">
	
</div>
<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu1.php"); ?>
</div>
<div style="padding:30px 30px;">

<div align="center" style="margin: 0 auto; width:500px; border:#339966 1px solid;border-radius:10px;box-shadow: #e5e5e5 5px 5px;height:60px;padding:20px 30px;">

		<form method="post" name="accform">
			<div style="float:left;">
				<label style="padding:0 20px 0 0;font-size:16px;font-weight:bold;font-family:Geneva, Arial, Helvetica, sans-serif;">Account NO</label><input type="text" name="accno" onClick="hide()" value="Enter account NO" style="width:230px;height:30px;color:#666666;"></input>
			</div>
			<div style="float:right;padding:18px;">
				<input type="submit" name="submit" value="Show Details" style="border:inherit;background-color:#3333FF;color:#FFFFFF;font-size:16px;font-weight:bold;border-radius:5px;height:30px;text-align:center;">
			</div>
		</form>
</div>
<div align="center" style="font-size:16px;font-weight:bold;padding:40px 100px;">

<?php

$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);
if(isset($_POST['submit']))
{
$accono=$_POST['accno'];
$sel=mysql_query("select * from adduser where accountno='$accono'",$con);
$row=mysql_fetch_array($sel);
if(($row['accountno']==$accono)&&($accono!=""))
{
 	echo "<table border='1'><tr>";
	echo "<tr><td>Branch Name</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[14]</td></tr>";
	echo "<td>Customer ID </td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[0]</td></tr>";
	echo "<tr><td>Account Type</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[15]</td></tr>";
	echo "<tr><td>Account NO </td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[1]</td></tr>";
	echo "<tr><td>Customer Name</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[2]</td></tr>";
	echo "<tr><td>Father Name</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[3]</td></tr>";
	echo "<tr><td>Mother Name</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[4]</td></tr>";
	echo "<tr><td>Address</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[5]</td></tr>";
	echo "<tr><td>City</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[6]</td></tr>";
	echo "<tr><td>State</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[7]</td></tr>";
	echo "<tr><td>Nationality</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[8]</td></tr>";
	echo "<tr><td>Card NO</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[9]</td></tr>";
	echo "<tr><td>Religion</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[10]</td></tr>";
	echo "<tr><td>Gender</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[11]</td></tr>";
	echo "<tr><td>Date of Birth</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[12]</td></tr>";
	echo "<tr><td>Mobile NO</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[13]</td></tr>";
	echo "<tr><td>Last Amount</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[17]</td></tr>";
	echo "<tr><td>Balance</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[16]</td></tr>";
	echo "</tr></table>";
}
else
{
	echo "Wrong Account NO";
}
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