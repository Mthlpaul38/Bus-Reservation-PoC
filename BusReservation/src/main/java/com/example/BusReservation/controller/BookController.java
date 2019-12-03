package com.example.BusReservation.controller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.models.Bus_Details;
import com.example.BusReservation.models.Seat;
import com.example.BusReservation.models.User;
import com.example.BusReservation.repositories.BookingRepository;
import com.example.BusReservation.repositories.Bus_DetailsRepository;
import com.example.BusReservation.repositories.SeatRepository;

@Controller
public class BookController {

	
	@Autowired
	BookingRepository bookingrepo;
	@Autowired
	Bus_DetailsRepository bus_deatils;
	
	
	@RequestMapping(path = "/book", method = RequestMethod.POST)
	public String book(HttpServletRequest request,Model m, @RequestParam("bus_id") int bus_id)
	{
		
	LocalDate dt=(LocalDate) request.getSession().getAttribute("date");
	
	if(dt==null)
	{
		System.out.println("dt is null");
	}
	ZoneId defaultZoneId = ZoneId.systemDefault();
	Date date = Date.from(dt.atStartOfDay(defaultZoneId).toInstant());
	
	List<Integer> liSeat = bookingrepo.findId(bus_id, date);
	
	request.getSession().setAttribute("bus_id", bus_id);
	Bus_Details bus_deat=(Bus_Details)bus_deatils.findDetails(bus_id);
	request.getSession().setAttribute("bus_deat",bus_deat);
	for(int i:liSeat)
		System.out.println("seat id is "+i);

	m.addAttribute("occupied",liSeat );
	
	User user=(User) request.getSession().getAttribute("user");
	
	if(user==null)
	{
		return"unauthbookingseat";
	}
	else
	{
		return "bookingseat";
	}
	
	}
	
	
	
	
}
