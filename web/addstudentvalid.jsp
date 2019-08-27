
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ include file="gavariable.jsp" %>


<%
    Connection con=null;//abc
      ResultSet rs;
        

        
      try{
          

                Statement stmt=con.createStatement();

              
   
   
   String Student = request.getParameter("studentname").toString();
   %>
   <%= Student%>
   <%
   
   String branch = request.getParameter("studentbranch").toString();
   String sem = request.getParameter("studentsem").toString();

   String temp=""+branch+""+"_"+""+sem+""+"_marks";
       // stmt.executeUpdate("Insert into "+temp+"  values("+grpid+",'"+date+"', '"+ndate+"', '"+work+"')");  
stmt.executeUpdate("Insert into 'stu_detail'  values('"+Student+"','"+branch+"', '"+sem+"')");  
stmt.executeUpdate("Insert into '"+temp+"'  values('"+Student+"',0,0,0)");    
stmt.executeUpdate("Insert into 'login'  values('"+Student+"','"+Student.toLowerCase()+"')");  


    //String done[]= new String[max];
    



 //stmt.executeUpdate("update '"+total+"' set guide_name='"+guidedetail[i][1]+"' where grp_id='"+guidedetail[i][0]+"'");

     
 
 
      }
      catch(Exception e)
      {
      
      }
%>


    