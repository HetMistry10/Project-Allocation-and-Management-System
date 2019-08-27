<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%
    Connection con=null;
ResultSet rs,rs2;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
        String user=request.getParameter("username");
        String pass=request.getParameter("pwd");
        Statement stmt=con.createStatement();
        String sta;
        String sem=null;
        String branch = null;
        

        rs=stmt.executeQuery("select * from login where username='"+user+"' and password='"+pass+"' ");
        if(rs.next()) 
        {
            session.setAttribute("user", user);
            sta=rs.getString(3);
            session.setAttribute("status", sta);
               
            session.setMaxInactiveInterval(1000);
          

         
                
                    if(sta.equalsIgnoreCase("student"))
                    {                                            
                        rs=stmt.executeQuery("select * from stu_detail where stu_id='"+user+"'");                  
                        
                        if(rs.next())
                        {
                        sem  = rs.getString("sem");          
                        branch = rs.getString("branch");
                        }
                        session.setAttribute("sem", sem);
                        session.setAttribute("branch",branch);
                        response.sendRedirect(""+sta+".jsp");                    
                    }
                    
                    else if(sta.equalsIgnoreCase("fa"))
                    {                                            
                        rs=stmt.executeQuery("select * from fa_detail where faculty='"+user+"'");                  
                        
                        if(rs.next())
                        {
                        sem  = rs.getString("sem");          
                        branch = rs.getString("branch");
                        }
                        session.setAttribute("sem", sem);
                        session.setAttribute("branch",branch);
                        response.sendRedirect(""+sta+".jsp");                    
                    }
                    
                    else if(sta.equalsIgnoreCase("faculty"))
                    {                                            
                        rs=stmt.executeQuery("select * from faculty where faculty='"+user+"'");                  
                        
                        if(rs.next())
                        {
                        //sem  = rs.getString("sem");          
                        branch = rs.getString("branch");
                        } 
                      //  session.setAttribute("sem", sem);
                        session.setAttribute("branch",branch);
                        response.sendRedirect(""+sta+".jsp");                    
                    }
            
           // response.sendRedirect("cf.jsp");            
        }
        else
        {
            response.sendRedirect("index.jsp?errors=Invalid login details");
        }
    }
    catch(Exception e) {
        out.println("Could not connect: "+e);
    }
%>