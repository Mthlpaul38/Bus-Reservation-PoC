package com.example.BusReservation.Emails;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.example.BusReservation.models.Bookings;
import com.example.BusReservation.models.Seat;

public class SendUnauthTicket {

	


	public  void send(String ticket,Date dt,String name,List<Bookings> li,String email,String city1,String city2) throws UnsupportedEncodingException{  
         //Get properties object    
         Properties props = new Properties();    
         props.put("mail.smtp.host", "smtp.gmail.com");
         props.put("mail.smtp.port", "587");
         props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.starttls.enable", "true"); //TLS
         
         Session session = Session.getInstance(props,
                 new javax.mail.Authenticator() {
                     protected PasswordAuthentication getPasswordAuthentication() {
                         return new PasswordAuthentication("yogeshdevelop402@gmail.com", "Khatri@10");
                     }
                 });
         
        
         try {    
          
        	 String v="";
        	 String d="";
        	d=d+" Source city:"+city1+" <br> "+"Destination City:"+city2+"<br>";
        	 for(Bookings s:li)
        	 {
        		 v=v+s.getSeat_number()+"\n";
        	 }
        	 
        	 
        	 Message message = new MimeMessage(session);    
          message.setFrom(new InternetAddress("yogeshdevelop402@gmail.com","Bus Service"));
          message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));    
          message.setSubject("Your ticket details");    
          
          
          
         String cont="<h3>Welcome "+name+"</h3>\r\n" + 
         		"\r\n" + 
         		"<h3>Your ticket details are:</h3>\r\n" + 
         		"\r\n" + 
         		"<h3>Ticket Id:" +ticket+"</h3>\r\n" + 
         		"\r\n" + 
         		"\r\n" + 
         		"<h4>Date:"+ dt+"</h4>\r\n" + 
         		"\r\n" + "<h3>"+d+"</h3><br>"+
         		"<h4>Seats Number:"+v+"</h4>";
          message.setContent(cont, "text/html; charset=utf-8");
          message.isMimeType("text/html");
          Transport.send(message);    
          System.out.println("message sent successfully");    
         } 
         catch (MessagingException e) 
         {
        	 throw new RuntimeException(e);
        	 
         
         }    
            
   }  
}
