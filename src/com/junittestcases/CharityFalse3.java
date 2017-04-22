package com.junittestcases;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

import bean.AddCharityBean;
import bean.AddCharityDAO;

public class CharityFalse3 {

	@Test
	public void test() throws SQLException {

		AddCharityBean bean = new AddCharityBean();
		AddCharityDAO dao = new AddCharityDAO();
		bean.setName("charity6");

		bean.setEmailID("asumathireddy@gmail.com");
		bean.setPhoneNo(9803392688L);
		bean.setZipcode(28262);
		
		assertTrue(AddCharityDAO.addCharity(bean));
		
		AddCharityDAO.con.rollback();
		AddCharityDAO.con.close();

	}

}
