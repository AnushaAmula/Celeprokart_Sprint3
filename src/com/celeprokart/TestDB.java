package com.celeprokart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestDB {

	public static void main(String[] args) throws SQLException, ClassNotFoundException 
	{
			    Statement stmt = null;
			    Connection con=null;
			    String query =
			        "select EMPLOYEETID, EMPLOYEENAME " +
			        "" +
			        "from " + "SSDI" + ".EMPLOYEE";
			    try {
			    	Class.forName("oracle.jdbc.driver.OracleDriver");
			    	String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
			    	con = DriverManager.getConnection(dbURL,"SSDI","SSDI_29");
			    	
			    	PreparedStatement ps=con.prepareStatement(  
			    		    "select * from EMPLOYEE where EMPLOYEETID=? and EMPLOYEENAME=?");  
			    		  
			    		ps.setInt(1,12);  
			    		ps.setString(2, "Nishanth");  
			    	
			    	if (con != null) {
			    	    System.out.println("Connected");
			    	}
			        stmt = con.createStatement();
			        ResultSet rs = ps.executeQuery();
			        while (rs.next()) 
			        {
			            String coffeeName = rs.getString("EMPLOYEETID");
			            String name = rs.getString("EMPLOYEENAME");
			            System.out.println(coffeeName + "\t" + "\t" + name);
			        }
			    } catch (SQLException e ) {
			        e.printStackTrace();
			    } finally {
			        if (stmt != null) { stmt.close(); }
			    }
			}

	}

