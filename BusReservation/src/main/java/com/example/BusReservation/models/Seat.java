package com.example.BusReservation.models;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "seats")
public class Seat {

	
	@Id
	@Column
	private int seat_id;
	
	
	@Column
	private String seat_number;
	
	@Column
	private  int bus_id;
	
	@Column(name = "jurny_date", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	
	private Date jurny_date;
	
	
	
	
	@Column
	private String ticket_id;
	
	
	
	@Column
	private int user_id;
	
	
	
	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getSeat_id() {
		return seat_id;
	}

	public void setSeat_id(int seat_id) {
		this.seat_id = seat_id;
	}

	public String getSeat_number() {
		return seat_number;
	}

	public void setSeat_number(String seat_number) {
		this.seat_number = seat_number;
	}

	public int getBus_id() {
		return bus_id;
	}

	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}

	



	public Seat(String seat_number, int bus_id, Date jurny_date,String ticket_id,int user_id) {
		super();
		this.seat_number = seat_number;
		this.bus_id = bus_id;
		this.jurny_date = jurny_date;
		this.ticket_id=ticket_id;
		this.user_id=user_id;
	}

	public String getTicket_id() {
		return ticket_id;
	}

	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}

	public Date getJurny_date() {
		return jurny_date;
	}

	public void setJurny_date(Date jurny_date) {
		this.jurny_date = jurny_date;
	}

	public Seat() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
