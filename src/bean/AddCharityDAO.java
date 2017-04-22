package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddCharityDAO {
	
	static long id;
	public static Connection con;
	
	public static boolean addCharity(AddCharityBean bean)
	{
		
		boolean status=false;  
		
		try{ 
			id++;
con=ConnectionProvider.getCon();
		
		if(con!=null)
			System.out.println("Connected");
		
		/*String query = "INSERT INTO charity ("
			    + " name,"
			    + " EmailID,"
			    + " Address,"
			    + " zipcode,"
			    + " phoneno,"
			    + " id_charity ) VALUES ("
			    + "?, ?, ?, ?, ?, ?,)";*/
		
		String query = "INSERT INTO charity ("
			    + " name,"
			    + " emailID,"
			    + " Address,"
			    + " zipcode,"
			    + " phoneno ) VALUES ("
			    + "?, ?, ?, ?, ?)";
		              
		PreparedStatement ps=con.prepareStatement(query);
		
		System.out.println("Connected1");
		
		ps.setString(1, bean.getName());
		System.out.println("Connected2"+bean.getName());
		ps.setString(2, bean.getEmailID());
		System.out.println("Connected3"+bean.getEmailID());
		ps.setString(3, bean.getAddress());
		System.out.println("Connected4"+bean.getAddress());
		ps.setLong(4, bean.getZipcode());
		System.out.println("Connected5"+bean.getZipcode());
		ps.setLong(5, bean.getPhoneNo());
		System.out.println("Connected6"+bean.getPhoneNo());		
		
		int rs=ps.executeUpdate(); 
		
		System.out.println(rs);
		if(rs > 0)
			status=true;
		else
			status = false;
		
		System.out.println(status);
		
		}catch(Exception e){}  
		  
		return status;  

	}

}
