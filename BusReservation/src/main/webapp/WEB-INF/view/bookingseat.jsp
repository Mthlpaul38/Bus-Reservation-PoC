<%@page import="org.springframework.ui.Model"%>
<%@page import="com.example.BusReservation.models.Bus_Details"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<%@page import="com.example.BusReservation.models.Seat"%>
<jsp:include page="bootstrap.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
  
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/p_booking.css">
<link rel="stylesheet" type="text/css" href="css/header_footer.css">


<style>
 .container {
     /* background: url('./oliver-cole-n8.jpg');*/
	 margin: auto;
    
	

    }

</style>
</head>
<body>
	
	
			<nav class="navbar is-dark" role="navigation" aria-label="main navigation">
					<div class="navbar-brand">
						<div class="logo-image">
							<img src="images/logo.png" class="img-fluid">
					  </div>
				
					</div>
				
					<div id="navbarBasicExample" class="navbar-menu">
					  <div class="navbar-start">
						<a class="navbar-item has-text-white has-background-grey-darker" id="changeHoverColorNav"> Home </a> <a
						  class="navbar-item has-text-white has-background-grey-darker" id="changeHoverColorNav"> Contact Us </a>
				
				
					  </div>
				
					  <div class="navbar-end">
						<div class="navbar-item">
						  <div class="buttons">
							<a class="button is-light" href="View"> Log Out </a>
						  </div>
						</div>
					  </div>
					</div>
				  </nav>
				  <%!
  		int total_seats=43;
 %>
				  <div style="height: 100%;width: 100%;overflow: scroll;">
				  <div class="container" style="width: 80%;height:max-content;">
		<div class="jumbotron">
			<h4 class="display-4">Booking Seats</h4>
			<div class="row">
				<div class="col-lg-3">
					<div class="busname">
					<%
						Bus_Details bus=(Bus_Details)request.getSession().getAttribute("bus_deat");
						
					%>
						<strong>Bus Name:</strong><%=bus.getBus_Name() %>
						<br><strong>Bus Id:</strong><%= bus.getBus_id() %>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="empty_square">Empty</div>
					<div class="selected_square">selected</div>
					<div class="Booked_square">Booked</div>
				</div>
				<div class="col-lg-3"></div>
			</div>
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="seatform">

						<div class="form-group flex-row-reverse">
							<form action="booking" method="post">
								<div class="ckbuttons">
							
<%-- 

									<input type="checkbox" checked="<%=check %>"  id="<%=i %>" name="seats" value="<%=i%>">
 --%>    				
                                 <% 
  									List<Integer> list=(List<Integer>)request.getAttribute("occupied");
  									for(int i=1;i<=total_seats;i++){
  										if(list.contains(i)){
  									
  									%>
 					<div class="myclass"><%=i %></div>
 
 <%}else { %>
  <input type="checkbox"   id="<%=i %>" name="seats" value="<%=i%>" >
  <label for="<%=i %>"><%=i %></label>
  
  <%} %>
 
                                   
									<%if(i%10==0){ %>
									<%if(i==20){ %>
									<br>
                                      <%} %>
  										<br>
  										
  									<%}} %>								
								</div>
								<div class="bualign">
									<button class="btn btn-primary btn-xs" type="submit"
										style="align-items: center;">Book</button>
								</div>
							</form>
						</div>
					</div>



				</div>
			</div>
			<div class="col-lg-2"></div>

		</div>

	</div>
</div>
	<nav class="navbar is-dark" role="navigation" aria-label="main navigation" id="footer">
    
			<div id="navbarBasicExample" class="navbar-menu">
			  <div class="navbar-start">
				<a class="navbar-item has-text-white has-background-grey-darker" id="changeHoverColorNav"> CopyRight </a> 
				<a  class="navbar-item has-text-white has-background-grey-darker" id="changeHoverColorNav" href="tc"> T&C </a>
				<a  class="navbar-item has-text-white has-background-grey-darker" id="changeHoverColorNav"> FAQ </a>
		
		
			  </div>
		
			
			</div>
		  </nav>
	<script>
        $(document).ready(function() {
            var today = new Date();
            var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
            $("#onwardDate").attr("min", date);
            $("#onwardDate").attr("value", date);

            // Check for click events on the navbar burger icon
            $(".navbar-burger").click(function() {

                // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
                $(".navbar-burger").toggleClass("is-active");
                $(".navbar-menu").toggleClass("is-active");

            });
        });
    </script>
</body>
</html>