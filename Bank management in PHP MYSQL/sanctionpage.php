<?php
session_start();
if(isset($_SESSION['user']))
{
?>


<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 980px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile1.php"); ?>
<div class="midtopbottom">
	
</div>
<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu.php"); ?>
</div>

<div style="margin:0 auto;width:400px;padding:90px;">
<?php
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);

$sel="select * from request";
$fet=mysql_query($sel,$con);
$row=mysql_fetch_array($fet);
if($row['status']=='Accepted')
echo "<div style='margin:0 auto;border:1px solid #3300FF;border-radius:5px;padding:20px 20px 55px;'>";
	echo "<label style='font-size:18px;margin:0 auto;'>Loan Accepted customer</label>";
	echo "<table border='1' height='40'>";
	echo "<td>Request NO </td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[0]</td></tr>";
	echo "<tr><td>Borrower Name </td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[1]</td></tr>";
	echo "<tr><td>Profession</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[2]</td></tr>";
	echo "<tr><td>Address</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[3]</td></tr>";
	echo "<tr><td>Loan Date</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[4]</td></tr>";
	echo "<tr><td>Loan Type</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[5]</td></tr>";
	echo "<tr><td>Annual Income</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[6]</td></tr>";
	echo "<tr><td>Reference Name</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[7]</td></tr>";
	echo "<tr><td>Reference Address</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[8]</td></tr>";
	echo "<tr><td>Reference Identity</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[9]</td></tr>";
	echo "<tr><td>Borrower Mobile NO</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[10]</td></tr>";
	echo "<tr><td>Loan Amount</td><td>&nbsp;&nbsp;&nbsp;&nbsp;$row[11]</td></tr>";
	echo "</tr></table>";
	echo "<a href='sanction.php?ltype=$row[5]&&lamo=$row[11]' style='float:right;position:relative;top:25px;width:155px;height:25px;font-size:18px;font-weight:bold;border:inherit;border-radius:5px;background-color:#0000CC;color:#fff;text-decoration:none;'>Sanction Loan</a>";
	echo "</div>";

?>

</div>

</div>
</body>


<?php
}
?>