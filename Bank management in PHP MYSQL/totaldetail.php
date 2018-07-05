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

<div style="padding:30px 10px;">
<?php

$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);
$sel=mysql_query("select * from adduser",$con);
echo "<table style='font-size:13px;'><tr>";
	echo "<td align='center'>Branch Name</td><td align='center'>Customer Id</td><td align='center'>Account Type</td><td align='center'>Account NO</td><td align='center'>Account Name</td>";
	echo "<td align='center'>Father Name</td><td align='center'>Mother Name</td><td align='center'>Address</td><td align='center'>City</td><td align='center'>State</td>";
	echo "<td align='center'>Nationality</td><td align='center'>Card NO</td><td align='center'>Religion</td><td>Gender</td><td align='center'>Birthday</td>";
	echo "<td align='center'>Mobile NO</td><td align='center'>Amount</td><td align='center'>Balance</td></tr>";
while($row=mysql_fetch_array($sel))
{
	echo "<tr style='padding:35px;'><td align='center'>$row[14]</td><td align='center'>$row[0]</td><td align='center'>$row[15]</td><td align='center'>$row[1]</td><td align='center'>$row[2]</td><td align='center'>$row[3]</td>";
	echo "<td align='center'>$row[4]</td><td align='center'>$row[5]</td><td align='center'>$row[6]</td><td align='center'>$row[7]</td><td align='center'>$row[8]</td><td align='center'>$row[9]</td>";
	echo "<td align='center'>$row[10]</td><td align='center'>$row[11]</td><td align='center'>$row[12]</td><td align='center'>$row[13]</td><td align='center'>$row[17]</td><td align='center'>$row[16]</td>";
}
echo "</tr></table>";

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