package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.FcVo;
import com.jewelry.vo.Home;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.salesViewVo;

public interface HomeDaoInterface {


	List<Home> selectCustomer(int storeNo);

	List<Home> selectProduct(int storeNo);

	List<Home> selectAc(int storeNo);

	List<Home> selectPrice(int storeNo);

	List<salesViewVo> selectSalesByStoreNo(int storeNo);

	List<ProductVo> selectProductAndCount(int storeNo, String today, String ageday);

	List<ProductImgVo> selectProductImg(int productNo);

	List<HashMap<String, Object>> selectExEmployee(int storeNo, String first, String last);

	List<HashMap<String, Object>> selectExAc(int storeNo);


}
