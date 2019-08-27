
<jsp:include page="fa.jsp"/>

<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<html>
<head>
<script src="jquery-3.2.1.min.js"></script>
<style>
    .table{      
    border-bottom-color : rgb(128,128, 128);
border-collapse:
collapse
;
border-left-color:rgb(128, 128, 128)
;
border-right-color:
rgb(128, 128, 128)
;
border-top-color:
rgb(128, 128, 128)
;
box-sizing:
border-box
;
color:
rgb(51, 51, 51)
;
direction:
ltr
;
display:
table-row-group
;
font-family:
RobotoDraft, sans-serif
;
font-size:
14px
;
height:
712px
;
line-height:
20px
;
outline-color:
rgb(51, 51, 51)
;
outline-style:
none
;
outline-width:
0px
;
text-size-adjust:
100%
;
vertical-align:
middle
;
width:
1031px
;
-webkit-border-horizontal-spacing:
0px
;
-webkit-border-vertical-spacing:
0px
;
-webkit-tap-highlight-color:
rgba(0, 0, 0, 0)


.table-responsive>.table>tbody>tr>td, .table-responsive>.table>tbody>tr>th, .table-responsive>.table>tfoot>tr>td, .table-responsive>.table>tfoot>tr>th, .table-responsive>.table>thead>tr>td, .table-responsive>.table>thead>tr>th {
    white-space: nowrap;
}

.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 8px;
    line-height: 1.42857;
    vertical-align: top;
    border-top: 1px solid #e7ecf1;
}

.table td, .table th {
    font-size: 15px;
    font-family: "Roboto";
    vertical-align: middle !important;
}
.table td {
    border-top: 1px dashed #ddd !important;
}

.table td, .table th {
    font-size: 14px;
}

.btn, .paginasion a, .datepicker table td, .datepicker table th, .datetimepicker table td, .datetimepicker table th, th, td {
    font-family: "RobotoDraft", sans-serif !important;
}

td, th {
    padding: 0;
}
* {
    font-family: "RobotoDraft", sans-serif;
    outline: 0 !important;
}

*, :after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
user agent stylesheet
td, th {
    display: table-cell;
    vertical-align: inherit;
}

body {
    color: #333;
    padding: 0!important;
    margin: 0!important;
    direction: "ltr";
    font-size: 14px;
}

body, h1, h2, h3, h4, h5, h6 {
    font-family: "Roboto", sans-serif;
}

body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857;
    color: #333;
}


            }
</style>
</head>

    <br>Sem : <%= session.getAttribute("sem") %>

    <%
    
Connection con = null;
ResultSet rs;

try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();
 
        String allproj=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
 
String grpid = "Not allocated";
String project = "Not allocated";
String guide = "Not allocated";
String pp="Not allocated";
             
   

      rs=stmt.executeQuery("select * from "+allproj+"");

%>
   
<table border="1" class="table">
  
   
    <%
while(rs.next())
{
    
grpid = rs.getString("grp_id"); 
    pp = rs.getString("rno");
    project = rs.getString("pname"); 
    
    if(rs.getString("guide_name").toString().length()>1)
    guide = rs.getString("guide_name");

%>

<tr>
    <td><%= grpid%></td>
    <td><%= pp%></td>
    <td><%= project%></td>
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