package com.junittestcases;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.ProductBean;
import bean.ProductDAO;

public class AddProductFalse6 {

	@Test
	public void test() {
		ProductBean bean = new ProductBean();
		try{
			
			bean.setProduct_name("Product25");
			bean.setCategory("Sports");
			bean.setCharity("mockCharity");
			bean.setPrice("20");
			bean.setImage("NULL");
			
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
