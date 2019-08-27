
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ include file="gavariable.jsp" %>


<%
    Connection con=null;//abc
      ResultSet rs;
        

        
      try{
          

                Statement stmt=con.createStatement();

                String total=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
//String cf[] = new String[16];                          
   
      String local;
   String table2;

   
   
   
   int i;

    rs=stmt.executeQuery("select max(grp_id) from '"+total+"'");
int max=0;
    while(rs.next())
    {
    max = rs.getInt("grp_id");
    }

    //String done[]= new String[max];
    



%>

<%= max %>
<%

 //stmt.executeUpdate("update '"+total+"' set guide_name='"+guidedetail[i][1]+"' where grp_id='"+guidedetail[i][0]+"'");

     
 
 
      }
      catch(Exception e)
      {
      
      }
%>


    