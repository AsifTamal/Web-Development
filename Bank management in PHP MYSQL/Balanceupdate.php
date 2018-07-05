<div style="">
<form>
<table>
<tr>
<td><label>Customer Name</label></td><td><input type="text" name="cname"></input></td>
</tr>
<tr>
<td><label>Account NO</label></td><td><input type="text" name="accno"></input></td>
</tr>
<tr>
<td><label>Amount(tk)</label></td><td><input type="text" name="amount"></input></td>
</tr>
<tr>
<td></td><td></td><td><input type="submit" name="submit" value="Update"></input></td>
</tr>
</table>
</form>
</div>

<?php
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);


$name=$_POST['cname'];
$acc=$_POST['accno'];

$sql="select * from account";
$update = mysql_query($sql,$con);
$row=mysql_fetch_array($update);
?>