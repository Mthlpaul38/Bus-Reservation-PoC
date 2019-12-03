package com.example.BusReservation.Emails;

import java.io.UnsupportedEncodingException;
import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*;

import org.apache.commons.lang3.RandomStringUtils;    

public class SetPassword {

	
	private String email;
	
	private String generatedString;
	
	 public SetPassword(String email, String generatedString) {
		super();
		this.email = email;
		this.generatedString = generatedString;
	}






	public  void send() throws UnsupportedEncodingException{  
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
          MimeMessage message = new MimeMessage(session);    
          message.setFrom(new InternetAddress("yogeshdevelop402@gmail.com","Bus Service"));
          message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));    
          message.setSubject("Change your passsword for bus service");    
          message.setText("Your temporary email password is:"
          		+ generatedString);    
          //send message  
          Transport.send(message);    
          System.out.println("message sent successfully");    
         } 
         catch (MessagingException e) 
         {
        	 throw new RuntimeException(e);
        	 
         
         }    
            
   }  





}
