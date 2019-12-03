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
<link href="https://fonts.googleapis.com/css?family=Lato&display=swap"
	rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
<link rel="stylesheet" href="../css/style.css" />
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/css.css">
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

.logo-image {
	width: 65px;
	height: 60px;
	border-radius: 50%;
	overflow: hidden;
	margin-top: -6px;
}

#footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}

/* body{

      background: url('./background.jpg');
      resize: both;
    } */
#changeHoverColorNav {
	padding-left: 2em;
}
</style>
</head>

<body>
	<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">RedBus</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="index">Home
						<span class="sr-only">(current)</span>
				</a></li>


				<li class="nav-item"><a class="nav-link" href="#"
					tabindex="contact">Contact us</a></li>
				<li class="nav-item"><a class="nav-link" href="#" tabindex="-1">Explore
						Offers </a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link loginToggle">Login/Signup</a>
				</li>

			</ul>
		</div>
	</nav>





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
		<!-- 	<tfoot>
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
			</tfoot> -->
			
			<tbody>
				<%
								int i = 0;
							%>
				<c:forEach items="${mylist}" var="mylist">
					<c:set var="fare" scope="session" value="${mylist.dist*4}" />

					<tr>
						<td><%=++i%></td>
						<td>${mylist.t1.arrival_time}/${mylist.t1.departure_time}</td>

						<td>${mylist.t2.arrival_time}/${mylist.t2.departure_time}</td>



						<td>${mylist.seats}</td>
						<td>${mylist.distance}</td>
						<td>${fare}Rs.</td>

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