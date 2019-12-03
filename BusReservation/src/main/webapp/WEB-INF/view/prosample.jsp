<!-- <html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Bulma!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
      

  </head>
  <body>
  <section class="section">

  <h1 class="has-text-centered has-text-weight-bold is-size-4">Personal Information</h1><br>
      
<div class="columns">
      <div class="column is-centered ">
    
    
    <form action="updte.jsp" method="get">
          
          
          
<div class="field is-horizontal">
  <div class="field-label is-normal">
    
  </div>
  <div class="field-body ">
    <div class="field ">
         <label class="label">Name</label>
      <p class="control is-expanded has-icons-left">
        <input class="input" style="width:70%" type="text" placeholder="Name" disabled>
        <span class="icon is-small is-left">
          <i class="fas fa-user"></i>
        </span>
      </p>
    </div>
    <div class="field">
         <label class="label">Email</label>
      <p class="control is-expanded has-icons-left has-icons-right">
        <input class="input is-success" style="width:70%" type="email" placeholder="Email" value="alex@smith.com" disabled>
        <span class="icon is-small is-left">
          <i class="fas fa-envelope"></i>
        </span>
        
      </p>
    </div>
  </div>
</div>
          <br>
          <br>
    <div class="field is-horizontal">
  <div class="field-label is-normal">
    
  </div>
  <div class="field-body ">
   <div class=" field">
       
         <label class="label">DOB</label>
       
        
        <input class="input" style="width:65%" value="dat" type="date" id="date1" disabled>
        
        </div>
    
     <div class="field">
    
    <label class="label">Gender</label>

              
        <input class="is-checkradio is-success" id="gen1" type="radio" checked name="gen"value="male" > Male
        <input class="   is-checkradio is-success" id="gen2" type="radio" name="gen" value="female" > Female
   
    </div>
  </div>
</div>
          <br>
          <br>
<div class="field is-horizontal">
  <div class="field-label is-normal">
    
  </div>
    
      <div class="field-body ">
   <div class=" field">
        <label class="label">Phone Number</label>
    <p class="control is-expanded has-icons-left">
         <input class="input" type="number" style="width:70%" name="num" placeholder="9447747744" disabled>
       <span class="icon is-small is-left"> <i class="fas fa-phone"></i>
        </span> 
      </p>
        
       
        
         </div>
    
    <div class="field">
    
      <label class="label">Address</label> 
         <textarea  class="textarea"  disabled style="width:250px;" id="add" rows = "3" cols = "30"  name = "description">
            Enter your name
            
         </textarea>
    
        
    </div>
  </div>
    
    
    </div>
          
          <br>
        
        <div class="  has-text-centered">
        <button onclick="enable()" type="button" class="button is-info set">Edit</button>
          
            <input class="button is-success" type="submit" id="sub" name="submit" value=" submit" disabled>
        
        
        </div>
 
        
        
  </form>
          
          
          
      </div>
      </div>

      </section>
       <script>
        
        
function enable() 
        { 
            document.getElementById("date1").disabled = false;
            document.getElementById("gen1").disabled=false;
            document.getElementById("gen2").disabled=false;
            document.getElementById("add").disabled=false;
            document.getElementById("sub").disabled=false;
        
        } 
    
    </script>
  </body>
</html> -->
<%@page import="io.micrometer.core.ipc.http.HttpSender.Request"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.example.BusReservation.models.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
					id="changeHoverColorNav" href="index"> Home </a> <a
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

			<div class="column is-centered ">

                 <h1 class="has-text-centered has-text-weight-bold is-size-4">Personal
			Information</h1><br>

				<form action="updtetodata" method="post">



					<div class="field is-horizontal">
						<div class="field-label is-normal"></div>
						<div class="field-body ">
							<div class="field ">
								<label class="label"> First Name</label>
								<p class="control is-expanded has-icons-left">
									<input class="input" style="width: 70%" type="text"
										placeholder="${user1.first_name}" disabled> <span
										class="icon is-small is-left"> <i class="fas fa-user"></i>
									</span>
								</p>
							</div>
							<div class="field">
								<label class="label"> Last Name</label>
								<p class="control is-expanded has-icons-left">
									<input class="input" style="width: 70%" type="text"
										placeholder="${user1.last_name}" disabled> <span
										class="icon is-small is-left"> <i class="fas fa-user"></i>
									</span>
								</p>
							</div>
						</div>
					</div>
					<br> <br>
					<div class="field is-horizontal">
						<div class="field-label is-normal"></div>
						<div class="field-body ">
							<div class="field">
								<label class="label">Email</label>
								<p class="control is-expanded has-icons-left has-icons-right">
									<input class="input is-success" style="width: 70%" type="email"
										placeholder="${user1.user_email }" disabled> <span
										class="icon is-small is-left"> <i
										class="fas fa-envelope"></i>
									</span>

								</p>
							</div>
							<div class="field">
								<label class="label">Gender</label>
								<c:choose>
								
									<c:when test="${user1.user_gender=='M'}">
										<input class="is-checkradio is-success" id="gen1" type="radio"
											checked disabled name="gen" value="M"> Male	
											<input class="   is-checkradio is-success" id="gen2"
											type="radio" disabled name="gen" value="F"> Female
							 		</c:when>
									<c:otherwise>
									<input class="is-checkradio is-success" id="gen1" type="radio"
											 disabled name="gen" value="M"> Male	
										<input class="   is-checkradio is-success" id="gen2"
											type="radio" checked disabled name="gen" value="F"> Female
							 		</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<br> <br>
					<div class="field is-horizontal">
						<div class="field-label is-normal"></div>

						<div class="field-body ">
							<div class=" field">
								<label class="label">Phone Number</label>
								<p class="control is-expanded has-icons-left">
									<input class="input" type="number" style="width: 70%"
										name="num" placeholder="${user.contact_no }" disabled>
									<span class="icon is-small is-left"> <i
										class="fas fa-phone"></i>
									</span>
								</p>



							</div>


						</div>


					</div>

					<br>

					<div class="  has-text-centered">
						<button onclick="enable()" type="button"
							class="button is-info set">Edit</button>

						<input class="button is-success" type="submit" id="sub"
							name="submit" value=" submit" disabled>


					</div>



				</form>



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
		function enable() {

			document.getElementById("gen1").disabled = false;
			document.getElementById("gen2").disabled = false;

			document.getElementById("sub").disabled = false;

		}
	</script>
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