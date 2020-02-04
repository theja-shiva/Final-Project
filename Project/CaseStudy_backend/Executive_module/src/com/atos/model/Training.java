package com.atos.model;

public class Training {
	
	private String tid;
	private String roomno;
	private String trName;
	private String platform;
	private String status;
	
	
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getRoomno() {
		return roomno;
	}
	public void setRoomno(String roomno) {
		this.roomno = roomno;
	}
	public String getTrName() {
		return trName;
	}
	public void setTrName(String trName) {
		this.trName = trName;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Training [tid=" + tid + ", roomno=" + roomno + ", trName=" + trName + ", platform=" + platform
				+ ", status=" + status + "]";
	}	

}
