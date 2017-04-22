package com.junittestcases;
import com.*;

import bean.*;

import static org.junit.Assert.*;

import java.sql.*;

import org.junit.Test;

public class LoginTest {

	@Test
	public void test() throws SQLException 
	{
		LoginDao loginDao = new LoginDao();
		LoginBean bean = new LoginBean();
		try {
			//LoginDao.con.setAutoCommit(false);
			bean.setEmail("Anusha");
			bean.setPass("Anusha29");
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
