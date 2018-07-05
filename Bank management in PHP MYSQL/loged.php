<?php

	session_start();
	
	if(isset($_POST['submit']))
	{
		$_SESSION['name']=$_POST['username'];
		$_SESSION['pass']=$_POST['password'];
		$_SESSION['secureans']=$_POST['securityanswer'];
		
		if(($_SESSION['name']=="Rakib")&&($_SESSION['pass']=="papri")&&($_SESSION['secureans']=="love"))
		{
			echo "Loged in";
		}
		else
		die("Can not log");
	}

?>
