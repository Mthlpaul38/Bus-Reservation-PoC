<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hello Bulma!</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/css.css">
<link rel="stylesheet" type="text/css" href="css/header_footer.css">

<style>
#changeHoverColorNav:hover {
	background-color: hsl(0, 0%, 29%) !important;
	/* background-color: white !important; */
}

#changeHoverColorMenu:hover {
	background-color: hsl(0, 0%, 50%);
}

#burger-menu:hover {
	background-color: hsl(0, 0%, 50%);
}

.container {
	/* background: url('./oliver-cole-n8.jpg');*/
	background-repeat: no-repeat;
	background-size: cover;
}

.logo-image {
	width: 65px;
	height: 60px;
	border-radius: 50%;
	overflow: hidden;
	margin-top: -6px;
}


.hero-body {
	/*background: url('images/oliver-cole-n8.jpg');*/
	background-repeat: no-repeat;
	background-size: cover;
	opacity: 0.5;
	align-items: flex-start;
}

/* body{

      background: url('./background.jpg');
      resize: both;
    } */
#changeHoverColorNav {
	padding-left: 2em;
}

.row {
	padding-top: 1em;
}

#navb {
	padding-top: 2em;
	width: 20%
}

#image1 {
	opacity: 0.70;
}

#emptyRow {
	height: 60%;
}

.card {
	width: 60%;
}

.card-image {
	width: 100%;
	position: relative;
}
</style>


</head>

<body>
	<nav class="navbar is-dark" role="navigation"
		aria-label="main navigation">
		<div class="navbar-brand">
			<div class="logo-image">
				<img src="images/logo.png" class="img-fluid">
			</div>

		</div>

		<div id="navbarBasicExample" class="navbar-menu">
			<div class="navbar-start">
				<a class="navbar-item has-text-white has-background-grey-darker"
					id="changeHoverColorNav"> Home </a> <a
					class="navbar-item has-text-white has-background-grey-darker"
					id="changeHoverColorNav" href="contact"> Contact Us </a>


			</div>

			<div class="navbar-end">
				<div class="navbar-item">
					<div class="buttons">
						<a class="button is-light" href= "index"> Log Out </a>
					</div>
				</div>
			</div>
		</div>
	</nav>


	<div class="container">
		<div class="columns">
			<div class="column has-background-white-ter is-narrow" id="navb">
				<aside class="menu ">
					<p class="menu-label">General</p>
					<ul class="menu-list">
						<li><a id="changeHoverColorMenu" href="login">Dashboard</a></li>
						<li><a id="changeHoverColorMenu" href="booking">My Bookings</a></li>
						<li><a id="changeHoverColorMenu" href="profile">Profile</a></li>
						<li><a id="changeHoverColorMenu" href="forgot">Change Password</a></li>
					</ul>

				</aside>

			</div>


<div class="column">


<section class="hero is-medium  is-bold">
  <div class="hero-body">
    <div class="container">
      <h1 class="title">
        Please enter your email address
      </h1>
      
      <br>
     
      <h2 class="subtitle">
       To change your password, please enter the previous password and new password.
      </h2>
      <form action="change" method="post">
<div class="field">
  <p class="control">
    <input class="input" type="password" name="old" placeholder="Current Password">
   
  </p>

<br>
  <p class="control">
    <input class="input" type="password" name="new" placeholder="New Password">
   
  </p>
<br><br>
<div class="field">
  <p class="control">
    <button class="button is-success has-background-grey-dark" type="submit">
     Change password & Log Out
    </button>
  </p>
</div>


   
    </div>
    </form>
  </div>
  </div>
</section>

</div>

</div>
</div>
	<nav class="navbar is-dark" role="navigation"
		aria-label="main navigation" id="footer">

		<div id="navbarBasicExample" class="navbar-menu">
			<div class="navbar-start">
				<a class="navbar-item has-text-white has-background-grey-darker"
					id="changeHoverColorNav"> CopyRight </a> <a
					class="navbar-item has-text-white has-background-grey-darker"
					id="changeHoverColorNav"> T&C </a> <a
					class="navbar-item has-text-white has-background-grey-darker"
					id="changeHoverColorNav"> FAQ </a>


			</div>


		</div>
	</nav>

	<script>
      $(document).ready(function () {

        // Check for click events on the navbar burger icon
        $(".navbar-burger").click(function () {

          // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
          $(".navbar-burger").toggleClass("is-active");
          $(".navbar-menu").toggleClass("is-active");

        });
      });
    </script>
</body>

</html>