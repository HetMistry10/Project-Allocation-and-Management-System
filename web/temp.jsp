
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
        <form action="nextsemvalid.jsp" method="get">
            Branch :  <select name="adminbranchselect" id="adminbranchselect"> <option value="ce" selected="">ce</option>
        <option value="it">it</option></select>
        
      Sem : <select name="adminsemselect"> <option value="3">3</option>
        <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
      </select>
       <button type="submit">Move to Next sem</button>
        </form>
      
        <form action="nextsembyrno.jsp" method="post">


            <% 
   rs=stmt.executeQuery("select stu_id from stu_detail");

            
            %>
                        
<select name="selectbyrno">
    <option selected="">None</option>
    <%
while(rs.next())
{
String fname = rs.getString("stu_id"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%>          
</select>
            
<input type="submit"  value="OK">

select sem  :  <select name="sembystudent"> <option value="3" selected>3</option>
        <option value="4">4</option>
       <option value="5">5</option>
       <option value="6">6</option>
      </select>
     
        
        </form>
<% }

catch(Exception e)
{}
%>
    
    </body>
</html>
