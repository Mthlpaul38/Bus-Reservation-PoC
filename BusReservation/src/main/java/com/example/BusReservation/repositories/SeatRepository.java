package com.example.BusReservation.repositories;


import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.BusReservation.models.Seat;
import com.example.BusReservation.models.User;

public interface SeatRepository extends CrudRepository<Seat, Integer>{

	
}


