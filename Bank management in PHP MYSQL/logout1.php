<?php
session_start();
if(isset($_SESSION['useradmin']))
{
?>
<?php
	session_start();
	$_SESSION['user']="";
	session_destroy();
	header("Location: http://localhost/Btcl/startbank.php");
	}
?>
