<?php
session_start();
if(isset($_SESSION['useradmin']))
{
if(isset($_POST['submit']))
{
$con=mysql_connect("localhost","root","");
mysql_select_db("btcl",$con);
$request=$_GET['request'];
$amo=$_POST['lamount'];
$accpt= "update request set status='Accepted',amount=$amo where requestno=$request";
mysql_query($accpt,$con);
header("Location: http://localhost/Btcl/pandingloan.php");
}
}
?>