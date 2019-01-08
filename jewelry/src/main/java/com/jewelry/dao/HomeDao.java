package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import com.jewelry.mapper.CustomerMapper;
import com.jewelry.mapper.HomeMapper;
import com.jewelry.vo.Customer;
import com.jewelry.vo.FcVo;
import com.jewelry.vo.Home;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.salesViewVo;



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
	public List<salesViewVo> selectSalesByStoreNo(int storeNo) {
		
		List<salesViewVo> sales =homeMapper.selectSalesByStoreNo(storeNo);
		
		return sales;
	}



	@Override
	public List<ProductVo> selectProductAndCount(int storeNo,String today,String ageday) {
		
		HashMap<String, Object> date = new HashMap<>();
		date.put("storeNo", storeNo);
		date.put("to",today);
		date.put("ago",ageday);
		
		List<ProductVo> products = homeMapper.selectProductAndCount(date);
		
		return products;
	}



	@Override
	public List<ProductImgVo> selectProductImg(int productNo) {
		
		List<ProductImgVo> imgs = homeMapper.selectProductImg(productNo);
		
		return imgs;
	}



	@Override
	public List<HashMap<String, Object>> selectExEmployee(int storeNo, String first, String last) {
		
		HashMap<String,Object> em = new HashMap<>();
		em.put("storeNo", storeNo);
		em.put("first",first);
		em.put("last",last);
		
		List<HashMap<String, Object>> employees=homeMapper.selectExEmployee(em);
		
		return employees;
	}



	@Override
	public List<HashMap<String, Object>> selectExAc(int storeNo) {
		
		List<HashMap<String, Object>> acs = homeMapper.selectExAc(storeNo);
		
		return acs;
	}
	

}
