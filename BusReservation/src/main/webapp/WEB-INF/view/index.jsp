<%@ page import = "java.io.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
      <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/style.css" />
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/css.css">
    <title>EasyBus</title>
  </head>
  <body>
  <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
       
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
	
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index"
              >Home <span class="sr-only">(current)</span></a
            >
          </li>
        
          
          <li class="nav-item">
            <a class="nav-link" href="contact" tabindex="-1">Contact us</a>
          </li>
            <li class="nav-item">
            <a class="nav-link" href="#offers" tabindex="-1">Explore Offers </a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
        <li class=nav-item>
        <a href ="admin" class="nav-link">Admin</a>
        </li>
          <li class="nav-item">
            <a class="nav-link loginToggle">Login/Signup</a>
          </li>
          
        </ul>
      </div>
    </nav>
  

<!-- LOGIN MODAL -->
<div class="modal" id="loginModal">
  <div class="modal-background"></div>
  <div class="modal-card">

      <header class="modal-card-head">
          <p class="modal-card-title">Login</p>
          <button class="toggleModal delete" aria-label="close"></button>
      </header>

      <form action="login" method="post">
          <section class="modal-card-body">
              <div class="field">
                  <label class="label">Username</label>
                  <p class="control has-icons-left has-icons-right">
                      <input class="input" name="username" type="text" placeholder="Username" required> <span class="icon is-small is-left"> <i class="fas fa-envelope"></i>
      </span> <span class="icon is-small is-right"> <i
        class="fas fa-check"></i>
      </span>
                  </p>
              </div>
              <div class="field">
                  <label class="label">Password</label>
                  <p class="control has-icons-left">
                      <input class="input" name="password" type="password" placeholder="Password" required>
                      <span class="icon is-small is-left"> <i class="fas fa-lock"></i>
      </span>
                  </p>
              </div>

          </section>
          <footer class="modal-card-foot">
              <button class="button is-success" type="submit">Login</button>
              <button type="button" class="signupToggle button is-success">Signup</button>
          </footer>
      </form>
  </div>
</div>

<!-- SIGNUP MODAL -->
<div class="modal" id="signupModal">
  <div class="modal-background"></div>
  <div class="modal-card">
      <header class="modal-card-head">
          <p class="modal-card-title">Sign Up</p>
          <button class="toggleModal delete" aria-label="close"></button>
      </header>
      <section class="modal-card-body">
          <form action="register" method="post">
              <!-- Content ... -->
              <div class="field">
                  <label class="label">First Name</label>
                  <div class="control">
                      <input class="input" name="first_name" type="text" placeholder="First Name" required>
                  </div>
              </div>

              <div class="field">
                  <label class="label">Last Name</label>
                  <div class="control">
                      <input class="input" name="last_name" type="text" placeholder="Last Name" required>
                  </div>
              </div>

              <div class="control">
                  <label class="label">Gender</label> <label class="radio"> <input
                      type="radio" name="gender" value="M"> Male
                  </label> <label class="radio"> <input type="radio" name="gender" value="F" required>
                      Female
                  </label>
              </div>

              <div class="field">
                  <label class="label">Telephone</label>
                  <div class="control has-icons-left has-icons-right">
                      <input class="input is-success" type="number" step="0.01" name="number" placeholder="Text input"> <span class="icon is-small is-left"> <i class="fas fa-phone"></i>
                      </span> <span class="icon is-small is-right"> <i
                          class="fas fa-check"></i>
                      </span>
                  </div>
              </div>

              <div class="field">
                  <label class="label">Email</label>
                  <div class="control has-icons-left has-icons-right">
                      <input class="input is-danger" name="email" id="email" type="email" placeholder="Email input" value="hello@">
                      <span class="icon is-small is-left">
                          <i class="fas fa-envelope"></i>
                        </span>
                      <span class="icon is-small is-right">
                          <i class="fas fa-exclamation-triangle"></i>
                        </span>
                  </div>
                  <p class="email-invalid-result help is-danger">This email is invalid</p>
              </div>

              <div class="field">
                  <label class="label">Password</label>
                  <p class="control has-icons-left">
                      <input class="input" type="password" placeholder="Password" name="password" required>
                      <span class="icon is-small is-left"> <i class="fas fa-lock"></i>
                      </span>
                  </p>
              </div>
  <footer class="modal-card-foot">
          <button class="button is-success" id="validate" value="submit">Sign Up</button>
          <button class="loginToggle button is-success">Login</button>
      </footer>
      </form>
      </section>
    
  </div>
</div>




    <div class="container-fluid main" style="padding:70px;" >
      <h1 class="text-center" style="color: azure">Your Service Expert in Delhi</h1>
      <p class="sub-head text-center" style="color: beige">
        Get instant access to reliable and affordable services
      </p>


  <form action="search" method="post">
      <div class="row mb-5 no-gutters" style="padding-left: 100px">
    
        <div class="col-lg-2">
       <div class="form-group">
            <input name="from"
              type="text"
              class="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              placeholder="From"
            />
          </div>
            </div>
        <div class="col-lg-2">
          <div class="form-group">
            <input  name="to"
              type="text"
              class="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              placeholder="To"
            />
          </div>
        </div>
        <div class="col-lg-2">
            <div class="form-group">                        
            <input id="onwardDate" type="date" name="mydate" max="3000-12-31"
                min="2019-12-3" class="form-control">
            </div>
        </div>
         
        <div class="col-lg-2">
          <div class="form-group">
            <input type="submit" value="Search Buses" class="btn btn-primary btn-lg"/>              
          
          </div>
        </div>
       
      </div>
       </form>
    </div>

 <div class="row">
        <div class="col-lg-6 offset-lg-3 overlay">
                <!--<div class="card mb-3">
                    <div class="row no-gutters">
                        <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                        </div>
                    </div>
                </div>-->
            <br/><br/><br/><br/><br/><br/>
            <br/>
        </div>
    </div>
    <div class="container">
    <div class="row" id="offers">
        <div class="col-lg-4">
                <!-- <div class="card mb-3 border-0" style="min-height:170px">
                        <div class="row no-gutters">
                          <div class="col-md-4">
                            <img style="height:120px" src="./assets/images/festive.png" class="card-img" alt="..."> </img>
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title">Cashback upto Rs 500</h5>
                              <p class="card-text">Cashback upto Rs 500</p>
                              
                            </div>
                          </div>
                        </div>
                      </div> -->
                      <div class="card" style="width: 20rem;">
                          <img style="height:100px" src="../images/festive.png" class="card-img" alt="..."> </img>
                          <div class="card-body">
                            <h5 class="card-title">Get upto Rs 500 off</h5>
                            <p class="card-text">
                              On all of your bookings get upto 10% off.Offer Valid for Bookings above Rs 1000.
                            </p>
                          </div>
                        </div>
        </div>
        <div class="col-lg-4">
                <!-- <div class="card mb-3 border-0" style="min-height:170px">
                        <div class="row no-gutters">
                          <div class="col-md-4">
                            <img style="height:120px" src="assets/images/festive.png" class="card-img" alt="..."></img>
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                              
                            </div>
                          </div>
                        </div>
                      </div> -->
                      <div class="card" style="width: 20rem;">
                          <img style="height:100px" src="../images/i1.png" class="card-img" alt="..."> </img>
                          <div class="card-body">
                            <h5 class="card-title">Magic Weekends</h5>
                            <p class="card-text">
                              Travel on Weekends and see the magic in the fares.Grab upto 50% off.Offer valid only for weekends.
                            </p>
                          </div>
                        </div>
        </div>
        <div class="col-lg-4">
                <!-- <div class="card mb-3 border-0" style="min-height:170px">
                        <div class="row no-gutters">
                          <div class="col-md-4">
                            <img style="height:120px" src="assets/images/festive.png" class="card-img" alt="..."></img>
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                             
                            </div>
                          </div>
                        </div>
                      </div> -->
                      <div class="card" style="width: 20rem;">
                          <img style="height:100px" src="../images/i4.png" class="card-img" alt="..."> </img>
                          <div class="card-body">
                            <h5 class="card-title">Pay online and Get cashback</h5>
                            <p class="card-text">Pay online for your travels above 1000 and get Rs 100 cashback on your Wallet</p>
                          </div>
                        </div>
        </div>
    </div>
</div>
<br/><br/>
<div class="container">
<div class="jumbotron jumbotron-fluid">
        <div class="container">
          <h1 class="display-4">Introducing On time Guarantee</h1>
          <p class="lead">Leave on time, everytime</p>
          <div class="row">
              <div class="col-lg-3">
                    <div class="card" >
                            <div class="card-body">
                              <h5 class="card-title">No delays</h5>
                              <h6 class="card-subtitle mb-2 text-muted">Get 25% refund</h6>
                              <p class="card-text">If the bus arrival is delayed by 30 mins from the arrival station.</p>
                              
                            </div>
                          </div>
              </div>
              <div class="col-lg-3">
                    <div class="card" >
                            <div class="card-body">
                              <h5 class="card-title">Bus on time</h5>
                              <h6 class="card-subtitle mb-2 text-muted">Get 25% refund</h6>
                              <p class="card-text">If bus departure is delayed by 30 mins from boarding point.</p>
                              
                            </div>
                          </div>
                </div>
                <div class="col-lg-3">
                        <div class="card" >
                                <div class="card-body">
                                  <h5 class="card-title">No bus cancellation</h5>
                                  <h6 class="card-subtitle mb-2 text-muted">Get 150% refund </h6>
                                  <p class="card-text">
If the bus is cancelled without prior notice or an alternate arrangement.</p>
                                  
                                </div>
                              </div>
                    </div>
                    <div class="col-lg-3">
                            <div class="card" >
                                    <div class="card-body">
                                      <h5 class="card-title">Alternate insurance</h5>
                                      <h6 class="card-subtitle mb-2 text-muted">Get 300% refund</h6>
                                      <p class="card-text">Bus breaks down with no alternate arrangement within 6 hours.</p>
                                      
                                    </div>
                                  </div>
                        </div>
          </div>
        </div>

        
      </div>
    </div>
        <div class="navbar navbar-dark bg-dark">
        
              <nav class="nav">
                    <a class="nav-link" href="#">CopyRight</a>
                    <a class="nav-link" href="tc">T&C</a>
                    <a class="nav-link" href="#">FAQ'S</a>
                    <!--<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>-->
                  </nav>
            </div>



<script type="text/javascript">
var today = new Date();
var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();  
var x=document.getElementById("onwardDate");
 x.setAttribute("min",date);
document.getElementById("onwardDate").value=date;
document.getElementById("returnDate").value=date;
var y=document.getElementById("returnDate");
y.setAttribute("min",date); 
</script>

    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"
    ></script>
    <script>
      // the following code deals with sign-up email validation.
      function validate(e) {
          var booking_email = $('#email').val();
          if (/(.+)@(.+){2,}\.(.+){2,}/.test(booking_email)) {
              // nothing
          } else {
              $('.email-invalid-result').show();
              e.preventDefault();
          }
      }
      $("#validate").on("click", validate);
    
      // the following code deals with modal toggling.
      $(document).ready(function() {
          $(".email-invalid-result").hide();
          $(".loginToggle").click(function() {
              $("#signupModal").removeClass("is-active");
              $("#loginModal").addClass("is-active");
              // $("#loginModal").attr("class", "is-active");
          });
          $(".signupToggle").click(function(e) {
              // e.preventDefault;
              $("#loginModal").removeClass("is-active");
              $("#signupModal").addClass("is-active");
          });
          $(".toggleModal").click(function() {
              console.log("yay");
              console.log($("#loginModal")[0]);
              $("#loginModal").removeClass("is-active");
              $("#signupModal").removeClass("is-active");
          });
      });
    </script>
  </body>
</html>
