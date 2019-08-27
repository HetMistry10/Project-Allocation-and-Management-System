<jsp:include page="faculty.jsp"/>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
    <%
    
Connection con = null;
ResultSet rs, rs2;

try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();

%>
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
       
        #submit
	{
    margin-left: 10px;
    position: relative;
    left: -250px;
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
    
    </head>
    <body>
        
        <br><br>
         <form action="fmarksupload.jsp" method="POST">	
             <div class="whole">
Select rno : <select  class="selectsem" name="fmarkrno" onchange="choice1(this)" required><option disabled selected value> -- select a semester -- </option>
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
 Select Review : <select  class="selectsem" name="fmarkreview" style="" required=""><option disabled selected value> -- select a semester -- </option>
<option value="R1">Review 1</option>
<option value="R2">Review 2</option>
<option value="R3">Review 3</option>

 </select> 
    
             
 
         

    <br><br>             
       Enter marks :  <input class="text" type="number" name="fmarks" required placeholder="Type None for no project" min="0"/>
     <input id="submit" type="submit"  class="orko-button-primary orko-button" value="SUBMIT" tabindex="2">


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
