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

<div style="margin:0 auto;padding:90px;">

	<?php
		$con=mysql_connect("localhost","root","");
		mysql_select_db("btcl",$con);
		
		$sel="SELECT * FROM feedback";
		$fet=mysql_query($sel,$con);
		
		echo "<table style='font-size:13px;position:relative;left:100px;'><tr>";
	echo "<td align='center'>Complain NO</td><td align='center' style='width:130px;'>Customer Name</td><td  align='center' style='width:80px;'>Mobile NO</td><td  align='center' style='width:200px;'>E-mail</td><td  align='center' style='width:200px;'>About</td>";
	echo "<td align='center'>Status</td></tr>";
		
		while($row=mysql_fetch_array($fet))
		{
	echo "<tr><td align='center'>".$row['complainno']."</td><td  align='center' style='width:130px;'>".$row['fullname']."</td><td  align='center' style='width:80px;'>".$row['mobileno']."</td><td  align='center' style='width:200px;'>".$row['email']."</td><td  align='center' style='width:200px;'>Read complain fully .......</td>";
	echo "<td><a href='read.php?id=$row[complainno]' style='text-decoration:none;border:1px solid #0033CC;border-radius:5px;'>$row[5]</a></td>";
		}	
		echo "</tr></table>";
	
	?>
	
</div>

</div>
</body>

<?php
}
?>