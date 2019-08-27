<!DOCTYPE html>

<% 
    session = request.getSession();
    if(session.getAttribute("user") == null || !(session.getAttribute("status").equals("fa")))
{
response.sendRedirect("index.jsp");
}

%>

<html>
<head>
<script src="jquery-3.2.1.min.js"></script>
<style>
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
        color: #6a67ce !important;
	border:10px;
	border-bottom-color : #6467ce;
	border-bottom: 4px solid #6a67ce;
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
  <a href="fa.jsp">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Project 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="fasetchoice.jsp">Set Project</a>
      <a href="viewproject.jsp">View allocated Project</a>
     
      <a href="#">material details</a>

    </div>
  </div> 
  
  
    <div class="dropdown">
    <button class="dropbtn">Marks 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="famarks.jsp">Set Marks</a>
      <a href="faviewmark.jsp">View Marks</a>
      <a href="">Change Marks</a>     
    </div>
  </div>
  

  <div class="dropdown" style="float: right">

<button class="dropbtn">Check 
      <i class="fa fa-caret-down"></i>
    </button>
   
    <div class="dropdown-content" style="margin-left: -70px;">
      <a href="change_pwd.jsp"><p id="actionChangePwd">Change password</p></a>
      <a href="logout.jsp">Logout</a>
    </div>

</div>

  </div>

    <br><br><br><br>
    Welcome <%= session.getAttribute("user") %>
    
    
</body>
</html>
