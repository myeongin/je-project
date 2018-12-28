package com.jewelry.vo;

import java.sql.Date;

public class SalesVo {
	
	private int salesNo;
	private int productPrice;
	private int salesPrice;
	private String salesDiv;
	private Date salesDate;
	private int cuNo;
	private int salesUser;
	private int DetailNo;
	
	public int getSalesNo() {
		return salesNo;
	}
	public void setSalesNo(int salesNo) {
		this.salesNo = salesNo;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getSalesPrice() {
		return salesPrice;
	}
	public void setSalesPrice(int salesPrice) {
		this.salesPrice = salesPrice;
	}
	public String getSalesDiv() {
		return salesDiv;
	}
	public void setSalesDiv(String salesDiv) {
		this.salesDiv = salesDiv;
	}
	public Date getSalesDate() {
		return salesDate;
	}
	public void setSalesDate(Date salesDate) {
		this.salesDate = salesDate;
	}
	public int getCuNo() {
		return cuNo;
	}
	public void setCuNo(int cuNo) {
		this.cuNo = cuNo;
	}
	public int getSalesUser() {
		return salesUser;
	}
	public void setSalesUser(int salesUser) {
		this.salesUser = salesUser;
	}
	public int getDetailNo() {
		return DetailNo;
	}
	public void setDetailNo(int detailNo) {
		DetailNo = detailNo;
	}
	
	
}
