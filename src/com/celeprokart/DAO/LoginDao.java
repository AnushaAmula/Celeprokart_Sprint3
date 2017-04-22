package com.celeprokart.DAO;

import java.sql.*;
import com.celeprokart.bean.*;

public class LoginDao {

	public static Connection con;
	public static boolean validate(LoginBean bean){  
		boolean status=false;  
		AdminBean adminBean = new AdminBean();
		try{  
			con=ConnectionProvider.getCon();  
			              
			PreparedStatement ps=con.prepareStatement(  
			    "select * from Admin where USERNAME=? and PASSWORD=?"); 		  
			ps.setString(1,bean.getEmail());  
			ps.setString(2, bean.getPass());               
			ResultSet rs=ps.executeQuery();  
			status=rs.next();
			System.out.println(status);
			System.out.println(bean.getEmail());
			System.out.println(bean.getPass());
			
			
			adminBean.setAddress(rs.getString("address"));
			adminBean.setPassword(rs.getString("password"));
			adminBean.setPhoneNo(rs.getInt("phoneno"));
			adminBean.setUserName(rs.getString("username"));
			adminBean.setId(rs.getInt("id"));
			
			return true;
			
			}catch(Exception e){}  
			  
			return false;  
			  
			}
	public static boolean validateCeleb(LoginBean bean){  
		boolean status=false; 
		SignUpCelebrityBean celebrityBean = new SignUpCelebrityBean();
		try{  
			con=ConnectionProvider.getCon();  
			              
			PreparedStatement ps=con.prepareStatement(  
			    "select * from Celebrity where EMAIL_ID=? and PASSWORD=?"); 		  
			ps.setString(1,bean.getEmail());  
			ps.setString(2, bean.getPass());               
			ResultSet rs=ps.executeQuery();  
			status=rs.next();
			System.out.println(status);
			System.out.println(bean.getEmail());
			System.out.println(bean.getPass());
			
			celebrityBean.setAddress(rs.getString("address"));
			celebrityBean.setEmailID(rs.getString("email_ID"));
			celebrityBean.setFlag(rs.getString("flag"));
			celebrityBean.setId(rs.getInt("id"));
			celebrityBean.setName(rs.getString("name"));
			celebrityBean.setPassword(rs.getString("password"));
			celebrityBean.setPhoneNo(rs.getInt("phone_number"));
			celebrityBean.setRole(rs.getString("role"));
			celebrityBean.setZipcode(rs.getInt("zipcode"));
			
			return true;
			
			}catch(Exception e){}  
			  
			return false;  
			  
			}
	public static boolean validateCust(LoginBean bean){  
		boolean status=false;
		CustomerBean customerBean = new CustomerBean();
		try{  
			con=ConnectionProvider.getCon();  
			              
			PreparedStatement ps=con.prepareStatement(  
			    "select * from Customer where EMAIL_ID=? and PASSWORD=?"); 		  
			ps.setString(1,bean.getEmail());  
			ps.setString(2, bean.getPass());               
			ResultSet rs=ps.executeQuery();  
			status=rs.next();
			System.out.println(status);
			System.out.println(bean.getEmail());
			System.out.println(bean.getPass());
			
			customerBean.setAddress(rs.getString("address"));
			customerBean.setEmailID(rs.getString("email_ID"));
			customerBean.setId(rs.getInt("id"));
			customerBean.setName(rs.getString("name"));
			customerBean.setPassword(rs.getString("password"));
			customerBean.setPhoneNo(rs.getInt("phone_number"));
			customerBean.setRole(rs.getString("role"));
			customerBean.setZipcode(rs.getInt("zipcode"));
			
			return true;
			
			}catch(Exception e){
				
			}  
			  
			return false;  
			  
			}
}
