package com.celeprokart.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.celeprokart.bean.*;
public class ForgotPasswordDAO 
{
	public static boolean forgotPassword(LoginBean bean)
	{
		boolean status=false;  
		try{  
		Connection con=ConnectionProvider.getCon(); 
		System.out.println("Connected");
		              
		PreparedStatement ps=con.prepareStatement(  
		    "select * from Celebrity where username=?"); 		  
		ps.setString(1,bean.getEmail()); 
		System.out.println(bean.getEmail());
	               
		ResultSet rs=ps.executeQuery(); 
		System.out.println("Connected");
		System.out.println(rs.next());
		while (rs.next()) 
		{
			System.out.println("Connected");
			String password = rs.getString("password");
			System.out.println("Connected"+password);
			bean.setPass(password);
		}
		String to = bean.getEmail();
		sendEmail(to, "Password", "Your password is"+bean.getPass());
		System.out.println(bean.getPass());
		return true;
		
		}catch(Exception e){}  
		  
		return status;  
		  
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
