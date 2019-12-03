<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="com.example.BusReservation.models.Bookings"%>
<%@page import="java.util.*"%>
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
<link rel="stylesheet" href="css/header_footer.css">
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
						<a class="button is-light"href= "index"> Log Out </a>
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
						<li><a id="changeHoverColorMenu" href="bookings">My
								Bookings</a></li>
						<li><a id="changeHoverColorMenu" href="profile">Profile</a></li>
						<li><a id="changeHoverColorMenu" href="changepass">Change Password</a></li>
					</ul>

				</aside>

			</div>


			<div class="column ">
				<div class='rows'>
	<h1 class="title">Past Tickets</h1>

					<div class='row is-full'>
				
<%
List<String> pastTicket=(List<String>)request.getSession().getAttribute("pastTicket");


List<Bookings> lipast=(List<Bookings>)request.getSession().getAttribute("past");

for(String itr:pastTicket)
{

	String g="";
	String jurnydate="";
	String source="";
	String destination="";
for(Bookings b:lipast)
{
	
if(b.getTicket_id().equals(itr))
{ 
	g=g+b.getSeat_number()+" ";
jurnydate=b.getJurny_date()+"";
source=b.getSource_city();
destination=b.getDestination_city();
}
}
%>
<div  style="background-color:hsl(0,0%, 96%);">
<p>Ticket Id: <%=itr %>
<p> Journey Date:<%=jurnydate %></p>
<p> Seats are:<%=g %></p>
<p>Source city:<%=source %></p>
<p>Destination city:<%=destination %></p>


</div>
<br>
<br>	
<%} %>



					</div>

	<h1 class="title">Upcoming Tickets</h1>
					<div class='row is-full'>
						
						

<%
List<String> upcomingTicket=(List<String>)request.getSession().getAttribute("upcomingTicket");


List<Bookings> liupcoming=(List<Bookings>)request.getSession().getAttribute("upcoming");

for(String itr:upcomingTicket)
{

	String g="";
	String jurnydate="";
	String source="";
	String destination="";
for(Bookings b:liupcoming)
{
	
if(b.getTicket_id().equals(itr) /* && (b.getStatus().equalsIgnoreCase("Active")) */)
{ 
	g=g+b.getSeat_number()+" ";
jurnydate=b.getJurny_date()+"";
source=b.getSource_city();
destination=b.getDestination_city();
}
}
%>
<div  style="background-color:hsl(0,0%, 96%);">
<p>Ticket Id: <%=itr %>
<p> Journey Date:<%=jurnydate %></p>
<p> Seats are:<%=g %></p>
<p>Source city:<%=source %></p>
<p>Destination city:<%=destination %></p><br>
<% session.setAttribute("ticktid", itr) ;
session.setAttribute("seatasstring", g);
%>
<p><a href="/deletebooking" class="button is-danger ">Delete Booking</a>


</p>

</div>
<br>
<br>	
<%} %>
						
					</div>
				</div>
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