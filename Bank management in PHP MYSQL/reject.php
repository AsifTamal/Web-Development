<?php
session_start();
if(isset($_SESSION['useradmin']))
{

$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);
$request=$_GET['request'];
$accpt= "update request set status='Rejected' where requestno=$request";
mysql_query($accpt,$con);

header("Location: http://localhost/Btcl/pandingloan.php");

}
?>