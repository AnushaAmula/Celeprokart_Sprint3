package com.celeprokart.bean;

public class AdminBean {

	public AdminBean() {
		// TODO Auto-generated constructor stub
	}
	String userName;
	String password;
	int phoneNo;
	String address;
	int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "AdminBean [userName=" + userName + ", password=" + password + ", phoneNo=" + phoneNo + ", address="
				+ address + "]";
	}
}
