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

<div style="margin:0 auto;width:400px;padding:90px;">

	<?php
	$n=0;
		$con=mysql_connect("localhost","root","");
		mysql_select_db("btcl",$con);
		
		$sel="SELECT * FROM request";
		$fet=mysql_query($sel,$con);
		while($row=mysql_fetch_array($fet))
		{
		if(($row['status']=='pending')&&($n==0))
		{
		$n=1;
			echo "<div style='margin:0 auto;border:1px solid #3300FF;border-radius:5px;padding:30px 20px 55px;'>";
	echo "<label style='font-size:18px;margin:0 auto;'>Loan Requested customer</label>";
	echo "<form method='post' action='accept.php?request=$row[requestno]'><table border='1' height='40'>";
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
	echo "<tr><td>Loan Amount</td><td><input type='text' name='lamount'></td></tr>";
	echo "</tr></table>";
	echo "<input type='submit' name='submit' value='Accept'  style='position:relative;top:25px;text-decoration:none;border-radius:5px;background:#3300FF;color:#fff;font-weight:bold;width:80px;height:23px;text-align:center; float:right;font-size:16px;'></form>";
	
	echo "<a href='reject.php?request=$row[requestno]' style='position:relative;right:10px;top:25px;text-decoration:none;border-radius:5px;background:#3300FF;color:#fff;font-weight:bold;width:80px;height:23px;text-align:center; float:right;font-size:16px;'>Reject</a>";
		}
	}	
	
	?>
	
</div>

</div>
</body>

<?php
}
?>