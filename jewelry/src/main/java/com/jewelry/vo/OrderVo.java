package com.jewelry.vo;

import java.util.Date;

public class OrderVo {
	
	private int orderNo;
	private Date orderDate;
	private String orderCk;
	private Date orderCkDate;
	private int orderUser;
	private int detailNo;
	private int cuno;
	private int orderCount;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getOrderCk() {
		return orderCk;
	}
	public void setOrderCk(String orderCk) {
		this.orderCk = orderCk;
	}
	public Date getOrderCkDate() {
		return orderCkDate;
	}
	public void setOrderCkDate(Date orderCkDate) {
		this.orderCkDate = orderCkDate;
	}
	public int getOrderUser() {
		return orderUser;
	}
	public void setOrderUser(int orderUser) {
		this.orderUser = orderUser;
	}
	public int getDetailNo() {
		return detailNo;
	}
	public void setDetailNo(int detailNo) {
		this.detailNo = detailNo;
	}
	public int getCuno() {
		return cuno;
	}
	public void setCuno(int cuno) {
		this.cuno = cuno;
	}
	public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}	
	
}
