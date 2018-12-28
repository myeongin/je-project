package com.jewelry.vo;

import java.util.Date;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

public class FcVo {
	
	private int userNo;
	@Length(min=6,max=18)
	private String userId;
	@Length(min=6,max=18)
	private String userPswd;
	@NotEmpty
	private String userName;
	@NotEmpty
	private String userEmail;
	private String userPhone;
	private String userStore;
	private String userType;
	private Boolean userDel;
	private Date regdate;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPswd() {
		return userPswd;
	}
	public void setUserPswd(String userPswd) {
		this.userPswd = userPswd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserStore() {
		return userStore;
	}
	public void setUserStore(String userStore) {
		this.userStore = userStore;
	}
	public Boolean getUserDel() {
		return userDel;
	}
	public void setUserDel(Boolean userDel) {
		this.userDel = userDel;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}	
	
}
