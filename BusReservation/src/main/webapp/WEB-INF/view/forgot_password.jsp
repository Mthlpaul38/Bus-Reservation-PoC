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
        Please enter your email address
      </h1>
      
      <br>
     
      <h2 class="subtitle">
       To reset your password, please enter the email address you used when registering for the site. 
      We will send you an email with temporary password.
      </h2>
      <form action="set_password" method="post">
<div class="field">
  <p class="control has-icons-left has-icons-right">
    <input class="input" type="email" name="email" placeholder="Email">
    <span class="icon is-small is-left">
      <i class="fas fa-envelope"></i>
    </span>
    <span class="icon is-small is-right">
      <i class="fas fa-check"></i>
    </span>
  </p>

<br>
<div class="field">
  <p class="control">
    <button class="button is-success has-background-grey-dark" type="submit">
      Generate password
    </button>
  </p>
</div>


   
    </div>
    </form>
  </div>
  </div>
</section>
</body>

</html>