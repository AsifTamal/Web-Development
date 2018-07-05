<?php 
session_start();
if(isset($_SESSION['user']))
{
?>
<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 1000px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile1.php"); ?>

<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu.php"); ?>
</div>
<div style="padding-top:30px;width:800px;margin:0 auto;float:right;padding-right:70px;">
<?php include("userform.php"); ?>
</div>
<?php } ?>
</div>
</body>
