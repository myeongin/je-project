package com.jewelry.vo;

import java.util.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;


public class EmployeeVo {
	
	private int emNo;
	@Length(min=6,max=18)
	private String userId;
	@Length(min=6,max=18)
	private String userPswd;
	@Email
	private String userEmail;
	@NotEmpty
	private String userPhone;
	@NotEmpty
	private String userName;
	private Date regDate;
	private Date QtDate;
	private String userType;
	private Boolean emDel;
	private String userStore;
	private int userNo;
	
	public int getEmNo() {
		return emNo;
	}
	public void setEmNo(int emNo) {
		this.emNo = emNo;
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getQtDate() {
		return QtDate;
	}
	public void setQtDate(Date qtDate) {
		QtDate = qtDate;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public Boolean getEmDel() {
		return emDel;
	}
	public void setEmDel(Boolean emDel) {
		this.emDel = emDel;
	}
	public String getUserStore() {
		return userStore;
	}
	public void setUserStore(String userStore) {
		this.userStore = userStore;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	
	
	
	
	
}
