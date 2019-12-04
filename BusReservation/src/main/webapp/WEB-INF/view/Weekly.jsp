<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Statistics</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/materialdesignicons.min.css">
<link rel="stylesheet" href="../css/vendor.bundle.base.css">
<link rel="stylesheet" href="../css/stylea.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="../images/favicon.png" />
<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->

		<!-- partial -->

		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">

					<li class="nav-item"><a class="nav-link" href="stats">
							<span class="menu-title">Dashboard</span>
					</a></li>
					<li class="nav-item"> <a class="nav-link" href="Daily">Daily</a></li>
                  <li class="nav-item"> <a class="nav-link" href="Monthly">Monthly</a></li>
				<li class="nav-item"> <a class="nav-link" href="Weekly">Weekly</a></li>
					<li class="nav-item"><a class="nav-link"
						href="wander"> <span class="menu-title">Wander
								Customers</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i class="fa fa-users" aria-hidden="true"></i>
					</a></li>


				</ul>
			</nav>	
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">


					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>Booking_Id</th>
											<th>Date of Booking</th>
											<th>Journey Date</th>
											<th>Seat ID</th>
											<th>Bus_Id</th>
											<th>Contact_no</th>
											<th>F_Name</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${user}" var="entry">

											<tr>
												<td>${entry.key.booking_id}</td>

												<td>${entry.key.booking_date}</td>
												<td>${entry.key.jurny_date}</td>
												<td>${entry.key.seat_number}</td>
												<td>${entry.key.bus_id}</td>
												<td>${entry.value.contact_no}</td>
												<td>${entry.value.first_name}</td>
											


											</tr>
											</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>

				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<span
							class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright
							© 2017 <a href="https://www.bootstrapdash.com/" target="_blank">BootstrapDash</a>.
							All rights reserved.
						</span> <span
							class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted
							& made with <i class="mdi mdi-heart text-danger"></i>
						</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
	</div>

</html>