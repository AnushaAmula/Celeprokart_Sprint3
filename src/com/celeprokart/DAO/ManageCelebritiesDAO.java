package com.celeprokart.DAO;

import java.sql.*;

public class ManageCelebritiesDAO {

	public static Connection con;
	public static boolean ManageCelebrities(String[] listOFCelebrities)
	{
		
		PreparedStatement ps;
		con=ConnectionProvider.getCon();

		if(con!=null)
			System.out.println("connected");
		System.out.println(listOFCelebrities);
		try
		{
			for(int i=0;i<listOFCelebrities.length;i++)
			{
				ps = con.prepareStatement(
					      "UPDATE Celebrity SET FLAG = ? where EMAIL_ID = ?");		
					    ps.setString(1, "Y");
					    ps.setString(2, listOFCelebrities[i]);

				    ps.executeUpdate();
				    ps.close();	
	}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
	public static boolean ManageProducts(String price, String id)
	{
		
		PreparedStatement ps;
		con=ConnectionProvider.getCon();

		if(con!=null)
			try
		{
			System.out.println("connected");
				ps = con.prepareStatement(
					      "UPDATE Produtcs SET price = ? where product_id = ?");		
					    ps.setInt(1, Integer.parseInt(price));
					    ps.setInt(2, Integer.parseInt(id));

				    ps.executeUpdate();
				    ps.close();	
				    return true;
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
}
