<jsp:include page="faculty.jsp"/>  
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              .text
	{
	position:relative;
	left:20px;
	top:00px;
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
        
        select
	{position: relative;
         left:10px;
            width: 250px;
    padding: 10px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-family: Century Gothic;
	}
        
        .whole
        {
            position:relative;
            left : 50px;                                        
            top: 20px;
        }
       
        #submit22
	{
    margin-left: 10px;
    position: relative;
    left: 0px;
    top: 90px;
    width:200px;
    height: 30px;
    background-color: blue;
    border: 2px solid transparent;
    border-radius: .25em;
    /* box-sizing: border-box; */
    font-size:20px;
    /* zoom: 1; */
    color: white;
    font-family: Century Gothic;	
	}
        </style>
      <%
  
       
         
       //    System.out.println(new java.util.Date());
   /*     if(session.getAttribute("user") == null)
{
response.sendRedirect("index.jsp");
}
       */ 
        
Connection con = null;
ResultSet rs, rs2;

 
try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();

%>
        
    <script>
            function TDate() {
    var UserDate = document.getElementById("userdate").value;
    var ToDate = new Date();

    if (new Date(UserDate).getTime() < ToDate.getTime()) {
          alert("The Date must be Bigger than today date");
          return false;
     }
    return true;

            
    }
    
    
      
   
    
     </script>    
        
        
    </head>
    <body>
        
        
        <br><br>
        <form action="fnextvalid.jsp" method="post">
             <div class="whole">
Select rno : <select  class="selectsem" name="fmarkrno" onchange="choice1(this)" required><option disabled selected value> -- select a student -- </option>
<%
  
   String cftable=""+session.getAttribute("branch")+"" + "_" + "6" + "_" + "allocated_project";
  
    rs=stmt.executeQuery("select rno from "+cftable+" where guide_name='"+session.getAttribute("user")+"'");

    
while(rs.next())
{
String fname = rs.getString("rno"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%>           
 </select> 
 <br>
  
 <br>
 <input type="date" name="userdate" id="userdate" onchange="TDate()" required>
 <br>
 <br>
 
 <textarea name="work" rows="4" cols="50" required>

 </textarea>
 

<button type="submit">Click Me!</button>
 </form>
    
             
 
         

    <br><br>             
     


       </div>      
        <br><br>           
			

    
    
</form>	
   
    
        
        
        <%
            }
catch(Exception e)
{}
%>
    </body>
</html>
