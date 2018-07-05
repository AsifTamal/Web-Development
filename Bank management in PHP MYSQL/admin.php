
<body onLoad="starttime()" style="padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #999999;color:#3333FF;">

<div style="padding-bottom:30px;margin: 0 auto;width: 1200px;height: 800px;border-radius: 5px;border:#0033FF 1px solid;background-color:#FFFFFF;">    
    
<?php include("headerfile.php"); ?>
    
<div align="center" style="padding-top: 120px;">
<div align="center" style="font-size:16px;font-weight:bold;">
<?php

session_start();
 $con = mysql_connect("localhost","root","");
 mysql_select_db("btcl",$con);
if(isset($_POST['submit']))
{
 $sel="select * from admin";
 $fet=mysql_query($sel,$con);

 $row=mysql_fetch_array($fet);
  
        $_SESSION['useradmin']=$_POST['user'];
        $_SESSION['adminpass']=$_POST['pass'];
		
        
        if(($_SESSION['useradmin']==$row['adminlog'])&&($_SESSION['adminpass']==$row['password']))
        {
          header('Location: http://localhost/Btcl/adminhome.php');
        }
        else
		{
			echo "Wrong password or logname";
		}
}
mysql_close($con);
?>
</div>
<div align="center" style="margin: 0 auto; width:400px; border:#339966 1px solid;border-radius:10px;box-shadow: #e5e5e5 5px 5px;height:300px;">
<form method="post" style="padding: 80px 50px;">
<table>
<tr>
<td></td><td><label id="logsms"></label></td>
</tr>
<tr>
<td style="width:180px;"><label style="direction:ltr;color:#333333;font-weight:bold;">Admin</label></td><td style="width:180px;"><input type="text" name="user" style="width:150px;"></input></td>
</tr>
<tr>
<td style="width:180px;"><label style="direction:ltr;color:#333333;font-weight:bold;">Admin-Key</label></td><td style="width:180px;"><input type="password" name="pass" style="width:150px;"></input></td>
</tr>
<tr>
<td></td><td></td><td><input style="position:relative;right:20px;top:25px;border:inherit;background-color:#999999;border-radius: 5px;text-align:center;color:#3300CC;font-weight:bold;height:25px;" type="submit" name="submit" value="Start Banking"></input></td>
</tr>
</table>
</form>
</div>
</div>

</div>
</body>
