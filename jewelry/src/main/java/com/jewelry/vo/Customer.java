package com.jewelry.vo;



import java.util.Date;

import javax.validation.constraints.NotEmpty;

public class Customer {
	
	private int cuNo;
	
	@NotEmpty(message="고객의 이름은 반드시 입력해야합니다.")
	private String cuName;
	
	@NotEmpty(message="하나의 번호는 반드시 입력해야합니다.")
	private String cuPhone;
	
	@NotEmpty(message="이메일은 반드시 입력해야합니다.")
	private String cuEmail;
	
	private String cuBirth;
	
	private String cuAge;
	
	@NotEmpty(message="고객의 성별은 반드시 입력해야합니다.")
	private String cuSex;

	private Date regDate;
	
	private Boolean deleted;
	
	private int userNo;
	
	public int getCuNo() {
		return cuNo;
	}

	public void setCuNo(int cuNo) {
		this.cuNo = cuNo;
	}

	public String getCuName() {
		return cuName;
	}

	public void setCuName(String cuName) {
		this.cuName = cuName;
	}

	public String getCuPhone() {
		return cuPhone;
	}

	public void setCuPhone(String cuPhone) {
		this.cuPhone = cuPhone;
	}

	public String getCuEmail() {
		return cuEmail;
	}

	public void setCuEmail(String cuEmail) {
		this.cuEmail = cuEmail;
	}

	public String getCuBirth() {
		return cuBirth;
	}

	public void setCuBirth(String cuBirth) {
		this.cuBirth = cuBirth;
	}

	public String getCuAge() {
		return cuAge;
	}

	public void setCuAge(String cuAge) {
		this.cuAge = cuAge;
	}

	public String getCuSex() {
		return cuSex;
	}

	public void setCuSex(String cuSex) {
		this.cuSex = cuSex;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Boolean getDeleted() {
		return deleted;
	}

	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	
	
	
}
