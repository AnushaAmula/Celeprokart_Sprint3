package com.junittestcases;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.LoginBean;
import bean.LoginDao;

public class LoginTestFalse {

	@Test
	public void test()
	{
		LoginDao loginDao = new LoginDao();
		LoginBean bean = new LoginBean();
		try {
			//LoginDao.con.setAutoCommit(false);
			bean.setEmail("Anusha");
			bean.setPass("");
			assertTrue(LoginDao.validate(bean));
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
