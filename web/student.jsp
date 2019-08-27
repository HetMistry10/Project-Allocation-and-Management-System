<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>



<% session = request.getSession(); %>
<%
    
   /* if(session.getAttribute("user") == null)
{
response.sendRedirect("index.jsp");
}
    */   if(session.getAttribute("user") == null || !(session.getAttribute("status").equals("student")))
{
response.sendRedirect("index.jsp");
}
   
   
   
    Connection con=null;//abc
      ResultSet rs;
     //   String cf[] = new String[16];      
      // ArrayList obj = new ArrayList();
              
    try
    {
      
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
       
      /* for(int u=1;u<16;u++)
       {
              cf[u-1]=request.getParameter("myselect"+u+"").toString();  
        
       }
       
       //  cf[15] is for partner name
       cf[15] = request.getParameter("ron1").toString();
       %>
        
       
        
        <%= cf[15] %>
        <%
       
       
     /*  cf[0]= request.getParameter("myselect1").toString();
        cf[1]=request.getParameter("myselect"+u+"").toString();  
        cf[2]=request.getParameter("myselect3").toString();
        cf[3]=request.getParameter("myselect4").toString();
        cf[4]=request.getParameter("myselect5").toString();
        cf[5]=request.getParameter("myselect6").toString();
        cf[6]=request.getParameter("myselect7").toString();
        cf[7]=request.getParameter("myselect8").toString();
        cf[8]=request.getParameter("myselect9").toString();
        cf[9]=request.getParameter("myselect10").toString();
        cf[11]=request.getParameter("myselect11").toString();
        cf[11]=request.getParameter("myselect12").toString();
        cf[12]=request.getParameter("myselect13").toString();
        cf[13]=request.getParameter("myselect14").toString();
        cf[14]=request.getParameter("myselect15").toString();*/
        
        Statement stmt=con.createStatement();
       

        
       
        
        
        
      

}

catch(Exception e)
{
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
      padding: 23px 16px;
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
#wlcm
{
   position: relative;
    /* right: -96px; */
    color: white;
    left: 729px;
        bottom: -23px;
}
</style>
</head>
<body>

<div class="navbar">
  <a href="student.jsp">Home</a>
  <div class="dropdown">
    <button class="dropbtn"style="position: relative;bottom:-9px;">Project 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="availableproject.jsp">Available Project</a>
      <a href="cf.jsp" id="cfo">Choice Filling</a>
      <a href="currentproject.jsp">Current Project</a>
      <a href="#">Request for change the project</a>

    </div>
  </div> 
  <a href="viewmarks.jsp">Marks</a>
 <!-- <a href="material.jsp">Request for material</a> -->
  <div id="wlcm">
    Welcome <%= session.getAttribute("user") %>
    </div>
  <div class="dropdown" style="float: right">

<button class="dropbtn" style="position: relative;bottom:9px;">Option 
      <i class="fa fa-caret-down"></i>
    </button>
   
    <div class="dropdown-content" style="margin-left: -70px;">
      <a href="change_pwd.jsp"><p id="actionChangePwd">Change password</p></a>
      <a href="logout.jsp">Logout</a>
    </div>

</div>

  </div>

    
    
</body>
</html>
