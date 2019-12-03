package com.example.BusReservation.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.BusReservation.models.Admin;
import com.example.BusReservation.repositories.AdminRepository;

@Service
public class AdminService {

	
	@Autowired
	AdminRepository arepo;
	
	
	
	public List<Admin> getAllAdmin()
	{
		
		List<Admin> alist=new ArrayList<Admin>();
		
		arepo.findAll().forEach(admin->alist.add(admin));
	
		return alist;
	}
}
