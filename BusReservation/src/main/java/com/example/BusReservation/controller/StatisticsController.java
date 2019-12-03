package com.example.BusReservation.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.models.User;
import com.example.BusReservation.repositories.BookingRepository;
import com.example.BusReservation.repositories.Bus_DetailsRepository;
import com.example.BusReservation.repositories.SeatRepository;
import com.example.BusReservation.repositories.UserRepository;

@Controller
public class StatisticsController {

	@Autowired
	BookingRepository brepo;

	@Autowired
	UserRepository urepo;
	
	@Autowired
	SeatRepository srepo;
	
	@Autowired
	Bus_DetailsRepository busrepo;
	
	@RequestMapping(path="/wander")
	public String getWander(Model m)
	{
		List<User> mylist=urepo.findById();
		m.addAttribute("mylist", mylist);
		return "wander";
	}
	@RequestMapping(path = "/stats")
	public String getUsers(Model m)
	{
		
		int a=urepo.user_Count();
	
		int b=brepo.bookings_Count();
		
		int c=busrepo.bus_Count(); 
		System.out.println("B value"+b);
		List<User> mylist=urepo.findById();
		
		m.addAttribute("mylist", mylist);
		m.addAttribute("bus_count", c);
		m.addAttribute("user_count", a);
		m.addAttribute("bookings_count", b);
		List<Object[]> recs = brepo.findBus_id();
		
		Map<String,Integer> chart=new HashMap<String, Integer>();
		for (Object[] line : recs) {
			System.out.println("line[1]:"+line[0]);
			int i = ((Number)line[0]).intValue();
			String s=Integer.toString(i);
	        int j=((Number)line[1]).intValue();
	        chart.put(s,j);
	        System.out.println("Total entities under Master with id " + i + " is " + j);
	       
	    }
		System.out.println("Entered");
		 m.addAttribute("chart",chart);
		return "stats";
	}
	
	/*
	 * @RequestMapping(path = "/chart") public String generateChart(Model m) {
	 * List<Object[]> r		ecs = srepo.findBus_id(); m.addAttribute("count",recs);
	 * Map<String,Integer> chart=new HashMap<String, Integer>();
	 * 
	 * for (Object[] line : recs) { int i = ((Number)line[0]).intValue(); String
	 * s=Integer.toString(i); int j=((Number)line[1]).intValue(); chart.put(s,j);
	 * System.out.println("Total entities under Master with id " + i + " is " + j);
	 * 
	 * }
	 * 
	 * m.addAttribute("chart",chart); return "chart"; }
	 */
	
	
	@RequestMapping(path = "/Monthly")
	public String getMonthly(Model m) {		
		Map<Bookings,User> m1=new HashMap<Bookings,User>();
		List<Bookings> bl=brepo.selectMonthly();
		for(Bookings b:bl)
		{
			User u1=urepo.findBooking(b.getBooking_id());
			m1.put(b, u1);
		}
		m.addAttribute("user", m1);
		return "Monthly";
	}
	
	@RequestMapping(path = "/Daily")
	public String getDaily(Model m) {		
		Map<Bookings,User> m1=new HashMap<Bookings,User>();
		List<Bookings> bl=brepo.selectDaily();
		for(Bookings b:bl)
		{
			User u1=urepo.findBooking(b.getBooking_id());
			m1.put(b, u1);
		}
		m.addAttribute("user", m1);
		return "Daily";
	}
	@RequestMapping(path = "/Weekly")
	public String getWeekly(Model m) {		
		Map<Bookings,User> m1=new HashMap<Bookings,User>();
		List<Bookings> bl=brepo.selectWeekly();
		for(Bookings b:bl)
		{
			User u1=urepo.findBooking(b.getBooking_id());
			m1.put(b, u1);
		}
		m.addAttribute("user", m1);
		return "Weekly";
	}
}
