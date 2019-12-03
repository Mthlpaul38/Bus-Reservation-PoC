package com.example.BusReservation.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.models.*;
import com.example.BusReservation.repositories.*;
import com.example.BusReservation.service.AdminService;

@Controller
public class TryController {


	
	 @Autowired
	 AdminService aservice;
	
	 
	 @Autowired
	 BookingRepository brepo;
	 
	@Autowired
	CityRepository crepo;
	 
	
	@Autowired
	SeatRepository srepo;
	 
	
	@Autowired
	UserRepository urepo;
	
	
	@Autowired
	Bus_DetailsRepository bus_detrepo;
	
	
	
	@Autowired
	
	TimingsRepository trepo;
	 @RequestMapping("/index")
	  public String index() {
		
		 
		
		 
		 return "index";
	  }
	 
	 
	 
	 @RequestMapping("/basic")
	 public String returnBasic()
	 {
		 
		 return "basic";
	 }
	 
	 @RequestMapping("/search")
	 public String returnSearch()
	 {
		 return "search";
		 		 }
	 
	
	 
	 @RequestMapping("/signup")
	 public String retursignup()
	 {
		 
		 return "login_signup";
	 }
	 @RequestMapping("/addCity")
	 public String addCityOne()
	 {
		 
		 return "addCity";
	 }
	 
	 @RequestMapping(path = "/addcityform",method = RequestMethod.POST)
	 public String addCity(HttpServletRequest request)
	 {
		 int length=Integer.parseInt(request.getParameter("length"));
		 System.out.println(length);
		 
		 String[] city=new String[length];
		 String[] arrival_time=new String[length];
		 String[] departure_time=new String[length];
		 for(int i=1;i<=length;i++)
		 {
			 
			city[i]=request.getParameter("name"+i);
			  arrival_time[i]=request.getParameter("arri"+i);
			 departure_time[i]=request.getParameter("desi"+i);
			  
		 }
		
		 
		 return "addCity";
	 }
	 
	 
	 
	  
	 @RequestMapping("/contact")
	 public String contactUs()
	 {
		 return  "contact";
		 
	 }
	  
	 @RequestMapping("/profile")
	 public String profile(HttpServletRequest request, Model model)
	 {
		User u=(User) request.getSession().getAttribute("user");
		
		 model.addAttribute("user1",u);
		
		 return  "prosample";
		 
	 }
	 @RequestMapping("/updtetodata")
	 public String updatDetails(HttpServletRequest request, @RequestParam("gen") String gen) {
		 
		 //System.out.println(gen);
		 User u=(User) request.getSession().getAttribute("user");
		 urepo.updateGender(gen,u.getUser_email() );
		 return"logged";
	 }
	 
	  
		 @RequestMapping("/changepass")
		 public String changePassword()
		 {
			 return  "changepassword";
			 
		 }
		 
		 @RequestMapping("/tc")
		 public String termsCondition()
		 {
			 return  "t&c";
			 
		 }
		  
	 
	
}
