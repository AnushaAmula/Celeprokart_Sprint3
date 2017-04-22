package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UpdateImageDAO {

	public UpdateImageDAO() {
		// TODO Auto-generated constructor stub
	}

	public static Connection con;
	public static void validate(String image, String product_name){  
		try{  
			con=ConnectionProvider.getCon();  
			              
			PreparedStatement ps=con.prepareStatement(  
			    "UPDATE products SET IMAGE = ? WHERE Product_Name = ?"); 		  
			ps.setString(1, image);  
			ps.setString(2, product_name);               
			int s = ps.executeUpdate();
			if(s>0){
			System.out.println("Uploaded successfully !");
			}
			else{
			System.out.println("Error!");
			}
			
			}catch(Exception e){
				
				e.printStackTrace();
				
			}  
			  
	}

}
