package com.jewelry.dao;

import com.jewelry.vo.PriceVo;

public interface PriceDao {

	void insertPrice(PriceVo priceVo);

	void updatePrice(PriceVo priceVo);

	void deletePrice(int priceNo);

}
