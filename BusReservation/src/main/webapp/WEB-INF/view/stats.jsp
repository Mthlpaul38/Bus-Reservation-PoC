<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Statistics</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/materialdesignicons.min.css">
<link rel="stylesheet" href="../css/vendor.bundle.base.css">
<link rel="stylesheet" href="../css/stylea.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="../images/favicon.png" />
</head>
<body>
	<div class="container-scroller">

		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
				<li class="nav-item"><a class="nav-link" href="admin">
							<span class="menu-title">Home</span>
					</a></li>
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
					<div class="row" id="proBanner">
						<div class="col-12">
							
						</div>
					</div>

					<div class="row">
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<h4 class="font-weight-normal mb-3">
										Trusted Users
									</h4>
									<h2 class="mb-5">${user_count}</h2>
									
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<h4 class="font-weight-normal mb-3">
										Bookings made till now 
									</h4>
									<h2 class="mb-5">${bookings_count}</h2>
									
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-success card-img-holder text-white">
								<div class="card-body">
									
									<h4 class="font-weight-normal mb-3">
										Bus Services
									</h4>
									<h2 class="mb-5">${bus_count}</h2>
									
								</div>
							</div>
						</div>
					</div>
					<div class="row">
					<div class="col-md-2"></div>
						<div class="col-md-9">
							<div class="card">
								<div class="card-body">
									<div class="clearfix">
										<jsp:include page="chart.jsp"></jsp:include>
										
									</div>
			
								</div>
							</div>
						</div>
						

					<!-- content-wrapper ends -->
					<!-- partial:partials/_footer.html -->
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
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="../javascript/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="../javascript/Chart.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="../javascript/off-canvas.js"></script>
	<script src="../javascript/hoverable-collapse.js"></script>
	<script src="../javascript//misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="../javascript/dashboard.js"></script>
	<script src="../javascript/todolist.js"></script>
	<!-- End custom js for this page -->
</body>
</html>