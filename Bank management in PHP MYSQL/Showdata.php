<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 980px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile1.php"); ?>
<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu.php"); ?>
</div>
<div style="width:900px;height:600px;float:right;padding-top:30px;">
<div style="padding:30px 20px;float:left;">
	<?php
		$con=mysql_connect("localhost","root","");
		mysql_select_db("btcl",$con);
		
		$sel="SELECT * FROM adduser";
		$qu=mysql_query($sel,$con);
		while($row=mysql_fetch_array($qu))
		{
			echo "<table border="1"><tr><td>Customer ID</td><td>Account NO</td><td>Customer Name</td><td>Father Name</td>";
			echo "<td>Mother Name</td>";
			
			echo "</tr></table>";
		}
		
	?>
</div>

</div>
</div>
</body>