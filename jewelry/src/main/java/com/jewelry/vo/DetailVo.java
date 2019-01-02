package com.jewelry.vo;

import java.util.List;

public class DetailVo {
	
	private int detailNo;
	private String detailGold;
	private String detailColor;
	private Double detailCarat;
	private String detailSize;
	private Boolean detailDiv;
	private int mount;
	private int price;
	private String shape;
	private int productNo;
	
	private List<OrderVo> orders; 
	
	public int getDetailNo() {
		return detailNo;
	}
	public void setDetailNo(int detailNo) {
		this.detailNo = detailNo;
	}
	public String getDetailGold() {
		return detailGold;
	}
	public void setDetailGold(String detailGold) {
		this.detailGold = detailGold;
	}
	public String getDetailColor() {
		return detailColor;
	}
	public void setDetailColor(String detailColor) {
		this.detailColor = detailColor;
	}
	public Double getDetailCarat() {
		return detailCarat;
	}
	public void setDetailCarat(Double detailCarat) {
		this.detailCarat = detailCarat;
	}
	public String getDetailSize() {
		return detailSize;
	}
	public void setDetailSize(String detailSize) {
		this.detailSize = detailSize;
	}
	public int getMount() {
		return mount;
	}
	public void setMount(int mount) {
		this.mount = mount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getShape() {
		return shape;
	}
	public void setShape(String shape) {
		this.shape = shape;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public List<OrderVo> getOrders() {
		return orders;
	}
	public void setOrders(List<OrderVo> orders) {
		this.orders = orders;
	}
	public Boolean getDetailDiv() {
		return detailDiv;
	}
	public void setDetailDiv(Boolean detailDiv) {
		this.detailDiv = detailDiv;
	}
	
	
	
	
	
}
