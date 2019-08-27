<html>
<head>
    <script>
        document.location.replace();//
        </script>
    
    
    <style>
	body{
	background : url('1.jpg'); 
	background-attachment : fixed;
		
	/*//background-color : blue;*/
	}

	#login
	{height : 500;
	 width : 360;

	 position : relative;
	 left: 920px;
	 top : 60px;
	
	
	    box-shadow: 0 2px 4px 0 rgba(181,181,181,.7);
	
	}
	
	#lock
	{
	position : relative;
	 left: 5px;
	 top : 10px;
	 background:transparent;
	 }
	 
	#rect
	{
	height:8;
	width : 360;
	position:relative;
	left:0px;
	top:0px;
	
	background: linear-gradient(to right,#188fff 0,#400090 100%);       
		z-index:1;
	}
	
	#username
	{
	position:relative;
	left:30px;
	top:70px;
	width:300;
	height:40px;	
    border: 0;
    border-radius: 0;
    border-bottom: 1px solid #cfd2d5;
    letter-spacing: normal;
    font-size: .94118em;
    z-index: 1;
	background:transparent;
	}
	
	
	#password
	{
	position:relative;
	left:30px;
	top:100px;
	width: 300px;
	height:40px;	
    border: 0;
    border-radius: 0;
    border-bottom: 1px solid #cfd2d5;
    letter-spacing: normal;
    font-size: .94118em;
    z-index: 1;
	background:transparent;
	}
	
	
	#login2 
	{
	position:relative;
	left:30px;
	top:150px;
	width:300;
	height:40px;
        
	background-color : blue;
    border: 2px solid transparent;
    border-radius: .25em;
    box-sizing: border-box;
	    font-size: 20;

    zoom: 1;
		
	}
</style>

</head>

<body>
<div id="login">
		<div id="rect">
		</div>

		<div id="lock">
		<img src="nirma.png" width="350" height="160" />
		</div>
		<form action="validate.jsp" method="POST">	
			<input id="username" type="text" name="username" required placeholder="Enter your email&nbsp;address" />
			<input id="password" type="password" name="pwd" required="required" placeholder="Enter your password" />
			
			<input id="login2" type="submit" name="signin" class="orko-button-primary orko-button" value="Next" tabindex="2">
		</form>		
		
</div>

	

</body>
</html>

