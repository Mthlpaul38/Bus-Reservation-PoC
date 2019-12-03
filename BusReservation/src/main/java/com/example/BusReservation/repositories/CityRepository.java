package com.example.BusReservation.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.BusReservation.models.City;


public interface CityRepository extends CrudRepository<City, Integer>{

	
	@Query("FROM City WHERE city_name = ?1")
    List<City> findCityByName(String city_name);
	
	@Query("select e.city_name from City e where e.city_id=?1")
	String findCityName(int city_id);
	@Query("select city_name from City")
	List<String> allCities();
	@Query("select e.city_id from City e where e.city_name=?1")
	String findId(String city_name);
		
	
}
