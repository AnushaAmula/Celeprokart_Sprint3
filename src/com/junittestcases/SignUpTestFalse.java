package com.junittestcases;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import bean.SignUpCelebrityBean;
import bean.SignUpCelebrityDao;

public class SignUpTestFalse {

	@Test
	public void test() throws SQLException 
	{
		SignUpCelebrityDao signUpDao = new SignUpCelebrityDao();
		SignUpCelebrityBean bean = new SignUpCelebrityBean();
		try {
			//con.setAutoCommit(false);
			//Provider.CONNECTION_URL = "jdbc:oracle:thin:@localhost:1521:ssdi";
			
			long phoneNo = 9803392688L;
			bean.setName("Tom");

			bean.setAddress("Charlotte, NC");
			bean.setRole("Customer");
			bean.setZipcode(28262);
			bean.setPhoneNo(phoneNo);
			bean.setPassword("Venkatesh29");
			bean.setFlag("N");
			assertTrue(SignUpCelebrityDao.addCelebrity(bean));
		}finally
		{
			SignUpCelebrityDao.con.rollback();
			SignUpCelebrityDao.con.close();
		}

	}

}
