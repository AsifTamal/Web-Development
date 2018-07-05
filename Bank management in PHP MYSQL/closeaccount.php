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
<div style="padding:30px 30px;">

<div align="center" style="margin: 0 auto; width:500px; border:#339966 1px solid;border-radius:10px;box-shadow: #e5e5e5 5px 5px;height:60px;padding:20px 30px;">

		<form method="post" name="accform" action="#">
			<div style="float:left;">
				<label style="padding:0 20px 0 0;font-size:16px;font-weight:bold;font-family:Geneva, Arial, Helvetica, sans-serif;">Account NO</label><input type="text" name="accno" onClick="hide()" value="Enter account NO" style="width:230px;height:30px;color:#666666;"></input>
			</div>
			<div style="float:right;padding:18px;">
				<input type="submit" name="submit" value="Close Account" style="border:inherit;background-color:#3333FF;color:#FFFFFF;font-size:16px;font-weight:bold;border-radius:5px;height:30px;text-align:center;">
			</div>
		</form>
</div>
<div align="center" style="font-size:16px;font-weight:bold;padding:40px 100px;">
	<?php     
    if(isset($_POST['submit']))
    {
			$con=mysql_connect("localhost","root","");
			mysql_select_db("btcl",$con);
            $accno=$_POST['accno'];
			if(mysql_query("DELETE FROM adduser WHERE accountno=$accno",$con))
            {
                echo "Account Successfully Closed";
            }
            else
            echo "Wrong account NO";
            
	}	
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