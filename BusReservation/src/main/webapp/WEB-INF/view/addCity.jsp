<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Bulma!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="javascript/script.js"></script>
    
  </head>
  <body>
  <section class="section">
  <div class="container">
     
        
  <h1 class="title  has-text-centered">Enter City Details</h1>
        
    <form action="addcityform" method="post"  >
    <div class="columns" >
        
            
        <div class="column" id="col1">
            
        <div class=" field ">
       
         <label class="label ">City Name</label>    
        <input class="input " type="text" style="width: 80%" required="required" name="name1">

        </div>
  
        </div>

        <div class="column" id="col2">    
        <div class=" field ">
         <label class="label ">Arrival Time</label>
                
                <input class="input " style="width: 80%" required="required" type="time" name="arri1" >
               
                </div>
            </div>
            
            
          
        <div class="column" id="col3" >      
			<div class=" field ">
         <label class="label ">Destination  Time</label>
               
                <input class="input "style="width: 80%" required="required"  type="time" name="desi1" >
                
                </div>
                
            </div>
            
        
      </div>
      
      <div class="columns">
      <div class="column">
          
          <div class="  has-text-centered">
        <button id="addmore" type="button" class="button is-info set" >Add     City</button>
          
            <input class="button is-success" type="submit" id="sub" name="submit" value=" submit" >
        
        
        </div>
          </div>
      </div>
      
     </form> 
    </div>
  </section>
     
  </body>
</html>