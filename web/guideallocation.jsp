            
<%
    if(session.getAttribute("user") == null)
    {
response.sendRedirect("index.jsp?errors=Invalid login details");
    }
%>

<jsp:include page="fa.jsp"/>
<jsp:include page="gavariable.jsp"/>


<%@ include file="gavariable.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<html>
<head>
<script src="jquery-3.2.1.min.js"></script>
<style>
    
    
</style>
</head>
<body>

    <form action="guidevalid.jsp" method="post">
    <br>

    <%
    
Connection con = null;
ResultSet rs, rs2;

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
             
    String ftable = "faculty";

String[] faculty = new String[50];

int count=1;
        rs2 = stmt.executeQuery("select faculty from "+ftable+" where branch='"+session.getAttribute("branch")+"'");
        
        while(rs2.next())
        {
           faculty[count]= rs2.getString("faculty");
           count++;
        }
       
    
    
    rs=stmt.executeQuery("select * from "+allproj+"");

%>
<div class="allocationtalbe">
<table border="1">
  
   
    <%
    int in=0, tem;    
while(rs.next())
{
    
tem = rs.getInt("grp_id");
grpid=Integer.toString(tem);

//idedetail[in][0]=grpid;
//in++;


%>
   
    <%
    pp = rs.getString("rno");
    project = rs.getString("pname"); 
    
    if(rs.getString("guide_name").toString().length()>1)
    {
    guide = rs.getString("guide_name");
    }
//table[row][0] = grpid;
//String local = "select" + ""+row+"";
%>

<tr>
    <td><%= grpid%></td>
    <td><%= pp%></td>
    <td><%= project%></td>
    <td>
          
       
        <select name="<%=grpid%>">  <option selected="selected">None</option>
    <% 
        
for(int i=1;i<count;i++)
{ 
System.out.println(faculty[i] + "  "+ grpid);
%>
<option value="<%=faculty[i]%>"><%=faculty[i] %></option>
<%
}
%>          
</select>
        
        
    </td>

</tr>
 
 <%
   
    }

%>
</table> 
    
</div> 

<div class="faculty">

<div class="allocationtalbe">
<table border="1">
  
   
    <%
   // rs=stmt.executeQuery("select * from "+allproj+"");
   String filledchoice=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
   String totalchoice=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "topiclist";

   //rs = stmt.executeQuery("select count(pname) c, faculty f from '"+totalchoice+"' where pname not in(select pname from '"+filledchoice+"') group by faculty");
  //String temp = ""+session.getAttribute(br)+ ""
   rs = stmt.executeQuery("select count(pname) c, faculty f from "+totalchoice+" where pname not in(select pname from "+filledchoice+") group by faculty");
   
   String temp=null, temp2=null;
while(rs.next())
{
    
 temp2=rs.getString("c");

  temp=rs.getString("f").toString();
%>

    
<tr>
    <td><%= temp %>
        <td><%= temp2 %>
    

</tr>


    <%
                       
}
%>
</table>
</div>
<%

}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
    
    
    

    
<input id="submitga" type="submit"  value="SUBMIT" tabindex="2">
 
</form>   
</body>
</html>




