package com.junittestcases;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.LoginBean;
import bean.LoginDao;

public class CelebLoginTestCase2 {

	@Test
	public void test() 
	{
		LoginDao loginDao = new LoginDao();
		LoginBean bean = new LoginBean();
		try {
			//LoginDao.con.setAutoCommit(false);
			bean.setEmail("anushareddy.amula@gmail.com");
			bean.setPass("");
			assertTrue(LoginDao.validateCeleb(bean));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}finally
		{
			//LoginDao.con.rollback();
			//LoginDao.con.close();
		}
	}

}
