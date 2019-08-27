<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%
  


    Connection con=null;//abc
      ResultSet rs;
   //     String cf[] = new String[16];      
 //      ArrayList obj = new ArrayList();
              
    try
    {
      
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
       
     
        
        Statement stmt=con.createStatement();
       String sem = null;
       String branch =null; 
        
       
      rs=stmt.executeQuery("select * from stu_detail where stu_id='"+request.getParameter("fmarkrno")+"'");
        //   Statement stmt=con.createStatement();

   while(rs.next())
   {
   sem = rs.getString("sem");
   branch = rs.getString("branch");
   
   }
   
 
   
 String temp=""+branch+"" + "_" + ""+sem+"" + "_" + "marks";
  stmt.executeUpdate("UPDATE '"+temp+"' SET `"+request.getParameter("fmarkreview").toString()+"`="+request.getParameter("fmarks")+" WHERE rno='"+request.getParameter("fmarkrno") +"'");

   
}    
   catch(Exception e) {
        out.println("Could not connect: "+e);
    }




%>


