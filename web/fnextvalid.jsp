<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<%
       Connection con = null;
ResultSet rs;

 
try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();
                String temp=request.getParameter("fmarkrno");
                
                rs=stmt.executeQuery("select * from stu_detail where stu_id='"+temp+"'");
                    System.out.println("1");
                String branch="yo";
                String sem = null;
                if(rs.next())
                {
                branch=rs.getString("branch");
                sem=rs.getString("sem");                
                }
       
                
             //   String temp2 = Integer.toString(sem);
                
       String cftable=""+session.getAttribute("branch")+"" + "_" + ""+sem+"" + "_" + "allocated_project";
       System.out.println(cftable);
     rs=stmt.executeQuery("select grp_id from "+cftable+" where rno='"+temp+"'");
    System.out.println("2");
     String grpid=null;
     while(rs.next())
     {
     grpid=rs.getString("grp_id");
     }
     
     //String date = new java.util.Date().toString();
     System.out.println("3");
     
 cftable=""+session.getAttribute("branch")+"" + "_" + ""+sem+"" + "_" + "meet";
     
    stmt.executeUpdate("Insert into "+cftable+"  values('"+temp+"' , '"+request.getParameter("userdate").toString()+"', '"+request.getParameter("work") +"')");  
       
   
     %>
    
    <script>
       alert("successfully updated") ;
       
         window.location.href = "fnextmeet.jsp";
       
        </script>
    
    
    <%
    
    
}
catch(Exception e)
{

}
           
            %>