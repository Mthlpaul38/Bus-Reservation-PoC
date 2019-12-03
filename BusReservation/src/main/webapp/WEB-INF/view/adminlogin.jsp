<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
      <link rel="stylesheet" href="css/sty.css">
  </head>
  <body>
  <section class="section">
    <div class="container">
      <h1 class="title has-text-centered">
        Admin Login
      </h1>
          <form action="adminlogin" method="post">
        <div class="columns is-centered   ">
        
        <div class="column  is-half has-text-centered  ">
            

          
         
            
                <div class="field ">
                        <label class="label">Admin Name</label>
                        <div class="control ">
                               <input class="input set"  type="text" placeholder="Admin"  name="id" required>
                                    
                                    
                        </div>
                </div>
            
            <div class="field">
                <label class="label">Password</label>
                <div class="control ">
                        <input class="input set" type="password" placeholder="admin@password"  name="password">
        
                </div>
                   
            </div>
            <div class="field">
                
                
                
                </div>

            
            </div>
        
        </div>
        
       
               <div class="columns">
      <div class="column">
          
          <div class="  has-text-centered">      
            <input class="button is-success" type="submit" id="sub" name="submit" value=" login" >
        
        
        </div>
          </div>
      </div>
              
      </form>
      
    </div>
  </section>
  </body>
</html>