<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%
  
String setproject[] = new String[5];
        
        for(int i=1;i<5;i++)
        {
        setproject[i-1] = request.getParameter("project"+i+"");
        }
        
String sem = request.getParameter("selectsem");


    Connection con=null;//abc
      ResultSet rs;
   //     String cf[] = new String[16];      
 //      ArrayList obj = new ArrayList();
              
    try
    {
      
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
       
     /*  for(int u=1;u<16;u++)
       {
              cf[u-1]=request.getParameter("myselect"+u+"").toString();  
        
       }*/
       
       //  cf[15] is for partner name
   //    cf[15] = request.getParameter("ron1").toString();
     
       
     /*  cf[0]= request.getParameter("myselect1").toString();
        cf[1]=request.getParameter("myselect"+u+"").toString();  
        cf[2]=request.getParameter("myselect3").toString();
        cf[3]=request.getParameter("myselect4").toString();
        cf[4]=request.getParameter("myselect5").toString();
        cf[5]=request.getParameter("myselect6").toString();
        cf[6]=request.getParameter("myselect7").toString();
        cf[7]=request.getParameter("myselect8").toString();
        cf[8]=request.getParameter("myselect9").toString();
        cf[9]=request.getParameter("myselect10").toString();
        cf[11]=request.getParameter("myselect11").toString();
        cf[11]=request.getParameter("myselect12").toString();
        cf[12]=request.getParameter("myselect13").toString();
        cf[13]=request.getParameter("myselect14").toString();
        cf[14]=request.getParameter("myselect15").toString();*/
        
        Statement stmt=con.createStatement();
       
 String s=""+session.getAttribute("branch")+"" + "_" + ""+sem+"" + "_" + "topiclist";
       
   //   rs=stmt.executeQuery("select pname from "+cftable+"");
   for(int i=0;i<5;i++)
   {
  stmt.executeUpdate("Insert into "+s+"  values('"+setproject[i]+"','"+session.getAttribute("user")+"')");  
   }

    %>
    
    <script>
       alert("successfully updated") ;
       
         window.location.href = "setchoice.jsp";
       
        </script>
    
    
    <%
}    
   catch(Exception e) {
        out.println("Could not connect: "+e);
    }




%>


