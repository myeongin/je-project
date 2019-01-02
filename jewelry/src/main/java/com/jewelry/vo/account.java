package com.jewelry.vo;

import java.util.List;

import javax.validation.constraints.NotEmpty;

public class account {
	
	private int acno;
	@NotEmpty
	private String acstore;
	private String acadd;
	private String achonumber;
	private String acname;
	private String acphone;
	private String acmaname;
	private String acmaphone;
	@NotEmpty
	private double acheherry;
	private Boolean acdel;
	private int usno;
	private int storeno;
	
	private List<receivables> misus;
	
	
	public int getAcno() {
		return acno;
	}
	public void setAcno(int acno) {
		this.acno = acno;
	}
	public String getAcstore() {
		return acstore;
	}
	public void setAcstore(String acstore) {
		this.acstore = acstore;
	}
	public String getAcadd() {
		return acadd;
	}
	public void setAcadd(String acadd) {
		this.acadd = acadd;
	}
	public String getAchonumber() {
		return achonumber;
	}
	public void setAchonumber(String achonumber) {
		this.achonumber = achonumber;
	}
	public String getAcname() {
		return acname;
	}
	public void setAcname(String acname) {
		this.acname = acname;
	}
	public String getAcphone() {
		return acphone;
	}
	public void setAcphone(String acphone) {
		this.acphone = acphone;
	}
	public String getAcmaname() {
		return acmaname;
	}
	public void setAcmaname(String acmaname) {
		this.acmaname = acmaname;
	}
	public String getAcmaphone() {
		return acmaphone;
	}
	public void setAcmaphone(String acmaphone) {
		this.acmaphone = acmaphone;
	}
	public double getAcheherry() {
		return acheherry;
	}
	public void setAcheherry(double acheherry) {
		this.acheherry = acheherry;
	}
	public Boolean getAcdel() {
		return acdel;
	}
	public void setAcdel(Boolean acdel) {
		this.acdel = acdel;
	}
	public int getUsno() {
		return usno;
	}
	public void setUsno(int usno) {
		this.usno = usno;
	}
	public List<receivables> getMisus() {
		return misus;
	}
	public void setMisus(List<receivables> misus) {
		this.misus = misus;
	}
	public int getStoreno() {
		return storeno;
	}
	public void setStoreno(int storeno) {
		this.storeno = storeno;
	}
	

}
