package com.example.BusReservation.repositories;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.models.Seat;

public interface BookingRepository extends CrudRepository<Bookings,Integer> {

	
	@Query("FROM Bookings WHERE bus_id = ?1 and DATE(jurny_date) = ?2 and seat_number!='0'")
    List<Bookings> findByIdDate(int bus_id,Date date);

	@Query("select e.seat_number from Bookings e where e.bus_id = ?1 and DATE(e.jurny_date) = ?2")
    List<Integer> findId(int bus_id,Date date);


	@Query("FROM Bookings as b WHERE user_id = ?1 and DATE(jurny_date) >= ?2 and b.status='ACTIVE'")
    List<Bookings> findUpcomingBookings(int user_id,Date date);
	
	@Query("FROM Bookings as b WHERE bus_id = ?1 and DATE(jurny_date) >= ?2 and b.status='ACTIVE'")
    List<Bookings> findbusBookings(int bus_id,Date date);

	@Query("FROM Bookings WHERE user_id = ?1 and DATE(jurny_date) < ?2")
    List<Bookings> findPastBookings(int user_id,Date date);
	
	@Query("FROM Bookings")
    List<Bookings> selectAll();
	
	@Query("select count(*) From Bookings where status='active'")
	int bookings_Count();
	
	@Query("FROM Bookings WHERE MONTH(booking_date) = MONTH(CURRENT_DATE()) AND YEAR(booking_date) = YEAR(CURRENT_DATE()) and status='active'")
    List<Bookings> selectMonthly();
	
	@Query("From Bookings Where date(booking_date)=CURRENT_DATE() and status='active'")
	List<Bookings> selectDaily();
	
	@Query("FROM Bookings WHERE WEEKOFYEAR(booking_date) = WEEKOFYEAR(Now()) and status='active'")
	List<Bookings> selectWeekly();

	@Query("select bus_id ,count(*) from Bookings group by bus_id ") 
	  List<Object[]> findBus_id();
	  

		@Query("select DISTINCT ticket_id from Bookings WHERE user_id = ?1 and DATE(jurny_date) < ?2") 
		  List<String> findPastTickets(int user_id,Date date);
		  
		@Query("select DISTINCT ticket_id from Bookings  as b WHERE user_id = ?1 and DATE(jurny_date) >= ?2 and b.status='ACTIVE' ") 
		  List<String> findUpcomingTickets(int user_id,Date date);
		
		
		@Transactional
		@Modifying
		@Query("update Bookings b set b.status = 'CANCEL',b.seat_number='0'  where b.ticket_id = :Id")
		void updateBookingStatus( @Param("Id") String Id);

		   
}
