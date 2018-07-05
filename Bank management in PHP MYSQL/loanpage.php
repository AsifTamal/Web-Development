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
<div style="padding:30px 20px;float:left;">

<div align="center" style="padding:50px 10px;">
<?php
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);
$sel="select * from request";
$fet=mysql_query($sel,$con);
$row=mysql_fetch_array($fet);

if($row['status']=='Accepted')
{
echo "<a href='sanctionpage.php' style='border-radius:5px;text-decoration:none;width:250px;height:60px;font-size:24px;text-align:center;font-weight:bold; background-color:#3333FF;color:#FFFFFF;border:#333333 1px solid;'>Accepted Request</a>";
}
?>
</div>

	<div align="center" style="border:#663366 1px solid;border-radius:5px;float:right;">
	<ul>
		<li style="list-style:none;">
			<h3>Some information About taking loan........</h3>
			<ul style="list-style:decimal;">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</li>
	</ul>
	</div>
	
		<div align="center"><a href="requestpage.php" style="text-decoration:none;width:250px;height:60px;font-size:24px;text-align:center;font-weight:bold; background-color:#3333FF;color:#FFFFFF;border:#333333 1px solid;">Request TO Loan</a></div>
		
</div>
</div>
</div>
</body>


<?php
}
?>