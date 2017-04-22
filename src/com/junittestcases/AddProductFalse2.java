package com.junittestcases;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.ProductBean;
import bean.ProductDAO;

public class AddProductFalse2 {

	@Test
	public void test() 
	{
		ProductBean bean = new ProductBean();
		try{
			
			bean.setProduct_name("Product25");
			bean.setCategory("Sports");
			bean.setCharity("mockCharity");
			
			bean.setImage("NULL");
			bean.setCelebrity("Roger");
			bean.setSellordonate("SELL");
			
			assertEquals(1, ProductDAO.addProduct(bean));

			ProductDAO.con.rollback();
			ProductDAO.con.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
