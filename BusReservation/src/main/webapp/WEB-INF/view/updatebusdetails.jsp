<%@page import="com.example.BusReservation.models.Timings"%>
<%@page import="com.example.BusReservation.models.Bus_Details"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*" %>
   <%@page import="com.example.BusReservation.repositories.CityRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script defer src="javascript/admin.js"></script>
    <script defer src="javascript/admin1.js"></script>
     <link rel="stylesheet" href="css/admin.css">
</head>
<body>
<%
		 	Bus_Details d=(Bus_Details)request.getAttribute("Bus_details");
			String days[]=d.getFrequency().split(",");
			int daysarray[]=new int[days.length];
			List<Integer> checked=new ArrayList();
			String weeksfordays[]={"","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"};
			for(int i=0;i<days.length;i++){
				int num=Integer.parseInt(days[i]);
				daysarray[i]=num;
				checked.add(num);
			}
			List<String> citylist=(List<String>)request.getAttribute("citylist");
			List<Timings> timingslist=(List<Timings>)request.getAttribute("timingslist");
		  
%>
<div class="container">
<br><br><br><br><br>
<section class="Section">
		
	    <div class="columns">
	    <div class="column">
	    		
	    		
		</div>
	    <div class="column">
	    	<h2 class="title">Update Bus Details</h2>
		   <form action="bus_detailsupdated" method="post">
	    
	    <div class="field">
			
			  	<div class="control">
			  		<h4>Bus Id:<%=d.getBus_id()%></h4>
			    	<input class="input is-primary" value="<%=d.getBus_id() %>" type="hidden"  name="bus_id" >
				</div>
		</div>
			<div class="field">
			<label class="label">Bus Name</label>
			  	<div class="control">
			    	<input class="input is-primary" value="<%=d.getBus_Name() %>" type="text" value="bus_name" name="bus_name" placeholder="Bus name">
				</div>
			</div>
			
			<div class="field ">
				<div class="multiselect">
	    <div class="selectBox" onclick="showCheckboxes()">
	      <select>
	        <option>Select an option</option>
	      </select>
	      <div class="overSelect"></div>
	    </div>
	    <div id="checkboxes">
	    <%for(int i=1;i<weeksfordays.length;i++){ 
	         if(checked.contains(i)){%>
	      <label for=<%=i%>>
	        <input type="checkbox" id=<%=i%> value=""<%=i%> name="weeks" checked="checked" /><%=weeksfordays[i] %></label>
	        <%}else{ %>
	      		<label for=<%=i%>>
	        <input type="checkbox" id=<%=i%> value=<%=i%> name="weeks" /><%=weeksfordays[i] %></label>
	        <%}} %>
	    </div>
 		 </div>
  		</div>
			
			<div class=" field is-grouped is-grouped-centered">
				  <div class="control">
				    <input class="button is-success" type="submit" value="Submit">
				  </div>
				  <div class="control">
				    <input class="button is-info" type="reset" value="Reset">
				  </div>
			</div>
		</form>
		  </div>
		  
 		 <div class="column">
	    		
	    		
		</div>
		
		</div>
	
	</section>
</div>
</body>
</html>