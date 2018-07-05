<html>
<head>
<title></title>
<style type="text/css">
 body {padding:0;margin:0 ;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:13px;background-color: #FFFFFF;color:#3333FF;}
	.Content { padding-bottom:30px;margin:0 auto;padding:0;width:1104px;height:880px;border-radius:5px;border:#0033FF 1px solid;}
	.clockpart { padding:0;margin:0 auto;width:150px;height:70px;}
	.clockpart label { font-size:36px;color:#FFFFFF;font-weight:bold;}
	.topmenutoppart { height: 250px;border:#0033FF 1px solid;border-radius:5px;}
	.bankname { padding-left: 50px; font-style:oblique; font-weight:bold; height:100px;width:150px;}
	.bankname h1 { text-align:center; font-size:39px;}
	.topmenutoprightpart { float:right;width:450px;text-align:justify;direction:ltr;} 
	.topmenutoprightbottom { height:25px;}
	.topmenutoprightbottom ul { padding-left:150px;font-size:14px;}
	.topmenutoprightbottom ul li { list-style:none;display:inline;}
	.topmenutoprightbottom ul li a { text-decoration:none;padding-left:10px; }
	.topmenutoprightbottom ul li a:hover {  cursor:pointer; font-weight:600;}
</style>


</head>

<body>

	<body onload="starttime()">

<div class="Content">	
	<div class="topmenutoppart">
		<div style="height:50px;width:500px;padding:0;margin:0 auto;">
			<div class="clockpart">
				<label id="clock" style="color:#3333FF;"></label>
			</div>
		</div>
		<div class="topmenutoprightpart">
			<div class="topmenutoprighttop">
				<img style="border-radius:10px;" src="Banking external folder for css and image/oracle.gif" style="background-color:#99CC33;width:200ps; height:70x;">
			</div>
			<div class="topmenutoprightbottom">
			<ul>
				<li><a href="Index.html"><img src="Banking external folder for css and image/home.gif">&nbsp;Home</a></li>
				<li><a href="BTCL - banking login page/loginpage.html" id="log"><img src="">Login</a></li>
				<li><a href="#"><img src="">&nbsp;About BTCL</a></li>
			</ul>
			</div>
		</div>
		
		<div class="bankname">
			<h1>BTCL</h1>
			<img src="" /> 
		</div>		

	</div>
	
</div>	
	

</body>

</html>


<script type="text/javascript">
	function starttime()
	{
		var today= new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		
		m=checktime(m);
		s=checktime(s);
		
		document.getElementById('clock').innerHTML=h+":"+m+":"+s;
		
		t=setTimeout(function() { starttime()},500);
	}
	function checktime(i)
	{
		if(i<10)
		{
			i="0"+i;
		}
		return i;
	}
</script>