package com.jewelry.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import com.jewelry.dao.HomeDaoInterface;
import com.jewelry.vo.FcVo;
import com.jewelry.vo.Home;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.salesViewVo;




public class HomeService implements HomeServiceInterface{

	private HomeDaoInterface homeDao;
	
	public void setHomeDao(HomeDaoInterface HomeDao) {
		this.homeDao = HomeDao;
	}

	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
	
	@Override
	public List<Home> takeCuList(int storeNo) {
		
		List<Home> customers = homeDao.selectCustomer(storeNo);


		return customers;
	}


	@Override
	public List<Home> takeProductList(int storeNo) {
		List<Home> products = homeDao.selectProduct(storeNo);
		return products;
	}


	@Override
	public List<Home> takeAcList(int storeNo) {
		List<Home> acList = homeDao.selectAc(storeNo);
		return acList;
	}
	
	@Override
	public List<Home> takePriceList(int storeNo) {
		List<Home> prices = homeDao.selectPrice(storeNo);
		return prices;
	}

	@Override
	public HashMap<String, Integer[]> takeRevenue(int storeNo) {
				
		Integer[] sum = {0,0,0,0};
		Integer[] re = {0,0,0,0,0};
		Integer[] ex = {0,0,0,0,0};
		Integer[] pr= {0,0,0,0,0};
 		
		HashMap<String, Integer[]> profit = new HashMap<>();		
		List<salesViewVo> sales = homeDao.selectSalesByStoreNo(storeNo);
				
		for (salesViewVo sale : sales) {
			if (sale.getSalesDate() != null) {
				
				String salesday = date.format(sale.getSalesDate());
				Calendar a = Calendar.getInstance();
				Calendar b = Calendar.getInstance();
				
				if (salesday.compareTo(date.format(a.getTime())) == 0) {					
					sum[0] += sale.getSalesPrice();					
				}
				
				a.add(Calendar.DATE,1-a.get(Calendar.DAY_OF_WEEK)); 
				b.add(Calendar.DATE,7-b.get(Calendar.DAY_OF_WEEK));				
				
				if (salesday.compareTo(date.format(a.getTime()))>=0&&salesday.compareTo(date.format(b.getTime()))<=0) {
					sum[1] +=sale.getSalesPrice();
				}
				
				a=Calendar.getInstance();
				b=Calendar.getInstance();				
				a.set(Calendar.DATE, a.getActualMinimum(Calendar.DATE));
				b.set(Calendar.DATE, b.getActualMaximum(Calendar.DATE));
				
				if(salesday.compareTo(date.format(a.getTime()))>=0&&salesday.compareTo(date.format(b.getTime()))<=0) {
					sum[2] +=sale.getSalesPrice();										
				}
				
				a=Calendar.getInstance();
				b=Calendar.getInstance();
				a.set(Calendar.MONTH, 0);
				a.set(Calendar.DATE,a.getActualMinimum(Calendar.DATE));
				b.set(Calendar.MONTH, 11);
				b.set(Calendar.DATE, b.getActualMaximum(Calendar.DATE));
				
				if(salesday.compareTo(date.format(a.getTime()))>=0&&salesday.compareTo(date.format(b.getTime()))<=0) {
					sum[3] +=sale.getSalesPrice();
				}
				
				for(int i=0; i<5 ; i++) {
				
					a=Calendar.getInstance();				
					a.set(Calendar.YEAR,a.get(Calendar.YEAR)-i);
					a.set(Calendar.MONTH,0);
					a.set(Calendar.DATE,1);
					
					b=Calendar.getInstance();
					b.set(Calendar.YEAR,a.get(Calendar.YEAR)-i);
					b.set(Calendar.MONTH,11);
					b.set(Calendar.DATE,31);
					
					if(salesday.compareTo(date.format(a.getTime()))>=0&&salesday.compareTo(date.format(b.getTime()))<=0) {
						re[i]+=sale.getSalesPrice();
						ex[i]+=sale.getPrice();
						pr[i]+=(sale.getSalesPrice()-sale.getPrice());
					}
					
				}
				
			}			
		}
		
		profit.put("sum",sum);
		profit.put("re",re);
		profit.put("ex",ex);
		profit.put("pr",pr);
				
		return profit;
	}
	@Override
	public List<ProductVo> takeProductAndCount(int storeNo) {
		
		Calendar a = Calendar.getInstance();
		Calendar b = Calendar.getInstance();
		a.set(Calendar.MONTH,a.get(Calendar.MONTH)-2);
		
		String today=date.format(b.getTime());
		String ageday=date.format(a.getTime());
		
		List<ProductVo> products = homeDao.selectProductAndCount(storeNo,today,ageday);
		
		for(ProductVo product:products) {
			product.setImgs(homeDao.selectProductImg(product.getProductNo()));
		}
		
		return products;
	}
	@Override
	public List<HashMap<String, Object>> takeExEmployee(int storeNo) {
		
		Calendar a = Calendar.getInstance();
		Calendar b = Calendar.getInstance();		
		a.set(Calendar.DATE, a.getActualMinimum(Calendar.DATE));
		b.set(Calendar.DATE, b.getActualMaximum(Calendar.DATE));
		String first=date.format(a.getTime());
		String last=date.format(b.getTime());

		
		List<HashMap<String, Object>> employees = homeDao.selectExEmployee(storeNo,first,last);
		
		return employees;
	}
	@Override
	public List<HashMap<String, Object>> takeExAc(int storeNo) {
		
		List<HashMap<String,Object>> acs =homeDao.selectExAc(storeNo);
		
		return acs;
	}
	
}
