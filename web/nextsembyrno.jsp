<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
    


<%
       Connection con = null;
ResultSet rs;

 
try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();

        
                    int sem = Integer.parseInt(request.getParameter("sembystudent"));

String student=request.getParameter("selectbyrno");
            
 stmt.executeUpdate("update stu_detail set sem="+sem+" where stu_id='"+student+"'");
  //stmt.executeUpdate("UPDATE stu_detail set sem=7 WHERE branch='ce' and sem=5 ");
          
                    
}
catch(Exception e)
{}
                    %>