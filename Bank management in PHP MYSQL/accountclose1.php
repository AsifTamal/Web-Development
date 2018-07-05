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
<div align="center" style="padding:30px 30px;">

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
 	echo "<table border='1'>";
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
	echo "</table>";
	echo "<form method='post' action='closeaccount1.php'>";
	echo "<div style='position:relative;top:20px;'><label style='font-size:13px;'>Do you really want to close the account</label>";
	echo "<div style='width:40px;padding-right:15px;position:relative;left:70px;top:10px;'><input type='Submit' name='submity' value='Yes' style='color:#fff;font-size:16px;font-weight:bold;border:inherit;border-radius:5px;background-color:#3333FF;' />";
	echo "</div><div><input type='Submit' name='submitn' value='No' style='color:#fff;font-size:16px;font-weight:bold;border:inherit;border-radius:5px;background-color:#3333FF;position:relative;left:100px;width:40px;bottom:12px;text-align:center;' />";
	echo "</div></div></form>";
}
else
{
	echo "Wrong Account NO";
	echo "<a href='closeaccount1.php' style='text-decoration:none;background-color:#0000CC;border:1px;border-radius:5px;color:#fff;position:relative;left:30px;width:25px;height:18px;font-size:14px;font-weight:bold;'>Back</a>";
}
}
?>

</div>
</div>
</body>

<?php
} 
?>
