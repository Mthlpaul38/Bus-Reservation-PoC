<%@page
	import="com.example.BusReservation.repositories.TimingsRepository"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.example.BusReservation.models.Timings"%>
<%@page import="com.example.BusReservation.models.Bus_Details"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page
	import="com.example.BusReservation.repositories.Bus_DetailsRepository"%>
<%@page import="com.example.BusReservation.repositories.CityRepository"%>
<%@page import="com.example.BusReservation.models.City"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>admin page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>
<script defer src="javascript/admin.js"></script>
<script defer src="javascript/admin1.js"></script>
<script defer src="javascript/jsfordelete.js"></script>
<script type="text/javascript" src="javascript/script.js"></script>


<script defer src="javascript/selectop.js"></script>
<script defer src="javascript/frequencycheckbox.js"></script>
<link rel="stylesheet" href="css/admin.css">

</head>
<body>

	<section class="section">
		<div class="container">
			<h2 class="title is-2 is-centered">Admin Page</h2>
			<div class="field">
				<a href="/logout" class="button is-success  is-pulled-right">Logout</a>
			</div>
			<div id="tabs-with-content">
				<div class="tabs ">
					<ul>
						<li><a>Search Bus Details</a></li>
						<li><a>Add Bus Details</a></li>
						<li><a href="stats">Statistics</a></li>

					</ul>
				</div>
				<div>
					<section class="tab-content">
						<div class="columns">
							<div class="column"></div>
							<div class="column"></div>
							<div class="column">
								<form action="">
									<div class="field has-addons">
										<div class="control is-expanded">
											<div class="select is-fullwidth">
												<select  id="select1">
													<%
					      List<Integer> list=(List)request.getAttribute("bus_ids_list");
							List<Bus_Details> bus_deatilsall=(List)request.getAttribute("bus_deatilsall"); 
	    		  		Map<Integer,List<String>> city_lists=(Map)request.getAttribute("city_lists");
	    		  		String days[]={"","Mon","Tue","Wed","Thu","Fri","Sat","Sun"};
	    		  		
	    		  		
	    		  		%>
													<% 	for(Integer l: list){%>
													<option value="<%=l %>" >
														<%=l%>
													</option>

													<%}%>

												</select>
											</div>
										</div>
										<!-- <div class="control">
											<button id="btn1" type="submit" class="button is-primary">Search</button>
											
											
										</div> -->
									</div>

								</form>
							</div>
						</div>
						<div class="container">
							<div class="columns">
								<div class="column is-four-fifths" >
									<%
					     
					      	for(Bus_Details o:bus_deatilsall){
					      		
					      	
					      	%>


									<div id="<%=o.getBus_id()%>" class="notification radius-large has-background-primary" style="display:none; ">
										<div class="columns">
					<%
					String f="";
					String fre[]=o.getFrequency().split(",");
					for(int i=0;i<fre.length;i++)
					{
						if(i==fre.length)
						{
							f+=days[Integer.parseInt(fre[i])];
							
						}
						else
						{
							f+=days[Integer.parseInt(fre[i])]+",";
						}
					}
					%>
											<div class="column">
												<table class="table">
													<thead>Bus Details</thead>
													<tbody>
														<tr>
															<td>Bus Id:<%=o.getBus_id() %></td>
														</tr>
														<tr>
															<td>Bus Name:<%=o.getBus_Name() %></td>
														</tr>
														<tr>
															<td>Seating capacity:<%=43 %></td>
														</tr>
														<tr>
															<td>Frequency:<%=f %></td>
														</tr>


													</tbody>
												</table>
												<%
										  int b_id=o.getBus_id();
										  String b_name=o.getBus_Name();
										  
										  %>
												<!--   <a href="updatebus_detailes?bus_id=<%=b_id%>"><button class="button is-info">Update Details</button></a>-->

												<a onclick="deleteBusDetaiels('<%=b_id%>','<%=b_name%>');"><button
														class="button is-danger">Delete</button></a>
											</div>
											<div class="column is-three-fifths">
												<table class="table">

													<thead>City List</thead>
													<tr>
														<td><h4>City Name</h4></td>
														<td><h4>Arrival Time</h4></td>
														<td><h4>Departure Time</h4></td>
													</tr>
													<%
														int cout = 0;
															List<Timings> timings = o.getList();
															if (!city_lists.get(o.getBus_id()).isEmpty()) {
																for (String city : city_lists.get(o.getBus_id())) {
													%>

													<tr>
														<td><h4><%=city%></h4></td>
														<td><h4><%=timings.get(cout).getArrival_time()%></h4></td>
														<td><h4><%=timings.get(cout).getDeparture_time()%></h4></td>
													</tr>

													<%
														cout++;
																}
															} else {
													%>
													<h2>city list is not added If you want to add</h2>
													<button class="button is-link">Add cityList</button>
													<%
														}
													%>


												</table>

											</div>
										</div>


									</div>

									<%
										}
									%>
								</div>
							</div>
						</div>



					</section>
					<section class="tab-content">
						<form action="addbus_details" method="post">
							<div class="columns">
								<div class="column">
									<div class="field">
										<label class="label">Bus Name</label>
										<div class="control">
											<input class="input is-primary" required="required"
												type="text" name="bus_name" placeholder="Bus name">
										</div>
									</div>

									<div class="field ">
										<div class="multiselect">
											<div class="selectBox" onclick="showCheckboxes()">
												<label class="label">Frequency days</label> <select>
													<option>Select an option</option>
												</select>
												<div class="overSelect"></div>
											</div>
											<div id="checkboxes">
												<label for="Monday"> <input type="checkbox"
													id="Monday" value="1" name="weeks" />Monday
												</label> <label for="Tuesday"> <input type="checkbox"
													id="Tuesday" value="2" name="weeks" />Tuesday
												</label> <label for="Wednesday"> <input type="checkbox"
													id="Wednesday" value="3" name="weeks" />Wednesday
												</label> <label for="Thursday"> <input type="checkbox"
													id="Thursday" value="4" name="weeks" />Thursday
												</label> <label for="Friday"> <input type="checkbox"
													id="Friday" value="5" name="weeks" />Friday
												</label> <label for="Saturday"> <input type="checkbox"
													id="Saturday" value="6" name="weeks" />Saturday
												</label> <label for="Sunday"> <input type="checkbox"
													id="Sunday" value="7" name="weeks" />Sunday
												</label>
											</div>
										</div>
									</div>

									<div class=" field is-grouped is-grouped-centered">
										<div class="control">
											<button class="button is-success" type="submit"
												value="Submit">Submit</button>
										</div>
										<div class="control">
											<input class="button is-info" type="reset" value="Reset">
										</div>
									</div>

								</div>
								<div class="column is-four-fifths">
									<div class="columns">
										<div class="column" id="col1">
											<div class=" field ">
												<label class="label ">City Name</label> <input
													class="input " type="text" style="width: 80%"
													required="required" name="city">
											</div>
										</div>
										<div class="column" id="col2">
											<div class=" field ">
												<label class="label ">Arrival Time</label> <input
													class="input " style="width: 80%" required="required"
													type="time" name="arri">
											</div>
										</div>
										<div class="column" id="col3">
											<div class=" field ">
												<label class="label ">Destination Time</label> <input
													class="input " style="width: 80%" required="required"
													type="time" name="desi">
											</div>
										</div>
										<button id="addmore" type="button" class="button is-info set">Add
											City</button>
											<!-- <input id="hidLength" type='hidden' style='width: 80%'
												name='length' value='1' /> -->
									</div>

								</div>
						</form>
	
	</section>
	</div>
	</div>
	</div>
	</section>

</body>
</html>