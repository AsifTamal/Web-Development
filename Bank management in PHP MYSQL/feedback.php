
<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">
<div style="margin: 0 auto;width: 1200px;height: 980px;border-radius: 5px;border:#0033FF 1px solid;background-color: #FFFFFF;">
<?php include("headerfile.php"); ?>
<div class="midtopbottom">
    
</div>

<div align="center" style="position:relative;top:80px;left:300px; border:#0033FF 1px solid;border-radius:5px;width:600px;padding:30px;">
<div align="center">
	<?php
		$con=mysql_connect("localhost","root","");
		mysql_select_db("btcl",$con);
		
		if(isset($_POST['submit']))
		{
 if(($_POST['fname']!="")&&($_POST['mobi']!="")&($_POST['email']!="")&&($_POST['about']!=""))
		{
			$str="insert into feedback(fullname,mobileno,email,about,status) values('".$_POST['fname']."','".$_POST['mobi']."','".$_POST['email']."','".$_POST['about']."','unread')";
			mysql_query($str,$con);
		}
		else
		echo "<lael style='font-size:18px;font-weight:bold;position:relative;bottom:15px;'>Must Full Fill all desired field</label>";
		}	
	?> 
</div>
<form method="post">
	<table>
		<tr>
			<td>Full Name</td><td style="width:230px;height:25px;"><input style="width:230px;height:25px;" type="text" name="fname"></td>
		</tr>
		<tr>
			<td>Mobile NO</td><td style="width:230px;height:25px;"><input style="width:230px;height:25px;" type="text" name="mobi"></td>
		</tr>
		<tr>
			<td>E-mail</td><td style="width:230px;height:25px;"><input style="width:230px;height:25px;" type="text" name="email"></td>
		</tr>
		<tr>
			<td><label style="position:relative;bottom:120px;">Description</label></td><td style="width:450px;height:300px;"><textarea name="about" style="width:450px;height:250px;text-align:inherit;" ></textarea></td>
		</tr>
		<tr><td></td><td></td><td><input type="submit" name="submit" value="Submit" style="border:inherit;background-color:#6633FF;border-radius:5px;color:#FFFFFF;font-size:18px;font-weight:bold;position:relative;right:20px;"></td></tr>
	</table>
	</form>
</div>


</div>
</body>
