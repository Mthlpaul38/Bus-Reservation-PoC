package com.example.BusReservation.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "cities")
public class City {

	@Id
	@Column
	@GenericGenerator(name="ken4" , strategy="increment")
	@GeneratedValue(generator="ken4")
	private int city_id;

	@Column
	private String city_name;

	public int getCity_id() {
		return city_id;
	}

	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}

	public String getCity_name() {
		return city_name;
	}

	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}

	public City(String city_name) {
		super();
		this.city_name = city_name;
	}

	public City() {
		super();
		// TODO Auto-generated constructor stub
	}

	

}
