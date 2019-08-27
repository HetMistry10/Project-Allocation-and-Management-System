<jsp:include page="student.jsp"/>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>

<%
if(session.getAttribute("user") == null)
{
response.sendRedirect("index.jsp");
}
        
Connection con = null;
ResultSet rs;




try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();
  
        String cftable=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "allocated_project";
       

                rs=stmt.executeQuery("select rno from "+cftable+"");
                
   
        %>

<html>
<head>
<STYLE>
    body
    {
         font-family: Century Gothic;
    }
.text
	{
	position:relative;
	left:20px;
	
	height:40px;	
    border: 0;
    border-radius: 0;
    border-bottom: 1px solid #cfd2d5;
    letter-spacing: normal;
    font-size: .94118em;
    z-index: 1;
     font-family: Century Gothic;
	background:transparent;
	}
	
	.odd
	{position: relative;
            width: 50%;
    padding: 10px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-family: Century Gothic;
	}
	
	.even
	{position : relative;
            width: 25%;
    padding: 10px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-family: Century Gothic;
	}
	
	#main
	{
	width: 100%;
    margin: auto;
	
	}
	.left
	{
		width:40%;
                float: left;
                font-family: Century Gothic;
	}
	
	.right
	{
		
		margin-left:10px;
                font-family: Century Gothic;
		
	}
	
#submitcf ,#resetcf
	{
    margin-left: 10px;
    position: relative;
    left: 202px;
    top: 22px;
    width:200px;
    height: 30px;
    background-color: blue;
    border: 2px solid transparent;
    border-radius: .25em;
    /* box-sizing: border-box; */
    font-size:20px;
    /* zoom: 1; */
    color: white;
    font-family: Century Gothic;	
	}
        #demo
        {
            font-size:25px;
            text-align: center;
            text-decoration: underline;
        }
</style>

<script>
function logout(){
      var x =   confirm("are you sure");
      alert(x);

}


    
    </script>
</head>

<body height="100%" width="100%" >
     <br><br>
         

<div id="demo">Fill Up Your Choices</div>
    <form action="cfsubmit.jsp" method="POST">
<div id="main">
<center>
	<div class="left">

        
        <%
        
        
        
        
        String cftabl=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "topiclist";
  
             rs=stmt.executeQuery("select stu_id from stu_detail where branch='"+session.getAttribute("branch")+"' and sem ="+session.getAttribute("sem")+" ");
%>
&nbsp;Partner Id : <select id="ron1" name="ron1" class="even" style="width:50%;" onchange="choice1(this)">
    <option disabled selected value>Choose None for No partner</option><option>None</option>
    <%
while(rs.next())
{
String fname = rs.getString("stu_id"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%>          
</select>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}





try
{
Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/project allocation system" ,"root", "");
        
  
        Statement stmt=con.createStatement();
        
        String cftable=""+session.getAttribute("branch")+"" + "_" + ""+session.getAttribute("sem")+"" + "_" + "topiclist";
  
             rs=stmt.executeQuery("select * from "+cftable+"");
%>


<br>
   Choice 1  : <select label="choice1" id="myselect1" name="myselect1" class="odd"><option disabled selected value> -- select an option -- </option>
<%
while(rs.next())
{
String fname = rs.getString("pname"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%> </select> 
    



<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>    
    
    



	
  <br>Choice 3  : <select id="myselect3" name="myselect3" class="odd" required="required"></select> 
 <br>Choice 5  : <select id="myselect5" name="myselect5" class="odd" required="required"> </select> 
 <br>Choice 7  : <select id="myselect7" name="myselect7" class="odd" required="required"> </select> 
 <br>Choice 9  : <select id="myselect9" name="myselect9" class="odd" required="required"> </select> 
 <br>Choice 11 : <select id="myselect11" name="myselect11" class="odd" required="required"> </select> 
 <br>Choice 13  : <select id="myselect13" name="myselect13" class="odd" required="required"> </select> 
 <br>Choice 15  : <select id="myselect15" name="myselect15" class="odd" required="required"> </select> 
	</center>
	
</div>
	
	<div class="right"><br><br>
	<center>
            Choice 2  : <select id="myselect2" name="myselect2" class="even" required="required"> </select>
 <br>Choice 4  : <select id="myselect4" name="myselect4" class="even" required="required"> </select> 
 <br>Choice 6  : <select id="myselect6" name="myselect6" class="even" requ required="required"ired="required"> </select> 
 <br>Choice 8  : <select id="myselect8" name="myselect8" class="even" required="required"> </select> 
 <br>Choice 10  : <select id="myselect10" name="myselect10" class="even" required="required"> </select> 
 <br>Choice 12  : <select id="myselect12" name="myselect12" class="even" required="required"> </select> 
 <br>Choice 14  : <select id="myselect14" name="myselect14" class="even" required="required"> </select> 
	</center>
	</div>
</div>
	
<input id="submitcf" type="submit"  value="SUBMIT" tabindex="2">
<input id="resetcf" type="Reset" class="orko-button-primary orko-button" value="RESET" tabindex="2">	
	


	
<script>
var first = document.getElementById('myselect1');
var options = first.innerHTML;

var two = document.getElementById('myselect2');
var three = document.getElementById('myselect3');
var four = document.getElementById('myselect4');
var five = document.getElementById('myselect5');
var six = document.getElementById('myselect6');
var seven = document.getElementById('myselect7');
var eight = document.getElementById('myselect8');
var nine = document.getElementById('myselect9');
var ten = document.getElementById('myselect10');
var eleven = document.getElementById('myselect11');
var twelve = document.getElementById('myselect12');
var  thirteen = document.getElementById('myselect13');
var  fourteen = document.getElementById('myselect14');
var fifteen = document.getElementById('myselect15');

two.innerHTML = options;
three.innerHTML = options;
four.innerHTML = options;
five.innerHTML = options;
six.innerHTML = options;
seven.innerHTML = options;
eight.innerHTML = options;
nine.innerHTML = options;
ten.innerHTML = options;
eleven.innerHTML = options;
twelve.innerHTML = options;
thirteen.innerHTML = options;
fourteen.innerHTML = options;
fifteen.innerHTML = options;

</script>

</form>

</body>
</html>


    
  
   