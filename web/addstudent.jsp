
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<!DOCTYPE html>
  
<%
       Connection con = null;
ResultSet rs;

 
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
        
       
        
        
    </head>
    <body>
        <form action="addstudentvalid.jsp" method="get">
            
        Student Rno :   <input name="studentname" type="text">
            Branch :  <select name="studentbranch" id="adminbranchselect"> <option value="ce" selected="">ce</option>
        <option value="it">it</option></select>
        
      Sem : <select name="studentsem"> <option value="3">3</option>
        <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
      </select>
       <button type="submit">Add Student</button>
        </form>
      
      
        
        



<% }

catch(Exception e)
{}
%>
    
    </body>
</html>
