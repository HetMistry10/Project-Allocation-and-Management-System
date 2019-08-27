<jsp:include page="student.jsp"/>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jquery-3.2.1.min.js"></script>
<style>
.text
  {
  position:relative;
  left:20px;
  /*top:70px;*/
  width:300;
  height:40px;  
    border: 0;
    border-radius: 0;
    border-bottom: 1px solid #cfd2d5;
    letter-spacing: normal;
    font-size: .94118em;
    z-index: 1;
  background:transparent;
  }

</style>
</head>
<body>

<form  action="materialvalid.jsp" target="myFrame">
<br><br><br><br><br><br>
<center>
 Roll No. : <input class="text" type="text"  name="rno" required="required"  placeholder="Enter roll no of any one of your group " />
 <br /><br />
 Project Title &nbsp: <input class="text" type="text"  name="pname" required="required"  placeholder="Enter your project title" />
  <br /><br />
  Material Required : <input class="text" type="text" name="material" required="required"  placeholder="Enter which material you required" />
  <center>
  <br /><br />
  <input type="submit" value="Request" id="submit_btn" />



</form>
</body>
</html>
