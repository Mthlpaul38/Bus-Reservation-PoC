<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@page import="com.example.BusReservation.models.User" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
  </head>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>



  <body>
  <section class="section">
<h2 class="title">Customer who have registered but not made any reservation.</h2>
    <div class="container">
      <table class="table">
  <thead>
    <tr>
    <th>Index</th>
      <th>User_Id</th>
      <th>Contact_no</th>
      <th>F_Name</th>
      <th>Last_Name</th>
      <th>Email</th>
      <th>Gender</th>
    </tr>
  </thead>
 
  <tbody>
   <% int i = 0; %>
						<c:forEach items="${mylist}" var="mylist">     
 
    <tr>
    <td><%=++i %></td>
     <td>${mylist.user_id}</td>   
     <td>${mylist.contact_no}</td>     
      <td>${mylist.first_name}</td>   
    	 <td>${mylist.last_name}</td>     
    	<td>${mylist.user_email}</td>
    	<td>${mylist.user_gender}</td>

	

   
       
    </tr>  
</c:forEach>
  </tbody>
</table>
    </div>
    
    <div id="piechart"></div>
    
    <h2 class="title">Reservation Details of Customer</h2>
    <c:forEach items="${user}" var="entry">
    <div class="container">
      <table class="table">
  <thead>
    <tr>
    <th>Booking_Id</th>
    <th>Date of Booking</th>
    <th>Journey Date</th>
    <th>Seat ID</th>
      <th>User_Id</th>
      <th>Contact_no</th>
      <th>F_Name</th>
      <th>Last_Name</th>
      <th>Email</th>
      <th>Gender</th>
    </tr>
  </thead>
 
  <tbody>
 
 
    <tr>
    <td>${entry.key.booking_id}</td>
    
    <td>${entry.key.date_of_booking}</td>
    <td>${entry.key.jurny_date}</td>
    <td>${entry.key.seat_id}</td>
    <td>${entry.value.user_id}</td>   
     <td>${entry.value.contact_no}</td>     
      <td>${entry.value.first_name}</td>   
     <td>${entry.value.last_name}</td>     
    <td>${entry.value.user_email}</td>
    <td>${entry.value.user_gender}</td>
   
       
    </tr>  
  </tbody>
</table>
    </div>
    
    
    
</c:forEach>
    
  </section>
  </body>
</html>