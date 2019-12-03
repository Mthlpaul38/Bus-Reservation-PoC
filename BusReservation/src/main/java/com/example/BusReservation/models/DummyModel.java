package com.example.BusReservation.models;

import java.util.List;

public class DummyModel {

	
	private int bus_id;
	private String bus_Name;
	private String city_List;

	private double dist;
	public double getDist() {
		return dist;
	}
	public void setDist(double dist) {
		this.dist = dist;
	}
	private String distance;
	private int seats;
	private Timings t1;
	private Timings t2;
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
	public String getCity_List() {
		return city_List;
	}
	public void setCity_List(String city_List) {
		this.city_List = city_List;
	}
	public Timings getT1() {
		return t1;
	}
	public void setT1(Timings t1) {
		this.t1 = t1;
	}
	public Timings getT2() {
		return t2;
	}
	public void setT2(Timings t2) {
		this.t2 = t2;
	}
	public DummyModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DummyModel(int bus_id, String bus_Name, String city_List, Timings t1, Timings t2,int seats,String distance,double dist) {
		super();
		this.bus_id = bus_id;
		this.bus_Name = bus_Name;
		this.city_List = city_List;
		this.t1 = t1;
		this.t2 = t2;
		this.seats=seats;
		this.distance=distance;
		this.dist=dist;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	
	
	
}
