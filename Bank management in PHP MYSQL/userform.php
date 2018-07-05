<?php 
if(isset($_SESSION['user']))
{
?>
<div>
	<?php 
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);

if(isset($_POST['submituseradd']))
{
if(($_POST['bname']!="")&&($_POST['fname']!="")&&($_POST['accno']!="")&&($_POST['sexual']!="")&&($_POST['acctype']!="")&&($_POST['mobino']!="")&&($_POST['padd']!="")&&($_POST['cardno']!="")&&($_POST['dofb']!="")&&($_POST['city']!="")&&($_POST['religion']!="")&&($_POST['national']!=""))
{
$branch=$_POST['bname'];
$accno=$_POST['accno'];
$uname=$_POST['fname'];
$gname=$_POST['faname'];
$mname=$_POST['moname'];
$add=$_POST['padd'];
$cit=$_POST['city'];
$stat=$_POST['state'];
$nation=$_POST['national'];
$religio=$_POST['religion'];
$card=$_POST['cardno'];
$db=$_POST['dofb'];
$mobil=$_POST['mobino'];
$bala=$_POST['balance'];
$amo=$_POST['amount'];
$sex=$_POST['sexual'];
$acct=$_POST['acctype'];

$sel="select * from adduser";
$fet=mysql_query($sel,$con);
$row=mysql_fetch_array($fet);

if($row['accountno']!=$accno)
{
	$inser="INSERT INTO adduser(accountno,username,father,mother,address,city,state,nationality,cardno,Religion,gender,birthday,mobileno,branchname,accounttype,balance,amount) VALUES('".$accno."','".$uname."','".$gname."','".$mname."','".$add."','".$cit."','".$stat."','".$nation."','".$card."','".$religio."','".$sex."','".$db."','".$mobil."','".$branch."','".$acct."','".$bala."','".$amo."')";
mysql_query($inser,$con);
echo  "<label style='font-size:18px;fon-weight:bold;'>$uname is successfully registered</label>";
}
else
echo "<label style='font-size:18px;fon-weight:bold;'>Account number is not available</label>";
}
else
{
	echo "<label style='font-size:18px;fon-weight:bold;'>Must Fulfill all filed</label>";
}

}

mysql_close($con);
?>


</div>
<div  style="padding-top:30px;background-color:#CCCCCC;padding-bottom:30px;border:#3300FF 1px solid;border-radius:5px;">

<form method="post">
<table>
<tr>
		<td><label>Branch Name</label></td><td style="width:180px; height:28px;"><input type="text" name="bname" style="width:220px; height:28px;"></input></td>
	</tr>
<tr>
		<td><label>Account NO</label></td><td style="width:180px; height:28px;"><input type="text" name="accno" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Full Name</label></td><td style="width:180px; height:28px;"><input type="text" name="fname" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Father's Name</label></td><td style="width:180px; height:28px;"><input type="text" name="faname" style="width:220px;  height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Mother's Name</label></td><td style="width:180px; height:28px;"><input type="text" name="moname" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Present Address</label></td><td style="width:180px; height:28px;"><input type="text" name="padd" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>City</label></td><td style="width:220px; height:28px;"><input type="text" name="city" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>State</label></td><td style="width:220px; height:28px;"><input type="text" name="state" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Nationality</label></td><td style="width:220px; height:28px;"><input type="text" name="national" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Religion</label></td><td style="width:220px; height:28px;"><input type="text" name="religion" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Card NO</label></td><td style="width:220px; height:28px;"><input type="text" name="cardno" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Gender</label></td><td style="width:190px; height:28px;"><select style="width:190px; height:28px;" name="sexual"><option id="null" value="Null">None</option><option id="male" value="male">Male</option><option id="male" value="female">Female</option></select></td>
	</tr>
	<tr>
		<td><label>Date of Birth</label></td><td style="width:190px; height:28px;"><input type="text" name="dofb" style="width:190px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Mobile NO</label></td><td style="width:220px; height:28px;"><input type="text" name="mobino" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td><label>Account Type</label></td><td style="width:220px; height:28px;"><select style="width:220px; height:28px;" name="acctype"><option>Savings</option><option>Current</option><option>Fixed</option><option>Access</option><option>Others</option></select></td>
	</tr>
	<tr>
	<td><label>Deposit Amount</label></td><td style="width:220px; height:28px;"><input type="text" name="amount" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
	<td><label>Balance</label></td><td style="width:220px; height:28px;"><input type="text" name="balance" style="width:220px; height:28px;"></input></td>
	</tr>
	<tr>
		<td></td><td></td><td></td><td style="padding:0 80px;"></td><td style="padding:0 80px;"></td><td><input type="submit" name="submituseradd" value="Register" style="position:relative;top:45px;border:inherit;background-color:#330099;border-radius:5px;color:#FFFFFF;font-weight:bold;height:30px;text-align:center;" onClick="validate()"></td>
	</tr>
</table>
</form>

<?php } ?>
</div>
