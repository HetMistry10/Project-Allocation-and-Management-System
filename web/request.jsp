<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jquery-3.2.1.min.js"></script>
<style>
.text
  {
  position:relative;
  left:20px;
  /*top:70px;*/
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
  iframe {
    margin-top: 50px;
    display: none;
  }
  input[type=submit] {
    height: 30px;
    width: 100px;
  }
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<body>

<div class="navbar">
  <a href="#home">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Project 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Available Project</a>
      <a href="#">Choice Feeling</a>
      <a href="#">Current Project</a>
      <a href="#">Request for change the project</a>

    </div>
  </div> 
  <a href="#marks">Marks</a>
  <a href="#rqm">Request for material</a>
  <div class="dropdown" style="float: right">

<!-- <button class="dropbtn">Check  -->
      <!-- <i class="fa fa-caret-down"></i> -->
    <!-- </button> -->
    <!-- <div  style="float:right" class="dropdown" > -->
    <button class="dropbtn"><img src="system.png" width="20" height="10" /> 
     <!-- <button class="dropbtn"><img src="system.png" widhth="2%" height="0%">  -->
   
    </button>
    <div class="dropdown-content" style="margin-left: -84px;">
    <a href="http://kanishkkunal.in" 
  target="popup" 
  onclick="window.open('C:/Users/USER/Documents/NetBeansProjects/MP2/login page/login.html','popup','width=600,height=600'); return false;">
    Change password
</a>  <a href="#">Logout</a>
      <a href="#">Link 3</a>
    </div>

</div>

  </div> 

<form  action="filename.html" target="myFrame">
<br><br><br><br><br><br>
<center>
 Roll No. : <input class="text" type="text" label="enter" name="username" required="required" background-color="yellow" placeholder="Enter roll no of any one of your group " />
 <br /><br />
 Project Title &nbsp: <input class="text" type="text" label="enter" name="username" required="required" background-color="yellow" placeholder="Enter your project title" />
  <br /><br />
  Material Required : <input class="text" type="text" label="enter" name="username" required="required" background-color="yellow" placeholder="Enter which material you required" />
  <center>
  <br /><br />
  <input type="submit" value="Login" id="submit_btn" />

  <script>
    $("#submit_btn").click(function(){
        $("iframe").show();
    });
  </script>

</form>

<div>
  <iframe width = "100%" height = "100%" name="myFrame">
         Sorry your browser does not support inline frames.
      </iframe>
</div>
</body>
</html>
