<jsp:include page="fa.jsp"/>   
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<% 
    session = request.getSession();
    if(session.getAttribute("user") == null || !(session.getAttribute("status").equals("fa")))
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
    <form action="faviewmarksvalid.jsp">
    <input name="farno" type="text">
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

    

 String temp=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "marks";

 rs=stmt.executeQuery("select * from "+temp+" where rno='"+request.getParameter("farno")+"'");

 
 String r1=null,r2=null,r3=null;
if(rs.next())
{
r1 = rs.getString("R1").toString();
r2 = rs.getString("R2").toString();
r3 = rs.getString("R3").toString();

}  
 
//int total = Integer.parseInt(r1)+Integer.parseInt(r2)+Integer.parseInt(r3);

%>
 
 

 
<br>
    <div id="demo">Marks</div>
 <div id="con">   

<br><br>
Project Name : <label id="pnamelabel" style="vertical-align: middle">  <%= project %> </label>
<br><br>
Review 1 Marks  : <label  style="vertical-align: middle">  <%= r1 %> </label>
<br><br>
Review 2 Marks  : <label  style="vertical-align: middle">  <%= r2 %> </label>
<br><br>
Review 3 Marks  : <label  style="vertical-align: middle">  <%= r3 %> </label>
<br><br>

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