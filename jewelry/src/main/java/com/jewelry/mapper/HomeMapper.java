package com.jewelry.mapper;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.Customer;
import com.jewelry.vo.Home;
import com.jewelry.vo.SalesVo;




public interface HomeMapper {
	

	List<Home> selectCustomers(HashMap<String,Object> params);

	List<Home> selectProducts(HashMap<String, Object> params);

	List<Home> selectAcList(HashMap<String, Object> params);

	List<Home> selectPrices(HashMap<String, Object> params);
	
	List<SalesVo> selectSalesByStoreNo(int storeNo);



}
