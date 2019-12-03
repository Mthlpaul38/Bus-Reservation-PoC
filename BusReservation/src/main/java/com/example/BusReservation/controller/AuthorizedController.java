package com.example.BusReservation.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.repositories.BookingRepository;

@Controller
public class AuthorizedController {
	
	
	
	
	@Autowired
	BookingRepository brepo;
	
	@RequestMapping(path = "/authorizedBooking", method = RequestMethod.GET)
	public String authBook(HttpServletRequest request) {

		
		List<Bookings> bookingList =(List<Bookings>) request.getSession().getAttribute("SeatsList");
		brepo.saveAll(bookingList);
		
		
		return "ticket";
		
		
		
		
		
		
	}
}
