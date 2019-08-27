<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%
    Connection con=null;
ResultSet rs,rs2;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
        String r=request.getParameter("rno");
        String pn=request.getParameter("pname");
        String m=request.getParameter("material");



        
        
     // request.setAttribute("username2", "don");
  

      
    }
    catch(Exception e) {
        out.println("Could not connect: "+e);
    }
%>
