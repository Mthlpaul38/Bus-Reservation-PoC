package com.example.BusReservation.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "Admin")
public class Admin {

	
	@Id
	@Column
	private int id;
	
	
	
	
	@Column
	private String admin_name;
	
	@Column
	private String admin_email;
	
	@Column
	private String admin_number;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_email() {
		return admin_email;
	}

	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}

	public String getAdmin_number() {
		return admin_number;
	}

	public void setAdmin_number(String admin_number) {
		this.admin_number = admin_number;
	}

	public Admin(String admin_name, String admin_email, String admin_number) {
		super();
		this.admin_name = admin_name;
		this.admin_email = admin_email;
		this.admin_number = admin_number;
	}

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
