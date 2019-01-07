package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import com.jewelry.mapper.CustomerMapper;
import com.jewelry.mapper.HomeMapper;
import com.jewelry.vo.Customer;
import com.jewelry.vo.Home;
import com.jewelry.vo.SalesVo;



public class HomeDao implements HomeDaoInterface{
	
	private HomeMapper homeMapper;
	public void setHomeMapper(HomeMapper homeMapper) {
		this.homeMapper = homeMapper;
	}
	


	@Override //최근 고객 목록 보기
	public List<Home> selectCustomer(int storeNo) {	
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("del",'1');
		params.put("storeNo", storeNo);
		
		List<Home> customers=homeMapper.selectCustomers(params);
		
		return customers;
	}
	
	@Override //최근 제품 목록 보기
	public List<Home> selectProduct(int storeNo) {	
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("del",'1');
		params.put("storeNo", storeNo);
		
		List<Home> products=homeMapper.selectProducts(params);
		
		return products;
	}
	
	@Override //최근 제품 목록 보기
	public List<Home> selectAc(int storeNo) {	
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("del",'1');
		params.put("storeNo", storeNo);
		
		List<Home> acList=homeMapper.selectAcList(params);
		
		return acList;
	}
	
	@Override //최근 가격 목록 보기
	public List<Home> selectPrice(int storeNo) {	
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("del",'1');
		params.put("storeNo", storeNo);
		
		List<Home> prices=homeMapper.selectPrices(params);
		
		return prices;
	}



	@Override
	public List<SalesVo> selectSalesByStoreNo(int storeNo) {
		
		List<SalesVo> sales =homeMapper.selectSalesByStoreNo(storeNo);
		
		return sales;
	}
	
	
/*
	@Override //등록된 고객 수
	public int countMM() {
		
		int countMM=customerMapper.selectCustomerCount();
		System.out.println(countMM);
		
		return countMM;
	}

	public int countWW() {
		
		int countWW=customerMapper.selectCustomerCount2();
		System.out.println(countWW);
		return countWW;
	}
*/
	
}
