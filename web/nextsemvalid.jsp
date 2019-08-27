
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%System.out.print("yo");
     Connection con = null;
ResultSet rs;

try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();

        //System.out.print("yo");
        String sem = request.getParameter("adminsemselect");
        
        String branch = request.getParameter("adminbranchselect");

int te=Integer.parseInt(sem);
            
 stmt.executeUpdate("update stu_detail set sem=sem+1 where branch='"+branch+"' and sem="+sem+"");
  //stmt.executeUpdate("UPDATE stu_detail set sem=7 WHERE branch='ce' and sem=5 ");
     
%>

<%
}
catch(Exception e)
{

}


%>
                
                