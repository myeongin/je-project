package com.jewelry.service;

import java.util.List;

import com.jewelry.dao.CustomerDaoInterface;
import com.jewelry.dao.HomeDaoInterface;
import com.jewelry.vo.Customer;
import com.jewelry.vo.Home;




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
	

	 
/*	public int countMM() {
		int countMM = customerDao.countMM();

		return countMM;
	}
	
	public int countWW() {
		int countWW = customerDao.countWW();

		return countWW;
	}*/



	
}
