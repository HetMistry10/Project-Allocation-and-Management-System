
<jsp:include page="student.jsp"/>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<!DOCTYPE html>

<% 
    
   
    session = request.getSession();
   // session.setMaxInactiveInterval(15);
    if(session.getAttribute("user") == null || !(session.getAttribute("status").equals("student")))
{
response.sendRedirect("index.jsp");
}

 

%>

<html>
    <head>
        <style>
            
            
            #header
            {
                align:center;
                font-family: Century Gothic;
                font-size:20px;
            }
            
            
            table {
	width: 500px;
	table-layout:fixed;
	margin:auto;
        border: 0px;
}
th, td {
	padding:5px 10px;
	border:1px solid #000;
}
thead, tfoot {
	background:#f9f9f9;
	display:table;
	width:100%;
	width:calc(100% - 18px);
}
tbody {
	height:450px;
        
	overflow:auto;
	overflow-x:hidden;
	display:block;
	width:100%;
}
tbody tr {
	display:table;
	width:100%;
	table-layout:fixed;
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
        
        String cftable=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "topiclist";
  
             rs=stmt.executeQuery("select * from "+cftable+" order by faculty");
%>
  <br><br>
    <center>
<div id="header">
    Available project
    </div>
<br>
<table border="1" class="table">
    <th width="20px">No.
    </th>
    <th>project name</th>
    <th>faculty name</th>



    <%
        int count=0;
while(rs.next())
{
    count++;
String fname = rs.getString("pname"); 
String guide = rs.getString("faculty");
%>

    

<tr>
    <td width="20px">  <%= count %></td>
    <td>
    <%=fname %>   
</td>
<td><%= guide%></td>
  </tr>
 

          


<%
    }

%>
</table> 
    <%

}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
    
    
    
    


</body>
</html>