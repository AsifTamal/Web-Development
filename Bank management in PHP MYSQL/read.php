<?php
session_start();
 if(isset($_SESSION['useradmin']))
 {
?>

<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 980px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile2.php"); ?>
<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu1.php"); ?>
</div>

<div align="center" style="padding:30px 10px;">
<?php
$con=mysql_connect("localhost","root","");
$id=$_GET['id'];
mysql_select_db("btcl",$con);
$str="update feedback set status='read' where complainno=$id";
mysql_query($str,$con);

$id=$_GET['id'];
$str1="select * from feedback";
$fet=mysql_query($str1,$con);
while($row=mysql_fetch_array($fet))
{
if($row[0]==$id)
{
echo "<div><div><p style='position:relative;right:200px;text-align:left;border:#6600FF 1px solid;width:400px;position:relative;left:100px;top:30px;border-radius:5px;padding:20px 20px;'>".$row['about']."</p></div>";
echo "<div><a href='showcomplain.php' style='border:1px solid #0033CC;border-radius:5px;text-decoration:none;position:relative;left:180px;top:30px;'>GO Back</a></div></div>";
}
}
?>

</div>

</div>
</div>
</body>

<?php
} 
?>