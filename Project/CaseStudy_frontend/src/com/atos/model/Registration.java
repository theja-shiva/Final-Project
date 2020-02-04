package com.atos.model;

public class Registration {
	
	public Registration() {
		super();
	}
	public Registration(String fname, String mname, String lname, String email, int empid, int phone, String password,
			String cpassword) {
		super();
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.email = email;
		this.empid = empid;
		this.phone = phone;
		this.password = password;
		this.cpassword = cpassword;
	}
	private String fname;
	private String mname;
	private String lname;
	private String email;
	private int empid;
	private int phone;
	private String password;
	private String cpassword;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
//	@Override
//	public String toString() {
//		return "Registration [fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", email=" + email
//				+ ", empid=" + empid + ", phone=" + phone + ", password=" + password + ", cpassword=" + cpassword + "]";
//	}
	
	
	
	
}

