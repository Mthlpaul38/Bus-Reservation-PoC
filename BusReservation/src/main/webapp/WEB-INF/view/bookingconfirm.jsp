<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <jsp:include page="bootstrap.jsp"></jsp:include>
     <%@page import="com.example.BusReservation.models.Bus_Details"%>
 <%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/header_footer.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css">
      <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
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

       .logo-image{
    width: 65px;
    height: 60px;
    border-radius: 50%;
    overflow: hidden;
    margin-top: -6px;
    }
    


#footer
{
    position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
}

    /* body{

      background: url('./background.jpg');
      resize: both;
    } */
#changeHoverColorNav
{

padding-left: 2em;
}

    </style>
</head>

<body>
<%
String []seats=request.getParameterValues("seats");
	String list_seat="";
	for(String seat: seats){
		list_seat+=seat+",";
	}
%>

<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Easy Bus</a>
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
            <a class="nav-link" href="#"
              >Home <span class="sr-only">(current)</span></a
            >
          </li>
        
          
          <li class="nav-item">
            <a class="nav-link" href="contact" tabindex="-1">Contact us</a>
          </li>
            <li class="nav-item">
            <a class="nav-link" href="#" tabindex="contact">Explore Offers </a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link loginToggle">Login/Signup</a>
          </li>
          
        </ul>
      </div>
    </nav>
	
            
	<div class="row">
	    <div class="col-3">
	    	
	    </div>
	    <div class="col-6">
	      	<div class="jumbotron">
			<h4 class="display-6" >Confirm Booking</h4>
				<div class="information">
				<%
						Bus_Details bus=(Bus_Details)request.getSession().getAttribute("bus_deat");
						
					%>
		     	<label>Seats:&nbsp;&nbsp;</label><span class="badge"><%=list_seat%></span><br>
				<label>Bus Name:&nbsp;&nbsp;<span class="badge"><%=bus.getBus_Name()%></span></label>
				<br>
				<label>Date Of journey:&nbsp;&nbsp;<span class="badge"><% out.print(request.getSession().getAttribute("date"));%></span></label>
	    		</div>
			
				<form action="unauthorized_booking" method="post">
					<br>
					<input type="text" class="form-control" name="name" placeholder="Full name">
					<br>
					<input class="form-control" type="number" name="mobile" placeholder="mobile" id="number-input">
					<br>
					
					<input class="form-control" type="number" name="age" placeholder="age" id="example-number-input">
					<br>
					
					
					<input type="email"  name="email" class="form-control" id="email" placeholder="email">
					<br>
					<div class="bualign">
					<button class="btn btn-primary btn-xs" type="submit" style="align-items: center;">Confirm</button>
  					</div><br>
				
				</form>
			
			</div>
	    </div>
	    <div class="col-3">
	    	
	    </div>
	</div>
	<nav class="navbar is-dark" role="navigation"
			aria-label="main navigation" id="footer">

			<div id="navbarBasicExample" class="navbar-menu">
				<div class="navbar-start">
					<a class="navbar-item has-text-white has-background-grey-darker"
						id="changeHoverColorNav"> CopyRight </a> <a
						class="navbar-item has-text-white has-background-grey-darker"
						id="changeHoverColorNav" href="tc"> T&C </a> <a
						class="navbar-item has-text-white has-background-grey-darker"
						id="changeHoverColorNav"> FAQ </a>


				</div>


			</div>
		</nav>
	
</div>
</body>
</html>