package com.jewelry.vo;



import java.util.Date;

import javax.validation.constraints.NotEmpty;

public class Home {
	
	private int cuNo;
	
	
	private String cuName;
	
	
	private String cuPhone;
	

	private String cuEmail;
	
	private String cuSex;

	private Boolean cuDeleted;
	
	private Boolean productDel;
	private int productNo;
	private int acNo;
	private String acName;
	private String productName;
	private String acPhone;	
	
	private int priceNo;
	private Date priceDate;
	private int price;
	
	
	
	public int getPriceNo() {
		return priceNo;
	}

	public void setPriceNo(int priceNo) {
		this.priceNo = priceNo;
	}

	public Date getPriceDate() {
		return priceDate;
	}

	public void setPriceDate(Date priceDate) {
		this.priceDate = priceDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Boolean getProductDel() {
		return productDel;
	}

	public void setProductDel(Boolean productDel) {
		this.productDel = productDel;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	private int storeNo;

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

	public String getCuSex() {
		return cuSex;
	}

	public void setCuSex(String cuSex) {
		this.cuSex = cuSex;
	}

	public Boolean getCuDeleted() {
		return cuDeleted;
	}

	public void setCuDeleted(Boolean cuDeleted) {
		this.cuDeleted = cuDeleted;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public int getAcNo() {
		return acNo;
	}

	public void setAcNo(int acNo) {
		this.acNo = acNo;
	}

	public String getAcName() {
		return acName;
	}

	public void setAcName(String acName) {
		this.acName = acName;
	}

	public String getAcPhone() {
		return acPhone;
	}

	public void setAcPhone(String acPhone) {
		this.acPhone = acPhone;
	}

	
}
