package com.jewelry.mapper;

import com.jewelry.vo.PriceVo;

public interface PriceMapper {
	
	void insertPrice(PriceVo priceVo);
	void updatePrice(PriceVo priceVo);
	void deletePrice(int priceNo);
	
}
