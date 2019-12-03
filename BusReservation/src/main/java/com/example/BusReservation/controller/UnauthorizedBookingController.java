package com.example.BusReservation.controller;

import javax.servlet.http.HttpServletRequest;

import java.io.UnsupportedEncodingException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.Emails.SendUnauthTicket;
import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.repositories.BookingRepository;

@Controller
public class UnauthorizedBookingController {

	@Autowired
	BookingRepository bookingRepo;
	@RequestMapping(path = "/unauthorized_booking", method = RequestMethod.POST)
	public String unauth(HttpServletRequest request,@RequestParam("name") String name, @RequestParam("mobile") String mobile,
			@RequestParam("age") int age, @RequestParam("email") String email) throws UnsupportedEncodingException {


		SendUnauthTicket s=new SendUnauthTicket();
		
		
		String ticket=(String) request.getSession().getAttribute("ticket");
		
		

        LocalDate dt=(LocalDate) request.getSession().getAttribute("date");

        ZoneId defaultZoneId = ZoneId.systemDefault();
    	Date date = Date.from(dt.atStartOfDay(defaultZoneId).toInstant());
        
		
		List<Bookings> li=(List<Bookings>) request.getSession().getAttribute("SeatsList");
		
		
		bookingRepo.saveAll(li);
		String city1=(String)request.getSession().getAttribute("city1");
		String city2=(String)request.getSession().getAttribute("city2");
		
		
		
		s.send(ticket, date, name, li, email,city1,city2);
		return "ticket";
		
		
		
	}

}
