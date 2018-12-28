package com.jewelry.vo;



import java.util.Date;

import javax.validation.constraints.NotEmpty;

public class Customer {
	
	private int customerNo;
	
	@NotEmpty(message="고객의 이름은 반드시 입력해야합니다.")
	private String customerName;
	
	@NotEmpty(message="하나의 번호는 반드시 입력해야합니다.")
	private String customerPhone;
	
	@NotEmpty(message="이메일은 반드시 입력해야합니다.")
	private String customerEmail;
	
	private String customerAge;
	
	@NotEmpty(message="고객의 성별은 반드시 입력해야합니다.")
	private String customerSex;

	private Date customerDate;

	public int getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}



	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerAge() {
		return customerAge;
	}

	public void setCustomerAge(String customerAge) {
		this.customerAge = customerAge;
	}

	public String getCustomerSex() {
		return customerSex;
	}

	public void setCustomerSex(String customerSex) {
		this.customerSex = customerSex;
	}

	public Date getCustomerDate() {
		return customerDate;
	}

	public void setCustomerDate(Date customerDate) {
		this.customerDate = customerDate;
	}
	
	
}
