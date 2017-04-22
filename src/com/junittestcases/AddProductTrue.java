package com.junittestcases;

import org.junit.Test;
import bean.ProductBean;
import bean.ProductDAO;

import java.sql.*;

public class AddProductTrue {

	@Test
	public void test() throws SQLException
	{
		ProductBean bean = new ProductBean();
		try{
			
			bean.setProduct_name("Product25");
			bean.setCategory("Sports");
			bean.setCharity("mockCharity");
			bean.setPrice("20");
			bean.setImage("NULL");
			bean.setCelebrity("Roger");
			bean.setSellordonate("SELL");
			
			ProductDAO.addProduct(bean);

			ProductDAO.con.rollback();
			ProductDAO.con.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
