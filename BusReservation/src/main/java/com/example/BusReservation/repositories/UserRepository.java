package com.example.BusReservation.repositories;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.BusReservation.models.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	@Query("FROM User WHERE user_email = ?1 and user_password = ?2")
    List<User> findByLogin(String email,String password);
	
	
	@Transactional
	@Modifying
	@Query("update User u set u.user_password = :newPassword where u.user_email = :Id")
	int updateUserSetStatusForName(@Param("newPassword") String newPassword, 
	  @Param("Id") String Id);
	@Transactional
	@Modifying
	@Query("update User u set u.user_gender = :gen where u.user_email = :Id")
	void updateGender(@Param("gen") String gen, @Param("Id") String Id);


	@Query("From User where user_id NOT IN (select user_id from Bookings)")
	List<User> findById();
	
	@Query("select count(*) from User")
	int user_Count();
	
	@Query("From User where user_id= ?1")
	User findBooking(int id);
	


	@Query("From User where user_email= ?1")
    List<User> findUser(String email);
	


}
