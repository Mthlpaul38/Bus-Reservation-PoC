package com.example.BusReservation.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.BusReservation.models.Bus_Details;
import com.example.BusReservation.models.Timings;

public interface TimingsRepository extends CrudRepository<Timings,Integer>{
	@Query("from Timings  where bus_Det=?1")
	List<Timings> findtimings(Bus_Details o);
}
