package com.example.BusReservation.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.BusReservation.models.Bus_Details;

public interface Bus_DetailsRepository extends CrudRepository<Bus_Details, Integer>{
	@Query("select bus_id from Bus_Details")
	List findBusIds();
	
	@Query("from Bus_Details")
	List findAllBusDetails();
	
	@Query("from Bus_Details where bus_id=?1")
	Bus_Details findDetails(int bus_id);
	

	@Query("Select count(*) from Bus_Details")
	int bus_Count();
}
