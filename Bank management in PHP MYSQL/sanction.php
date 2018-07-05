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
<div style='margin:0 auto;border:1px solid #3300FF;border-radius:5px;padding:20px 20px 55px;'><form method='post' action='#'>
<label style='font-size:18px;margin:0 auto;'>Accepted loan-Sanction</label>
<table border='1' height='40'>
<td>Branch Name</td><td><input type='text' name='braname' style='width:210px;'></td></tr>
<tr><td>Borrower Name </td><td><input type='text' name='broname' style='width:210px;'></td></tr>
<tr><td>Address</td><td><input type='text' name='add' style='width:210px;'></td></tr>
<tr><td>Profession</td><td><input type='text' name='pro' style='width:210px;'></td></tr>
<tr><td>Loan Date</td><td><input type='text' name='ldate' style='width:210px;'></td></tr>
<tr><td>Loan Type</td><td><?php $id=$_GET['ltype'];echo "$id"; ?></td></tr>
<tr><td>Identity</td><td><input type='text' name='ident' style='width:210px;height:25px;'></td></tr>
<tr><td>Mobile NO</td><td><input type='text' name='mobino' style='width:210px;'></td></tr>
<tr><td>Loan Amount</td><td><?php $amo=$_GET['lamo'];echo "$amo"; ?></td></tr>
</tr></table>
<input type='submit' name='submit' value='Loan' style='float:right;position:relative;top:25px;border:inherit;border-radius:5px;color:#fff;background-color:#0000CC;font-weight:bold;font-size:18px;'></form>
</div>

<?php 
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);
$id=$_GET['ltype'];
$amo=$_GET['lamo'];
if(isset($_POST['submit']))
{
if(($_POST['braname']!="")&&($_POST['broname']!="")&&($_POST['ldate']!="")&&($_POST['ident']!="")&&($_POST['mobino']!="")&&($_POST['add']!=""))
{
$branch=$_POST['braname'];
$broname=$_POST['broname'];
$ldate=$_POST['ldate'];
$ident=$_POST['ident'];
$add=$_POST['add'];
$prof=$_POST['pro']; 
$mobi=$_POST['mobino'];

    $inser="INSERT INTO loan(branchname,borrowername,profession,loandate,loantype,identity,address,mobileno,amount) 
    VALUES('".$branch."','".$broname."','".$prof."','".$ldate."','".$id."','".$ident."','".$add."','".$mobi."',".$amo.")";
mysql_query($inser,$con);
$sel1="delete from request where loantype='".$id."'";
mysql_query($sel1,$con);
header("Location: http://localhost/Btcl/loanpage.php");
}
else
    echo "Must Fulfill all filed";



}

?>

</div>

</div>
</body>

  <?php
}
  ?>