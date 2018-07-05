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
<div align="center" style="width:900px;height:600px;float:right;padding:120px 0 0 40px;">
<div align="center" style="padding:60px 20px;">
		<?php
			$con=mysql_connect("localhost","root","");
			     mysql_select_db("BTCL",$con);
			if(isset($_POST['submit10']))
			{
			$sel="select * from adduser where balance between 10000 and 49999";
			$ql=mysql_query($sel,$con);
			
			while($row=mysql_fetch_array($ql))
			{
			$balance=$row['balance'] + $row['balance'] * .1;
			$sql1="update adduser set balance ='$balance'";
			mysql_query($sql1,$con);
			}
			
			$sel1="select * from adduser where balance between 50000 and 99999";
			$ql1=mysql_query($sel1,$con);
			
			while($row1=mysql_fetch_array($ql1))
			{
			$balance1=$row1['balance'] + $row1['balance'] * .15;
			$sql2="update adduser set balance ='$balance1'";
			mysql_query($sql2,$con);
			}
			
			$sel2="select * from adduser where balance between 100000 and 9999999";
			$ql2=mysql_query($sel2,$con);
			
			while($row2=mysql_fetch_array($ql2))
			{
			$balance2=$row2['balance'] + $row2['balance'] * .2;
			$sql3="update adduser set balance ='$balance2'";
			mysql_query($sql3,$con);
			}
			
			}
		?>
	<div>
</div>
</div>
</div>
<?php 
	} 
?>
</body>       
