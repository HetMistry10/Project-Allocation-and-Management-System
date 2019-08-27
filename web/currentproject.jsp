
<jsp:include page="student.jsp"/>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<% 
    session = request.getSession();
    if(session.getAttribute("user") == null || !(session.getAttribute("status").equals("student")))
{
response.sendRedirect("index.jsp");
}

%>

<html>
    <head>
        <style>
             #demo
        {
            font-size:25px;
            text-align: center;
            text-decoration: underline;
            font-family: Century Gothic;
        }
        #con
        {
            font-size:15px;
            text-align: center;
            font-family: Century Gothic;
        }
            </style>
    </head>
<body>

<%
    
Connection con = null;
ResultSet rs;

try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();
        
 String cftable=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";

//        String cftable=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "grpid";

String grpid = "None";
String project = "None";
String guide = "None";
String pp="None";

             rs=stmt.executeQuery("select * from "+cftable+" where rno='"+session.getAttribute("user")+"'");


         
 if(rs.next())
    {
    project = rs.getString("pname"); 
    guide = rs.getString("guide_name");
    grpid = rs.getString("grp_id");
    }

      rs=stmt.executeQuery("select rno from "+cftable+" where grp_id='"+grpid+"' and rno not in ('"+session.getAttribute("user")+"')");

if(rs.next())
{
pp = rs.getString("rno");
}
  
             
 %>
 
 
 <script>
     document.getElementById(rnolabel).value = '<%= session.getAttribute("user")%>';
     document.getElementById(pplabel).value = '<%= pp %>';
     document.getElementById(pnamelabel).value = '<%= project %>';
     document.getElementById(guidelabel).value = '<%= guide %>';
   
    </script>
 
<br>
    <div id="demo">On Going Project</div>
 <div id="con">   
<br><br>
Roll No. :  <label id="rnolabel" style="vertical-align: middle">  <%= session.getAttribute("user")%> </label>
<br><br>
Project Partner : <label id="pplabel" style="vertical-align: middle"> <%= pp %> </label>
<br><br>
Project Name : <label id="pnamelabel" style="vertical-align: middle">  <%= project %> </label>
<br><br>
Guide : <label id="guidelabel" style="vertical-align: middle">  <%= guide %> </label>
    </div>
 <%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>   


</body>
</html>