package com.jewelry.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.jewelry.dao.HomeDaoInterface;
import com.jewelry.vo.Home;
import com.jewelry.vo.SalesVo;




public class HomeService implements HomeServiceInterface{

	private HomeDaoInterface homeDao;
	
	public void setHomeDao(HomeDaoInterface HomeDao) {
		this.homeDao = HomeDao;
	}

	
	
	@Override
	public List<Home> takeCuList(int storeNo) {
		
		List<Home> customers = homeDao.selectCustomer(storeNo);


		return customers;
	}



	public List<Home> takeProductList(int storeNo) {
		List<Home> products = homeDao.selectProduct(storeNo);
		return products;
	}



	public List<Home> takeAcList(int storeNo) {
		List<Home> acList = homeDao.selectAc(storeNo);
		return acList;
	}
	
	public List<Home> takePriceList(int storeNo) {
		List<Home> prices = homeDao.selectPrice(storeNo);
		return prices;
	}



	@Override
	public List<Integer> takeRevenue(int storeNo) {
		
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		
		int sum1 = 0;
		int sum2 = 0;
		int sum3 = 0;
		int sum4 = 0;
 		
		List<Integer> revenue = new ArrayList<>();
		
		Calendar to =Calendar.getInstance();
		Calendar wfirst=Calendar.getInstance();
		Calendar wlast=Calendar.getInstance();
		Calendar first=Calendar.getInstance();
		Calendar last=Calendar.getInstance();
		Calendar yfirst=Calendar.getInstance();
		Calendar ylast=Calendar.getInstance();
		
		wfirst.add(Calendar.DATE,1-wfirst.get(Calendar.DAY_OF_WEEK)); 
		wlast.add(Calendar.DATE,7-wlast.get(Calendar.DAY_OF_WEEK));		
		first.set(Calendar.DATE,first.getActualMinimum(Calendar.DATE));
		last.set(Calendar.DATE, last.getActualMaximum(Calendar.DATE));
		yfirst.set(Calendar.MONTH, 0);
		yfirst.set(Calendar.DATE,yfirst.getActualMinimum(Calendar.DATE));
		ylast.set(Calendar.MONTH, 11);
		ylast.set(Calendar.DATE, ylast.getActualMaximum(Calendar.DATE));		
		
		String today = date.format(to.getTime());
		String wfirstday = date.format(wfirst.getTime());
		String wlastday = date.format(wlast.getTime());
		String firstday = date.format(first.getTime());
		String lastday = date.format(last.getTime());
		String yfirstday = date.format(yfirst.getTime());
		String ylastday = date.format(ylast.getTime());
				
		List<SalesVo> sales = homeDao.selectSalesByStoreNo(storeNo);
				
		for (SalesVo sale : sales) {

			if (sale.getSalesDate() != null) {

				String salesday = date.format(sale.getSalesDate());

				if (salesday.compareTo(today) == 0) {
					sum1 += sale.getSalesPrice();
				}
				
				if (salesday.compareTo(wfirstday)>=0&&salesday.compareTo(wlastday)<=0) {
					sum2 +=sale.getSalesPrice();
				}
				
				if(salesday.compareTo(firstday)>=0&&salesday.compareTo(lastday)<=0) {
					sum3 +=sale.getSalesPrice();
				}
				
				if(salesday.compareTo(yfirstday)>=0&&salesday.compareTo(ylastday)<=0) {
					sum4 +=sale.getSalesPrice();
				}

			}
			
		}
		
		revenue.add(sum1);
		revenue.add(sum2);
		revenue.add(sum3);
		revenue.add(sum4);
		
		return revenue;
	}



	


	

	 
/*	public int countMM() {
		int countMM = customerDao.countMM();

		return countMM;
	}
	
	public int countWW() {
		int countWW = customerDao.countWW();

		return countWW;
	}*/



	
}
