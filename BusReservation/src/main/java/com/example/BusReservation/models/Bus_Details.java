package com.example.BusReservation.models;

import java.util.List;
import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "Bus_Details")
public class Bus_Details {

	@Id
	@GenericGenerator(name="kaugen" , strategy="increment")
	@GeneratedValue(generator="kaugen")
	@Column
	private int bus_id;

	@Column
	private String bus_Name;

	@Column
	private String frequency;

	@Column
	private String city_List;

	
	 public List<Timings> getList() {
		return list;
	}

	public void setList(List<Timings> list) {
		this.list = list;
	}

	
	@OneToMany(mappedBy = "bus_Det", cascade = {
	        CascadeType.ALL
	    })
	    private List<Timings> list;
	 
	 
	 
	public int getBus_id() {
		return bus_id;
	}

	public void setBus_id(int bus_id) {
		this.bus_id = bus_id;
	}

	public String getBus_Name() {
		return bus_Name;
	}

	public void setBus_Name(String bus_Name) {
		this.bus_Name = bus_Name;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	public String getCity_List() {
		return city_List;
	}

	public void setCity_List(String city_List) {
		this.city_List = city_List;
	}

	public Bus_Details(String bus_Name, String frequency, String city_List, List<Timings> list) {
		super();
		this.bus_Name = bus_Name;
		this.frequency = frequency;
		this.city_List = city_List;
		this.list = list;
	}

	public Bus_Details() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	
	

}
