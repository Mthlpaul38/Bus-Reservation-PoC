package com.example.BusReservation.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GenericGenerator(name="ken2" , strategy="increment")
	@GeneratedValue(generator="ken2")
	@Column
	private int user_id;

	@Column
	private String first_name;

	@Column
	@Size(min=1, max=15)
	private String last_name;

	@Column
	private String user_email;

	@Column
	private long contact_no;

	

	@Column 
	private String user_gender;
	
	@Column
	private String user_password;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String first_name, String last_name, String user_email, long contact_no, String user_gender,
			String user_password) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.user_email = user_email;
		this.contact_no = contact_no;
		this.user_gender = user_gender;
		this.user_password = user_password;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public long getContact_no() {
		return contact_no;
	}

	public void setContact_no(long contact_no) {
		this.contact_no = contact_no;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	

}
