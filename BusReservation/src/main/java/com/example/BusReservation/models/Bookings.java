package com.example.BusReservation.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "bookings")
public class Bookings {

	


	
	@Id
	@GenericGenerator(name="ken2" , strategy="increment")
	@GeneratedValue(generator="ken2")
	
	@Column
	private int booking_id;
	
	@Column(name = "booking_date", columnDefinition="DATETIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date booking_date;
	
	
	
	@Column(name = "jurny_date", columnDefinition="DATE")
	@Temporal(TemporalType.DATE)
	private Date jurny_date;
	
	
	
	



	@Column
	private String seat_number;
	
	@Column
	private  int bus_id;
	
	
	@Column
	private String ticket_id;
	
	
	
	@Column
	private String status;
	
	@Column
	private String source_city;
	
	
	
	@Column
	private String destination_city;
	
	public String getSource_city() {
		return source_city;
	}



	public void setSource_city(String source_city) {
		this.source_city = source_city;
	}



	public String getDestination_city() {
		return destination_city;
	}



	public void setDestination_city(String destination_city) {
		this.destination_city = destination_city;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	@Column
	private int user_id;



	public int getBooking_id() {
		return booking_id;
	}



	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}



	public Date getBooking_date() {
		return booking_date;
	}



	public void setBooking_date(Date booking_date) {
		this.booking_date = booking_date;
	}



	public Date getJurny_date() {
		return jurny_date;
	}



	public void setJurny_date(Date jurny_date) {
		this.jurny_date = jurny_date;
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



	public String getTicket_id() {
		return ticket_id;
	}



	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}



	public int getUser_id() {
		return user_id;
	}



	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}



	public Bookings() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Bookings(Date booking_date, Date jurny_date, String seat_number, int bus_id, String ticket_id, int user_id,String status,String source_city,String destination_city) {
		super();
		this.booking_date = booking_date;
		this.jurny_date = jurny_date;
		this.seat_number = seat_number;
		this.bus_id = bus_id;
		this.ticket_id = ticket_id;
		this.user_id = user_id;
		this.status=status;
		this.source_city=source_city;
		this.destination_city=destination_city;
	}
	
	
}
