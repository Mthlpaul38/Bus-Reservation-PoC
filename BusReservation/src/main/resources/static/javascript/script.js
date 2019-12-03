  $(function() {
	  var x=2;
  $("#addmore").click(function(e) {
    e.preventDefault();
    	
    $("#col1").append("<br> ");
   $("#col1").append(" <div class='field '> <input class='input' type='text' style='width: 80%' name='city' required/></div>");
    
   $("#col2").append("<br> <div class='field '> <input class='input' type='time' style='width: 80%' name='arri'required /></div>");
      
    
  $("#col3").append("<br><div class='field '> <input class='input' type='time' style='width: 80%' name='desi' required /></div>");
 
  /*$("#col3").append("<br><div class='field '> <input  type='hidden' style='width: 80%' name='length' value='' required/></div>");
  
  x=x+1;*/
  });
});