package com.celeprokart.DAO;

import java.sql.Connection;
import com.celeprokart.bean.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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

public class SignUpCelebrityDao {
	
	static int count;
	public static Connection con;
	public static boolean addCelebrity(SignUpCelebrityBean bean)
	{
		
		boolean status=false;  
		
		try{ 
				con=ConnectionProvider.getCon();
			if(con!=null)
				System.out.println("connected");
		
		if(bean.getRole().equals("Celebrity"))
		{
		String query = "INSERT INTO celebrity ("
			    + " name,"
			    + " Email_ID,"
			    + " Role,"
			    + " Address,"
			    + " zipcode,"
			    + " phone_number,"
			    + " password,"
			    + " flag ) VALUES ("
			    + "?, ?, ?, ?, ?, ?, ?, ?)";
		              
		PreparedStatement ps=con.prepareStatement(query);
		
		ps.setString(1, bean.getName());
		ps.setString(2, bean.getEmailID());
		ps.setString(3, bean.getRole());
		System.out.println(bean.getRole());
		ps.setString(4, bean.getAddress());
		ps.setLong(5, bean.getZipcode());
		ps.setLong(6, bean.getPhoneNo());
		ps.setString(7, bean.getPassword());
		ps.setString(8, "N");
		
		System.out.println(query);
		int rs=ps.executeUpdate(); 
		System.out.println(rs);
		if(rs > 0)
			status=true;
		else
			status = false;
		
		String to = bean.getEmailID();
		
		sendEmail(to, "Account is created", "Thank you for creating the account.");
		
		System.out.println(status);
		}
		else if(bean.getRole().equals("Customer"))
		{
			count++;
			if(con!=null)
				System.out.println("connected");
			String query = "INSERT INTO Customer ("
				    + " name,"
				    + " Email_ID,"
				    + " Role,"
				    + " Address,"
				    + " zipcode,"
				    + " phone_number,"
				    + " password ) VALUES ("
				    + "?, ?, ?, ?, ?, ?, ?)";
			              
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getEmailID());
			ps.setString(3, bean.getRole());
			System.out.println(bean.getRole());
			ps.setString(4, bean.getAddress());
			ps.setLong(5, bean.getZipcode());
			ps.setLong(6, bean.getPhoneNo());
			ps.setString(7, bean.getPassword());
			
			int rs=ps.executeUpdate(); 
			System.out.println(rs);
			if(rs > 0)
				status=true;
			else
				status = false;
			String to = bean.getEmailID();
			sendEmail(to, "Account is created", "Thank you for creating the account. Your ID is"+count);
			System.out.println(status);
			}
		
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

	
	public void UpdateConnection(Connection con) throws SQLException
	{
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ssdi","SYSTEM","Ssdi1234");
		
	}
	
}
