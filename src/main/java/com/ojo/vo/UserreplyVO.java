package com.ojo.vo;

public class UserreplyVO {

	
	private String userid;
	private String usercontent;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsercontent() {
		return usercontent;
	}
	public void setUsercontent(String usercontent) {
		this.usercontent = usercontent;
	}
	
	
	@Override
	public String toString() {
		return "UserreplyVO [userid=" + userid + ", usercontent=" + usercontent + "]";
	}
	
	
	
}
