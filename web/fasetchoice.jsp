<jsp:include page="fa.jsp"/>
<html>
<head>
 <script>
    /*function check(e)
    {
    alert(e.keyCode);
    }*/
   /* document.onkeydown = function(e) {
            if (e.ctrlKey && (e.keyCode === 67 || e.keyCode === 86 || e.keyCode === 85 || e.keyCode === 117 || e.keyCode === 105 || e.keyCode === 73)) {//Alt+c, Alt+v will also be disabled sadly.
                alert('not allowed');
                
            }
            return false;
    };*/
    
   


    </script>

    <style>
        .text
	{
	position:relative;
	left:20px;
	top:00px;
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
        
        select
	{position: relative;
         left:00px;
            width: 250px;
    padding: 10px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-family: Century Gothic;
	}
        
        
    </style> 

    
</head>
<body>
    <br>
    
    <form action="fasetchoicevalidate.jsp" method="POST">	
<div class="selectsemclass">
        Select sem : <select  class="selectsem" name="selectsem"><option disabled selected value> -- select a semester -- </option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>

 </select> 
</div>
        <center>    
        <br>        
     Project 1 :  <input class="text" type="text" name="project1" required placeholder="Type None for no project" />
     <br>   <br>     
     Project 2 : <input class="text" type="text" name="project2" required placeholder="Type None for no project" />
     <br>       <br> 
     Project 3 : <input class="text" type="text" name="project3" required placeholder="Type None for no project" />
     <br>       <br>
     Project 4 : <input class="text" type="text" name="project4" required placeholder="Type None for no project" />
     <br>        <br>
     Project 5 : <input class="text" type="text" name="project5" required placeholder="Type None for no project" />
     </center>

               
        <br><br>           
<input id="login3" type="submit" name="signin2" class="orko-button-primary orko-button" value="Next" tabindex="2">
			

    
    
</form>	
   
    
        
</body>
</html>