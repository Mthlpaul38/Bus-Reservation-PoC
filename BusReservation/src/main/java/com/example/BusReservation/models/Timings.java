package com.example.BusReservation.models;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "Timings")
public class Timings {

	
	@Id

	@GenericGenerator(name="ken" , strategy="increment")
	@GeneratedValue(generator="ken")
	@Column
	private int timing_id;
	
	@Column
	private String arrival_time;
	
	@Column
	private String departure_time;
	
	
	
	@ManyToOne(cascade = CascadeType.ALL)
	    @JoinColumn(name = "bus_id")
	    private Bus_Details bus_Det;

	public Bus_Details getBus_Det() {
		return bus_Det;
	}

	public void setBus_Det(Bus_Details bus_Det) {
		this.bus_Det = bus_Det;
	}

	public int getTiming_id() {
		return timing_id;
	}

	public void setTiming_id(int timing_id) {
		this.timing_id = timing_id;
	}

	public String getArrival_time() {
		return arrival_time;
	}

	public void setArrival_time(String arrival_time) {
		this.arrival_time = arrival_time;
	}

	public String getDeparture_time() {
		return departure_time;
	}

	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}


	public Timings( String arrival_time, String departure_time) {
		super();
		
		this.arrival_time = arrival_time;
		this.departure_time = departure_time;
		
		
	}

	public Timings() {
		super();
		// TODO Auto-generated constructor stub
	}
 

}
