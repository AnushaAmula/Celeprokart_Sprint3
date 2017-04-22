package bean;

public class CustomerBean {

	public CustomerBean() {
		// TODO Auto-generated constructor stub
	}
	public String name;
	public String emailID;
	public String role;
	public String address;
	public long zipcode;
	public long phoneNo;
	public String password;
	public int id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getZipcode() {
		return zipcode;
	}
	public void setZipcode(long zipcode) {
		this.zipcode = zipcode;
	}
	public long getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "CustomerBean [name=" + name + ", emailID=" + emailID + ", role=" + role + ", address=" + address
				+ ", zipcode=" + zipcode + ", phoneNo=" + phoneNo + ", password=" + password + ", id=" + id + "]";
	}
	
}
