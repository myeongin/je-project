 package com.jewelry.vo;

import java.util.List;

public class ProductVo {
	
	private int productNo;
	private String productName;
	private int productCost;
	private int userNo;
	private Boolean productDel;
	private int acno;
	private List<ProductImgVo> imgs;
	private List<DetailVo> details;
	
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
	public int getProductCost() {
		return productCost;
	}
	public void setProductCost(int productCost) {
		this.productCost = productCost;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public Boolean getProductDel() {
		return productDel;
	}
	public void setProductDel(Boolean productDel) {
		this.productDel = productDel;
	}
	public int getAcno() {
		return acno;
	}
	public void setAcno(int acno) {
		this.acno = acno;
	}
	public List<ProductImgVo> getImgs() {
		return imgs;
	}
	public void setImgs(List<ProductImgVo> imgs) {
		this.imgs = imgs;
	}
	public List<DetailVo> getDetails() {
		return details;
	}
	public void setDetails(List<DetailVo> details) {
		this.details = details;
	}
	
	
	
}
