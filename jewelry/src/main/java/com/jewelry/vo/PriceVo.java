package com.jewelry.vo;

import java.sql.Date;

public class PriceVo {
	private int priceNo;
	private Date priceDate;
	private String priceGold;
	private int price;
	private int userNo;
	
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
	public String getPriceGold() {
		return priceGold;
	}
	public void setPriceGold(String priceGold) {
		this.priceGold = priceGold;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	
	
}
