<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="com.example.BusReservation.models.Bus_Details"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Select Bus</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
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
}</style>
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


	<div class="container" >
		<div class="columns">
			<div class="column has-background-white-ter is-narrow" id="navb">
				<aside class="menu ">
					<p class="menu-label">General</p>
					<ul class="menu-list">
						<li><a id="changeHoverColorMenu" href="login">Dashboard</a></li>
						<li><a id="changeHoverColorMenu" href="booking">My Bookings</a></li>
						<li><a id="changeHoverColorMenu" href="profile">Profile</a></li>
						<li><a id="changeHoverColorMenu">Change Password</a></li>
					</ul>

				</aside>

			</div>



			<div class="column">
				<table class="table is-fullwidth">
					<thead>
						<tr>
							<th><abbr title="Index">Index</abbr></th>
							<th><abbr title="Source">Source Arrival/Depart</abbr></th>


							<th><abbr title="Destination">Destination
									Arrival/Depart</abbr></th>

							<th><abbr title="Seats">Seats</abbr></th>
							<th><abbr title="Distance">Distance</abbr></th>

                            <th><abbr title="Fare">Fare</abbr></th>
							<th><abbr title="Book">Book</abbr></th>

						</tr>
					</thead>
					<tfoot>
						<tr>
							<th><abbr title="Index">Index</abbr></th>

							<th><abbr title="Source">Source Arrival/Depart</abbr></th>


							<th><abbr title="Destination">Destination
									Arrival/Depart</abbr></th>

							<th><abbr title="Seats">Seats</abbr></th>
							<th><abbr title="Distance">Distance</abbr></th>

						<th><abbr title="Fare">Fare</abbr></th>
							<th><abbr title="Book">Book</abbr></th>

						</tr>
					</tfoot>
					<tbody>
						<%
								int i = 0;
							%>
						<c:forEach items="${mylist}" var="mylist">

                            <c:set var="fare" scope="session" value="${mylist.dist*4}"/>  
							<tr>
								<td><%=++i%></td>
								<td>${mylist.t1.arrival_time}/${mylist.t1.departure_time}</td>

								<td>${mylist.t2.arrival_time}/${mylist.t2.departure_time}</td>



								<td>${mylist.seats}</td>
								<td>${mylist.distance}</td>

                              <td>${fare} Rs.</td>

								<td><form action="book" method="post">
										<input type="hidden" name="bus_id" value="${mylist.bus_id}">
										<div class="buttons">
											<button class="button is-primary" type="submit">Book</button>
										</div>
									</form></td>




							</tr>
						</c:forEach>

					</tbody>
				</table>

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
					id="changeHoverColorNav" href="tc"> T & C </a> <a
					class="navbar-item has-text-white has-background-grey-darker"
					id="changeHoverColorNav"> FAQ </a>


			</div>


		</div>
	</nav>




</body>

</html>