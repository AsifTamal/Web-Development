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
<div style="width:900px;height:600px;float:right;padding:30px 0 0 60px;">

<?php 
	if(isset($_POST['submit']))
	{
	
	$con=mysql_connect("localhost","root","");
	mysql_select_db("btcl",$con);
		
		if(($_POST['brname']!="")&&($_POST['profes']!="")&&($_POST['addrs']!="")&&($_POST['ldate']!="")&&($_POST['ltype']!="")&&($_POST['aincome']!="")&&($_POST['referen']!="")&&($_POST['referadd']!="")&&($_POST['referident']!="")&&($_POST['mobin']!="")&&($_POST['amount']!=""))
		{
			$bname=$_POST['brname'];
			$prfesion=$_POST['profes'];
			$addres=$_POST['addrs'];
			$lodate=$_POST['ldate'];
			$lotype=$_POST['ltype'];
			$annualin=$_POST['aincome'];
			$refern=$_POST['referen'];
			$referadds=$_POST['referadd'];
			$referiden=$_POST['referident'];
			$mobil=$_POST['mobin'];
			$amunt=$_POST['amount'];
			
			$sel="INSERT INTO request(borrowername,profession,address,loandate,loantype,annualincome,refer,referaddress,referidentity,mobileno,amount,status) VALUES ('".$bname."','".$prfesion."','".$addres."','".$lodate."','".$lotype."','".$annualin."','".$refern."','".$referadds."','".$referiden."','".$mobil."','".$amunt."','pending')";
			mysql_query($sel,$con);
			header("Location: http://localhost/Btcl/loanpage.php");
		}
		else
		{
			echo "<div align='center' style='position:relative;top:30px;font-weight:bold;font-size:16px;'><a style='text-decoration:blink;'>Must Fulfill all field</a></div>";
		}
	}
?>

<div style="width:450px; margin:0 auto;padding:30px 20px;border:#3333FF 1px solid;border-radius:5px;">
	<form method="post">
		<table>
		<tr>
		<td>
			<label>Borrower Name</label></td><td><input style="width:220px;height:25px;" type="text" name="brname">
		</td>
		</tr>
		<tr>
		<td>
			<label>Profession</label></td><td><input style="width:220px;height:25px;" type="text" name="profes">
		</td>
		</tr>
		<tr>
		<td>
			<label>Address</label></td><td><textarea name="addrs" style="width:220px;"></textarea>
		</td>
		</tr>
		<tr>
		<td>
			<label>Loan Date</label></td><td><input style="width:220px;height:25px;" type="text" name="ldate">
		</td>
		</tr>
		<tr>
		<td>
			<label>Loan Type</label></td><td><input style="width:220px;height:25px;" type="text" name="ltype">
		</td>
		</tr>
		<tr>
		<td>
			<label>Annual Income</label></td><td><input style="width:220px;height:25px;" type="text" name="aincome">
		</td>
		</tr>
		<tr>
		<td>
			<label>Reference</label></td><td><input style="width:220px;height:25px;" type="text" name="referen">
		</td>
		</tr>
		<tr>
		<td>
			<label>Refer-Address</label></td><td><textarea name="referadd" style="width:220px;"></textarea>
		</td>
		</tr>
		<tr>
		<td>
			<label>Refer-Identity</label></td><td><textarea name="referident" style="width:220px;"></textarea>
		</td>
		</tr>
		<tr>
		<td>
			<label>Mobile NO</label></td><td><input style="width:220px;height:25px;" type="text" name="mobin">
		</td>
		</tr>
		<tr>
		<td>
			<label>Amount</label></td><td><input style="width:220px;height:25px;" type="text" name="amount">
		</td>
		</tr>
		</table>
		<input type="submit" name="submit" value="Request" style="float:right;width:120px;height:30px;background-color:#3333FF;color:#FFFFFF;font-size:18px;border-radius:5px;text-align:center;font-weight:bold;position:relative;top:12px;left:18px;border:inherit;">
	</form>
</div>

</div>
</div>
</body>




<?php 
}
?>