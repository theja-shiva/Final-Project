package com.atos.model;

public class ld {
	private String empid;
	private String fullname;
	private int slot;
	private int room_no;
	private String a_status;
	
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public int getSlot() {
		return slot;
	}
	public void setSlot(int slot) {
		this.slot = slot;
	}
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	public String getA_status() {
		return a_status;
	}
	public void setA_status(String a_status) {
		this.a_status = a_status;
	}
	@Override
	public String toString() {
		return "ld [empid=" + empid + ", fullname=" + fullname + ", slot=" + slot + ", room_no=" + room_no
				+ ", a_status=" + a_status + "]";
	}
	
	
	
	
	
}
