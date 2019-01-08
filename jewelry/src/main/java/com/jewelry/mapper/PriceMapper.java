package com.jewelry.mapper;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.PriceVo;

public interface PriceMapper {
	
	void insertPrice(PriceVo priceVo);
	void updatePrice(PriceVo priceVo);

	List<PriceVo> selectPrices(HashMap<String, Object> params);
	void deletePrice(HashMap<String, Object> params);
	void deletePriceAll(HashMap<String, Object> params);
}
