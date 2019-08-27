<jsp:include page="student.jsp"/>
<html>
<html>
<head>
<STYLE>
	
	#changepwd 
	{
	position:relative;
	left : 70px;
	top:50px;
	width:225;
	height:40px; 
	background-color : blue;
    border: 2px solid transparent;
    border-radius: .25em;
    box-sizing: border-box;
	font-size : 20;
	}
	
	.changepass
	{
	margin-left : 35%;
	}
	
	
	.text
  {
  position:relative;
  left:20px;
  
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
   
</style>


</head>

<body height="100%" width="100%" >
    <br>
    <br><br>
    <form action="changepwdvalid.jsp" method="POST">


<div class="changepass">

	Current Password : <input class="text" type="text" label="enter" name="currentpwd" required="required" background-color="yellow" placeholder="Enter Current Password";>
 <br><br>
 New Password : <input class="text" type="text" label="enter" name="changepwd" required="required" background-color="yellow" placeholder="Enter New Password";>
	<br><br>
	Confirm New Password : <input class="text" type="text" label="enter" name="confirmchangepwd" required="required" background-color="yellow" placeholder="Confirm New Password";>
	
	<br><br><input id="changepwd" type="submit" name="signin" class="orko-button-primary orko-button" value="Change Password" tabindex="2">
	
</div>
</form>

</body>
</html>


    
	
	
  
   