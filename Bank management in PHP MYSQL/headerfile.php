 
 
<div style="height: 250px;border: #0033FF 1px solid;border-radius: 5px;background-color:#CCCCCC;">
		<div style="height:50px;width:500px;padding:0;margin:0 auto;">
			<div style="padding: 0;margin: 0 auto;width:150px;height:90px;">
				<label id="clock" style="color:#3333FF;font-size:36px;font-weight:bold;"></label>
			</div>
		</div>
		<div style="float:right;width:450px;text-align:center;direction:ltr; ">
			<div align="right">
				<img src="Banking external folder for css and image/oracle.gif" style="background-color:#99CC33;width:200ps; height:100x;border-radius:10px;position:relative;top:30px;">
				
			</div>
		</div>
		
		<div style="padding-left: 50px; font-style:oblique; font-weight:bold; height:100px;width:150px;">
			<h1 style="text-align:center; font-size:39px;">BTCL</h1>
			<img src="" /> 
		</div>	
		
		<div class="logmenu">
			<ul>
				<li><a href="startbank.php">Home</a></li>
				<li><a href="admin.php">Admin Login</a></li>
				<li><a href="Btclbank.php">Bank Login</a></li>
				<li><a href="contact.php">Contact</a></li>
			</ul>
		</div>	
		<style>
			.logmenu {padding:30px 0 0 70px;float:right;}
			.logmenu ul li {display:inline;padding-right:20px;}
			.logmenu ul li a {text-decoration:none; text-align:center;font-size:14px;border:#FFFFFF 1px solid;border-radius:15px;}
			.logmenu ul li a:hover {cursor:pointer;}
		</style>

	</div>
  
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