<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>



<%
    Connection con=null;//abc
      ResultSet rs;
        String cf[] = new String[16];      
       ArrayList obj = new ArrayList();
              
    try
    {
      
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
       
       for(int u=1;u<16;u++)
       {
              cf[u-1]=request.getParameter("myselect"+u+"").toString();  
        
       }
       
       //  cf[15] is for partner name
       cf[15] = request.getParameter("ron1").toString();
       %>
        
       
        
        <%= cf[15] %>
        <%
       
       
     /*  cf[0]= request.getParameter("myselect1").toString();
      */
        
        Statement stmt=con.createStatement();
                     
        String cftable=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
       

                rs=stmt.executeQuery("select rno from "+cftable+"");
                
                if(rs.next())
                {
                    
                    %>
                    <script>
                        
                        document.getElementById("cfo").disabled=true;
                        </script>
                    
                    
                    <%                                                    
                }
        
        rs=stmt.executeQuery("select pname from "+cftable+"");
       
      while(rs.next()) 
        {
            obj.add(rs.getString("pname").toString());
           
        }
       
      
      int i=0;
      for(i=0;i<15;i++)
      {
                                 
      if(!(obj.contains(cf[i])))
        {

        rs=stmt.executeQuery("select max(grp_id) e from "+cftable+"");                        
        int max = 0;
        while(rs.next())
        {
        max= Integer.parseInt(rs.getString("e"));
        }
        max=max+1;
        
        %>
        
       
        
        <%= max %>
        <%
         
           String temp = ""+session.getAttribute("branch")+""+"_"+""+session.getAttribute("sem")+""+"_"+"topiclist";
            rs = stmt.executeQuery("select faculty from "+temp+" where pname='"+cf[i]+"'");
            
         String faculty = null;
            if(rs.next())
         {
         faculty = rs.getString("faculty");
         }
            
         stmt.executeUpdate("Insert into "+cftable+"  values("+max+",'"+session.getAttribute("user")+"', '"+cf[i]+"', '"+faculty+"')");  

         
       if(!(cf[15].equals("None")))
       {         
       stmt.executeUpdate("Insert into "+cftable+"  values("+max+",'"+cf[15]+"', '"+cf[i]+"', '')");          
       }
               
          %>
    
    <script>
       alert("successfully updated") ;
       
         window.location.href = "student.jsp";
       
        </script>
    
    
    <%
       break;
           
        }

}

if(i>14)
{

   %>
    
    <script>
       alert("All project are already allocated !! Please Try again.") ;
       
         window.location.href = "cf.jsp";
       
        </script>
    
    
    <%

}

    }
   catch(Exception e) {
        out.println("Could not connect: "+e);
    }




%>


