package com.example.BusReservation.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BusReservation.Emails.SetPassword;
import com.example.BusReservation.models.User;
import com.example.BusReservation.repositories.UserRepository;

@Controller

public class EntryController {

	@Autowired
	UserRepository urepo;

	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String loginFunction(HttpServletRequest request,@RequestParam("username") String username, @RequestParam("password") String password) {

		List<User> userList = urepo.findByLogin(username, password);

		if (userList.isEmpty())

		{
			return "InvalidLogin";
		}

		else {

			User u = userList.get(0);

			request.getSession().setAttribute("user", u);
			return "logged";
		}

	}
	
	@RequestMapping(path = "/login", method = RequestMethod.GET)
	public String loginGET(HttpServletRequest request) {

		User u=	(User) request.getSession().getAttribute("user");

			if (u==null)

		{
			return "InvalidLogin";
		}

		else {

			
			return "logged";
		}

	}

	

	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String registerFunction(HttpServletRequest request,
			@RequestParam("first_name") String first_name,
			@RequestParam("last_name") String last_name
			,@RequestParam("password") String password,
		    @RequestParam("email") String email,
			@RequestParam("gender") String gender,
			@RequestParam("number") long number
			) {

		User u = new User(first_name,last_name,email,number,gender,password);
		
		List<User> li=urepo.findUser(u.getUser_email());
		if(!li.isEmpty())
		{
			return "empty";
		}
		
		request.getSession().setAttribute("User", u);
	    urepo.save(u);
		

	    return "redirect:/login";
	}
	
	
	
	@RequestMapping(path = "/forgot",method = RequestMethod.GET)
	public String forgot()
	{
		return "forgot_password";
		}

	@RequestMapping(path = "/set_password",method = RequestMethod.POST)
	public String set_password(HttpServletRequest request,@RequestParam("email") String email)
	{
		
		
		 int length = 10;
         boolean useLetters = true;
         boolean useNumbers = true;
         String generatedString = RandomStringUtils.random(length, useLetters, useNumbers);
      
         request.getSession().setAttribute("temp", generatedString);
         
         System.out.println(generatedString);
         
 		SetPassword sp=new SetPassword(email,generatedString);

 		try
 		{
 			
 	 		sp.send();

 		}
 		catch(UnsupportedEncodingException e)
 		{
 			
 			System.out.println("Exception is "+e);
 		}
		return "set_password";
		
	}

	@RequestMapping(path = "/change_password",method = RequestMethod.POST)
	public String changePass(HttpServletRequest request,@RequestParam("temp") String temp,@RequestParam("password") String password)
	{
		

		User u=(User) request.getSession().getAttribute("user");
		String original_temp=(String) request.getSession().getAttribute("temp");
	
		System.out.println("the temp password stored is "+original_temp);
		
		if(original_temp.equals(temp))
		{
			System.out.println("password match");
			
		int	x=urepo.updateUserSetStatusForName(password, u.getUser_email());
		
		System.out.println("email is "+u.getUser_email());
		System.out.println(x);
		}
		

		return "index";
		}
	
	
	@RequestMapping(path = "/change",method = RequestMethod.POST)
	public String changePassword(HttpServletRequest request,@RequestParam("old") String old,@RequestParam("new") String newP)
	{
		

		User u=(User) request.getSession().getAttribute("user");
		
		if(u.getUser_password().equals(old))
		{
			
		int	x=urepo.updateUserSetStatusForName(newP, u.getUser_email());
		
		return "index";
		}
		else
		{
			return "empty";
		}
		

		}
	
	@RequestMapping(path = "/View",method = RequestMethod.GET)
	public String returnToIndex()
	{
				return "index";
		}

	
	
}
