package com.example.BusReservation;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
@ComponentScan({"com.example.BusReservation.controller","com.example.BusReservation.dao","com.example.BusReservation.models","com.example.BusReservation.security","com.example.BusReservation.service"})
public class BusReservationApplication {

	public static void main(String[] args) {
		SpringApplication.run(BusReservationApplication.class, args);
	}

}
