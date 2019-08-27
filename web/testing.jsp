<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>"%>




<%
    
    
            
Connection con = null;
ResultSet rs;




try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
       Statement stmt=con.createStatement();
  //
    //    String cftable=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
       

// String filledchoice=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
  // String totalchoice=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "topiclist";
System.out.println("hi");
   rs = stmt.executeQuery("select count(pname) c, faculty f from ce_5_topiclist where pname not in(select pname from ce_5_allocated_project) group by faculty");
System.out.println("hi");
   
   String temp="yo", temp2="yo2";
   while(rs.next())
{
    
temp2=rs.getString("c");

  temp=rs.getString("f").toString();

}


%>
<%= temp %>
<%= temp2 %>

<%
}

catch(Exception e)
{}
%>
