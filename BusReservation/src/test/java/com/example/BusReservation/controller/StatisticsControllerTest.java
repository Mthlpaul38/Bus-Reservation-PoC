package com.example.BusReservation.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;
import static org.mockito.Mockito.when;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;

import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.repositories.BookingRepository;



class StatisticsControllerTest {

	
	@Mock
	BookingRepository brepo;
	
	@Test
	void testGetMonthly() {
		when(brepo.selectMonthly()).thenReturn(Stream.of(new Bookings(new Date(2019-12-02),new Date(2019-12-03),"231",1,"3213",21,"active","kerala","kottayam")).collect(Collectors.toList()));
		assertEquals(1, brepo.selectMonthly().size());
	}

	@Test
	@Disabled
	void testGetDaily() {
		fail("Not yet implemented");
	}

	@Test
	void testGetWeekly() {
		fail("Not yet implemented");
	}

}
