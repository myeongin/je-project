package com.jewelry.vo;

import java.util.Date;
import java.util.List;

public class receivables {
	
	private int reno;
	private double recarat;
	private int remoney;
	private Date retrdate;
	private Date repaydate;
	private int usno;
	private int acno;
	
	private List<account> accountlist;
	
	
	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public double getRecarat() {
		return recarat;
	}
	public void setRecarat(double recarat) {
		this.recarat = recarat;
	}
	public int getRemoney() {
		return remoney;
	}
	public void setRemoney(int remoney) {
		this.remoney = remoney;
	}
	public Date getRepaydate() {
		return repaydate;
	}
	public void setRepaydate(Date repaydate) {
		this.repaydate = repaydate;
	}
	public int getUsno() {
		return usno;
	}
	public void setUsno(int usno) {
		this.usno = usno;
	}
	public int getAcno() {
		return acno;
	}
	public void setAcno(int acno) {
		this.acno = acno;
	}
	public List<account> getAccountlist() {
		return accountlist;
	}
	public void setAccountlist(List<account> accountlist) {
		this.accountlist = accountlist;
	}
	public Date getRetrdate() {
		return retrdate;
	}
	public void setRetrdate(Date retrdate) {
		this.retrdate = retrdate;
	}
	
	

}
