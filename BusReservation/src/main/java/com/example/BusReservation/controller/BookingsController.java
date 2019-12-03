package com.example.BusReservation.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.models.User;
import com.example.BusReservation.repositories.BookingRepository;

@Controller
public class BookingsController {

	
	@Autowired
	BookingRepository bookingRepo;
	

	@RequestMapping(path = "/booking", method = RequestMethod.GET)
	public String Booking(HttpServletRequest request)
	{
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    Date date = new Date();  
	  formatter.format(date);
	  
	  
	  User u=(User)request.getSession().getAttribute("user");
	  
	  List<Bookings> liupcoming=bookingRepo.findUpcomingBookings(u.getUser_id(), date);
	  List<Bookings> lipast=bookingRepo.findPastBookings(u.getUser_id(), date);
	 
	  List<String> pastTicket=bookingRepo.findPastTickets(u.getUser_id(), date);
	  List<String> upcomingTicket=bookingRepo.findUpcomingTickets(u.getUser_id(), date);
		
	  for(String t1:pastTicket)
	  {
		  
		  System.out.println(t1);
	  }
	  
	  
	  for(String t1:upcomingTicket)
	  {
		  
		  System.out.println(t1);
	  }
	  request.getSession().setAttribute("upcoming", liupcoming);
	  request.getSession().setAttribute("past", lipast);
		
	  
	  request.getSession().setAttribute("upcomingTicket", upcomingTicket);
	  request.getSession().setAttribute("pastTicket", pastTicket);
		
	  
		return "mybooking";

		
		
	
}
	@RequestMapping(path="/deletebooking",method= RequestMethod.GET)
	public String DeleteBooking(HttpServletRequest request) {
		
		String tickdup = (String)request.getSession().getAttribute("ticktid");
		
		bookingRepo.updateBookingStatus(tickdup);
		return"index";
		
	}
	
}