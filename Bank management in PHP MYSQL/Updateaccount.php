<?php
session_start();
 if(isset($_SESSION['user']))
 {
?>


<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 1080px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile1.php"); ?>
<div class="midtopbottom">
	
</div>
<div style="float:left;padding:25px 0px;">
	<?php include("leftmenu.php"); ?>
</div>
<div style="padding:30px 30px;">

<div align="center" style="margin: 0 auto; width:500px; border:#339966 1px solid;border-radius:10px;box-shadow: #e5e5e5 5px 5px;height:60px;padding:20px 30px;">

		<form method="post" name="accform" action="accupdate.php">
			<div style="float:left;">
				<label style="padding:0 20px 0 0;font-size:16px;font-weight:bold;font-family:Geneva, Arial, Helvetica, sans-serif;">Account NO</label><input type="text" name="accno" onClick="hide()" value="Enter account NO" style="width:230px;height:30px;color:#666666;"></input>
			</div>
			<div style="float:right;padding:18px;">
				<input type="submit" name="submit" value="Show Details" style="border:inherit;background-color:#3333FF;color:#FFFFFF;font-size:16px;font-weight:bold;border-radius:5px;height:30px;text-align:center;">
			</div>
		</form>
</div>
<div align="center" style="font-size:16px;font-weight:bold;padding:40px 180px;">

<?php
if(isset($_POST['successpdate']))
{
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);

$branc=$_POST['branch'];
$cuname=$_POST['cname'];
$faname=$_POST['fname'];
$moname=$_POST['mname'];
$adds=$_POST['addr'];
$city=$_POST['cit'];
$stt=$_POST['stat'];
$national=$_POST['nation'];
$birth=$_POST['dofb'];
$mobiln=$_POST['mobin'];

if($branc!="")
{
	$upd1="UPDATE adduser set branchname='$branc'";
	mysql_query($upd1,$con);
}

if($cuname!="")
{
	$upd2="UPDATE adduser set username='$cuname'";
	mysql_query($upd2,$con);
}

if($faname!="")
{
	$upd3="UPDATE adduser set father='$faname'";
	mysql_query($upd3,$con);
}

if($moname!="")
{
	$upd4="UPDATE adduser set mother='$moname'";
	mysql_query($upd4,$con);
}

if($adds!="")
{
	$upd5="UPDATE adduser set address='$adds'";
	mysql_query($upd5,$con);
}

if($city!="")
{
	$upd6="UPDATE adduser set city='$city'";
	mysql_query($upd6,$con);
}

if($stt!="")
{
	$upd7="UPDATE adduser set state='$stt'";
	mysql_query($upd7,$con);
}

if($national!="")
{
	$upd8="UPDATE adduser set nationality='$national'";
	mysql_query($upd8,$con);
}

if($birth!="")
{
	$upd9="UPDATE adduser set birthday='$birth'";
	mysql_query($upd9,$con);
}

if($mobiln!="")
{
	$upd10="UPDATE adduser set mobileno='$mobiln'";
	mysql_query($upd10,$con);
}

echo "Your account has been updated successfully.";

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