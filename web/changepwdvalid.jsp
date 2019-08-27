<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%
    Connection con=null;//abc
     ResultSet rs;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
        String current_pass=request.getParameter("currentpwd");
        String new_pass=request.getParameter("changepwd");
        String cfpwd = request.getParameter("confirmchangepwd");
        Statement stmt=con.createStatement();
         //session.getAttribute("user")
      
     %>
    
    <%= session.getAttribute("user") %>

<%    
         
           
       rs = stmt.executeQuery("select password from login where username='"+session.getAttribute("user")+"' ");

       String local="a";
       while(rs.next())
       {
       local = rs.getString("password");            
       } 
       
     if(new_pass.equals(cfpwd))  
     {  
       if(local.equals(current_pass))           
       {
           stmt.executeUpdate("update login set password='"+new_pass+"' where username='"+session.getAttribute("user")+"'");
     
 %>
 
 
 <script>
    alert("Your password has been changed successfully!");
    window.location = 'change_pwd.jsp';
    </script>
 
 <%
           
       }

       else
       {         
%>
 
 
 <script>
    alert("Invalid current password");
    window.location = 'change_pwd.jsp';
    </script>
 
 <%                                                      
       }
    }
     
     else
       {       
 %>
 
 
 <script>
    alert("New Password and Confirm New Password must be same");
    window.location = 'change_pwd.jsp';
    </script>
 
 <%
           
           
                                    
       }
     
       
    }
       
    catch(Exception e) {
        out.println("Could not connect: "+e);
    }
%>