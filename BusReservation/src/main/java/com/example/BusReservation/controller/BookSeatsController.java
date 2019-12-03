package com.example.BusReservation.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.models.Seat;
import com.example.BusReservation.models.User;
import com.example.BusReservation.repositories.BookingRepository;

@Controller
public class BookSeatsController {
	@Autowired
	BookingRepository brepo;
	@RequestMapping(path = "/booking", method = RequestMethod.POST)
	public String book(HttpServletRequest request,@RequestParam(value = "seats", required = false) String[] seats)
	{
		
		
		String x="ticket";
		int length = 10;
        boolean useLetters = true;
        boolean useNumbers = true;
        String generatedString = RandomStringUtils.random(length, useLetters, useNumbers);
     
        request.getSession().setAttribute("ticket", generatedString);
        
        LocalDate dt=(LocalDate) request.getSession().getAttribute("date");

        ZoneId defaultZoneId = ZoneId.systemDefault();
    	Date date = Date.from(dt.atStartOfDay(defaultZoneId).toInstant());
        
        List<Bookings> liSeat=new ArrayList<Bookings>();
        
	User user=	(User) request.getSession().getAttribute("user");
		int id=0;
		
		int bus_id=(int) request.getSession().getAttribute("bus_id");
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");  
	    Date date2 = new Date();  

		if(user!=null)
		{
			id=user.getUser_id();
		}
	    formatter.format(date2);
		
	    String sour=(String) request.getSession().getAttribute("city1");
	    String dest=(String) request.getSession().getAttribute("city2");
	    
			for(int i=0;i<seats.length;i++)
			{
				System.out.println("seats are: "+seats[i]);
			Bookings s=new Bookings(date2,date,seats[i]+"",bus_id,generatedString,id,"ACTIVE",sour,dest);
			liSeat.add(s);
			
			
			}
		request.getSession().setAttribute("SeatsList", liSeat);	

	if(user==null)
		{
			x="bookingconfirm";
		
		}
	else
	{
		
		
		List<Bookings> bookingList =(List<Bookings>) request.getSession().getAttribute("SeatsList");
		brepo.saveAll(bookingList);
	}
			return x;
	}
}
