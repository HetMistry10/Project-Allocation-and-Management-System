
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ include file="gavariable.jsp" %>


<%
    Connection con=null;//abc
      ResultSet rs;
        

        
      try{
          

         //       Statement stmt=con.createStatement();

//                String total=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
//String cf[] = new String[16];                          
   
      String local = "15bce067";
   
      int temp = Integer.parseInt(local);

String temp2 = Integer.toString(temp);
      
    //String done[]= new String[max];
    



%>

<%= local %>
<%= temp %>
<%= temp2 %>
<%

 //stmt.executeUpdate("update '"+total+"' set guide_name='"+guidedetail[i][1]+"' where grp_id='"+guidedetail[i][0]+"'");

     
 
 
      }
      catch(Exception e)
      {
      
      }
%>


    