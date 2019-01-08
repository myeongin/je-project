package com.jewelry.mapper;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.Customer;
import com.jewelry.vo.FcVo;
import com.jewelry.vo.Home;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.salesViewVo;




public interface HomeMapper {
	

	List<Home> selectCustomers(HashMap<String,Object> params);

	List<Home> selectProducts(HashMap<String, Object> params);

	List<Home> selectAcList(HashMap<String, Object> params);

	List<Home> selectPrices(HashMap<String, Object> params);
	
	List<salesViewVo> selectSalesByStoreNo(int storeNo);

	List<ProductVo> selectProductAndCount(HashMap<String,Object> date);
	
	List<ProductImgVo> selectProductImg(int productNo);

	List<HashMap<String, Object>> selectExEmployee(HashMap<String, Object> em);

	List<HashMap<String, Object>> selectExAc(int storeNo);

}
