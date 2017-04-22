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

public class ProductDAO {
	static int count;
	public static Connection con;
	public static int addProduct(ProductBean bean)
	{

		int rs=0;
		try{ 
				con=ConnectionProvider.getCon();
			if(con!=null)
				System.out.println("connected");

		String query = "INSERT INTO products ("
			    + " category,"
			    + " sellordonate,"
			    + " charity,"
			    + " product_name,"
			    + " image,"
			    + " price,"
			    + " celebrityname ) VALUES ("
			    + "?, ?, ?, ?, ?, ?, ?)";
		              
		PreparedStatement ps=con.prepareStatement(query);
		
		System.out.println(bean.getProduct_name());
		if(bean.getCategory() != null)
		{
				ps.setString(1, bean.getCategory());
				System.out.println("Value of rs" + rs);
		}
		if(bean.getSellordonate() != null)
		{
				ps.setString(2, bean.getSellordonate());
				System.out.println("Value of rs" + rs);
		}
		if(bean.getCharity() != null)
		{
				ps.setString(3, bean.getCharity());
				System.out.println("Value of rs" + rs);
		}
		if(bean.getImage()!= null)
		{
				ps.setString(5, bean.getImage());
				System.out.println("Value of rs" + rs);
		}
		if(bean.getProduct_name()!= null)
		{
				ps.setString(4, bean.getProduct_name());
				System.out.println("Value of rs" + rs);
		}
		if(bean.getPrice() != null)
		{	
				ps.setString(6, bean.getPrice());
				System.out.println("Value of rs" + rs);
		}
		if(bean.getCelebrity() != null)
		{
				ps.setString(7, bean.getCelebrity());
				System.out.println("Value of rs" + rs);
		}
		rs=ps.executeUpdate(); 
		System.out.println(rs);
		
		}catch(Exception e){}  
		  
		return rs;  
	}

	
	public static int updateProduct(ProductBean bean)
	{

		int rs=0;
		try{ 
				con=ConnectionProvider.getCon();
			if(con!=null)
				System.out.println("connected");

//			StringBuilder queryBuilder =  new  StringBuilder(" Select * from ");
//			queryBuilder.append("products");
//			queryBuilder.append(" where ");
//			queryBuilder.append("price");
//			queryBuilder.append("LIKE '%\"' || ? || '\"%'");
//			
//			PreparedStatement psNew = con.prepareStatement(queryBuilder.toString());
//			psNew.setString(1, bean.getPrice());
//			ResultSet rsNew=psNew.executeQuery(); 
//			System.out.println("outside while");
//			while (rsNew.next()) 
//			{
//				System.out.println(rsNew.getString("product_name"));
//
//			}	
			
		String query = "UPDATE products SET price = ? where product_name = ?";
		              
		PreparedStatement ps=con.prepareStatement(query);

		if(bean.getPrice() != null)
			ps.setString(1, bean.getPrice());
		else if(bean.getProduct_name() != null)
			ps.setString(2, "Product1");
		System.out.println(bean.getPrice());
		System.out.println(bean.getProduct_name());
		System.out.println(ps);
		rs=ps.executeUpdate(); 
		ps.close();	
		System.out.println(rs);
		
		//sendEmail(to, "Account is created", "Thank you for creating the account.");
	
		}catch(Exception e){}  
		  
		return rs;  
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