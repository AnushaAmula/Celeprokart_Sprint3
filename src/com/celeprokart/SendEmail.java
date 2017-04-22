package com.celeprokart;

import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;
import javax.websocket.*;
import javax.mail.Session;


public class SendEmail {

	public static void main(String[] args) 
	{
			String to = "venkateshperumal199@gmail.com";
		      String from = "anushareddy.amula@gmail.com";
		      String host = "localhost";  
		      
		      try {
				new SendEmail().sendEmail(to, "newsubject", "dfdfdf");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		     //Get the session object  
		 /*     Properties properties = System.getProperties();  
		      properties.setProperty("mail.smtp.host", host);  
		      Session session = Session.getDefaultInstance(properties); 
		  
		     //compose the message  
		      try{  
		         MimeMessage message = new MimeMessage(session);  
		         message.setFrom(new InternetAddress(from));  
		         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
		         message.setSubject("Ping");  
		         message.setText("Hello, this is example of sending email  ");  
		  
		         // Send message  
		         Transport.send(message);  
		         System.out.println("message sent successfully....");  
		  
		      }catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (javax.mail.MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} */ 
	}
	
	public static void sendEmail(String toAddress,String subject, String message) throws AddressException,
	MessagingException {
		
		
String host  = "smtp.gmail.com";
String port  = "587";
String userName = "anushareddy.amula@gmail.com";
String password = "Hanuman@29";



// sets SMTP server properties
Properties properties = new Properties();
properties.put("mail.smtp.host", host);
properties.put("mail.smtp.port", port);
properties.put("mail.smtp.auth", "true");
properties.put("mail.smtp.starttls.enable", "true");

// creates a new session with an authenticator
Authenticator auth = new Authenticator() {
	public PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(userName, password);
	}
};

Session session = Session.getInstance(properties, auth);

// creates a new e-mail message
Message msg = new MimeMessage(session);

msg.setFrom(new InternetAddress(userName));
InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
msg.setRecipients(Message.RecipientType.TO, toAddresses);
msg.setSubject(subject);
msg.setSentDate(new Date());
msg.setText(message);

// sends the e-mail
Transport.send(msg);

}
	
	
	
	
	
	
	

}
