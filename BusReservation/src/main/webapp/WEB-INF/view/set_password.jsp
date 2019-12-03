<!DOCTYPE html>
<html lang="">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Title Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/css.css">
</head>

<body>

<section class="hero is-medium is-bold  has-background-light">
  <div class="hero-body">
    <div class="container">
      <h1 class="title">
        Set New Password
      </h1>
      
      <br>
     

      <h2 class="subtitle">
       To reset your password, please enter the temporary password you have received on email and set new password.
      </h2>
      
    

<form action="change_password" method="post">      
<label class="label">Temporary Password</label>
<div class="field">
  <div class="control">
    <input class="input" type="text"  name="temp" placeholder="Temporary password">
  </div>
</div>
<br>

<label class="label">New Password</label>
<div class="field">
  
  <div class="control">
    <input class="input" id="password" type="text"  placeholder="New password" onchange="validatePassword()">
  </div>
</div>

<div class="field">
  
  <div class="control">
    <input class="input" id="confirm_password" type="text" name="password" placeholder="Re-type new password" onkeyup="validatePassword()">
  </div>
</div>
<br>
<div class="field">
  <p class="control">
    <button class="button is-success has-background-grey-dark" type="submit">
      Generate password
    </button>
  </p>
</div>


</form>
 <script type="text/javascript">
     var password = document.getElementById("password")
     , confirm_password = document.getElementById("confirm_password");

   function validatePassword(){
     if(password.value != confirm_password.value) {
       confirm_password.setCustomValidity("Passwords Don't Match");
     } else {
       confirm_password.setCustomValidity('');
     }
   }

   
     </script>    
    </div>
  </div>
</section>
</body>

</html>