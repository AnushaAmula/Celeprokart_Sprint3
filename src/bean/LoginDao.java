package bean;

import java.sql.*;

public class LoginDao {

	public static Connection con;
	public static boolean validate(LoginBean bean){  
		boolean status=false;  
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
			
			}catch(Exception e){}  
			  
			return status;  
			  
			}
	public static boolean validateCeleb(LoginBean bean){  
		boolean status=false;  
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
			
			}catch(Exception e){}  
			  
			return status;  
			  
			}
	public static boolean validateCust(LoginBean bean){  
		boolean status=false;  
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
			
			}catch(Exception e){}  
			  
			return status;  
			  
			}
}
