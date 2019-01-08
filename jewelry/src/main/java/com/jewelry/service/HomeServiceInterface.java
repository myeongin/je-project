package com.jewelry.service;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.Home;
import com.jewelry.vo.ProductVo;


public interface HomeServiceInterface {

	List<Home> takeCuList(int storeNo);
	List<Home> takeProductList(int storeNo);
	List<Home> takeAcList(int storeNo);
	List<Home> takePriceList(int storeNo);
	HashMap<String, Integer[]> takeRevenue(int storeNo);
	List<ProductVo> takeProductAndCount(int storeNo);
	List<HashMap<String, Object>> takeExEmployee(int storeNo);
	List<HashMap<String, Object>> takeExAc(int storeNo);

}
