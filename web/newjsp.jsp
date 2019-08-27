   <script>
  var windowObjectReference;
  var strWindowFeatures = "menubar=no,location=no,resizable=no,scrollbars=no,status=yes,width=1200,height=700";

    
   // document.location.replace();//
      windowObjectReference = window.open("index.jsp", "CNN_WindowName", strWindowFeatures);
     
   if(windowObjectReference.closed)
   {
           
             session.invalidate();

        }
   
</script>