package com.jewelry.ui;

public class ThePager {
	
	private int pageSize;//한 페이지당 데이터 개수
	private int pagerSize;//번호로 보여주는 페이지 Link 개수
	private int dataCount;//총 데이터 수
	private int storeNo;
	private int currentPage;//현재 페이지 번호
	private int pageCount;//총 페이지 수
	
	private String linkUrl;//페이저가 포함되는 페이지의 주소
	
	public ThePager(int dataCount, int currentPage, 
		int pageSize, int pagerSize, String linkUrl,int storeNo) {
		
		this.storeNo = storeNo;
		this.linkUrl = linkUrl;		
		this.dataCount = dataCount;
		this.pageSize = pageSize;
		this.pagerSize = pagerSize;
		this.currentPage = currentPage;		
		pageCount = 
			(dataCount / pageSize) + ((dataCount % pageSize) > 0 ? 1 : 0); 
	}
	
	public String toString(){
		StringBuffer linkString = new StringBuffer();
		
		if (currentPage > 1) {
			linkString.append(String.format(
					"<li class=\"page-item\"><a class=\"page-link\" href=\"%s?pageNo=%d&storeNo=%d\">Previous</a></li>", linkUrl, currentPage - 1,storeNo));
		}			
		
		//2. 페이지 번호 Link 만들기
		int pagerBlock = (currentPage - 1) / pagerSize;
		int start = (pagerBlock * pagerSize) + 1;
		int end = start + pagerSize;
		for (int i = start; i < end; i++) {
			if (i > pageCount) break;
			if(i == currentPage) {
				linkString.append(String.format("<li class=\"page-item\"><span style=\"background:rgba(0,0,0,0.1)\" class=\"page-link\">%d</span></li>", i));
			} else { 
				linkString.append(String.format(					
				"<li class=\"page-item\"><a class=\"page-link\" href=\"%s?pageNo=%d&storeNo=%d\">%d</a></li>" , linkUrl,i,storeNo,i));
			}
			linkString.append("&nbsp;");
		}
		
		if (currentPage < pageCount) {
			linkString.append(String.format(
					"<li class=\"page-item\"><a class=\"page-link\" href=\"%s?pageNo=%d&storeNo=%d\">Next</a></li>",linkUrl, currentPage + 1,storeNo));
		}
		
		return linkString.toString();
	}

}













