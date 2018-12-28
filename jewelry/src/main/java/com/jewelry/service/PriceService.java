package com.jewelry.service;

import com.jewelry.vo.PriceVo;

public interface PriceService {

	void insertPrice(PriceVo priceVo);

	void updatePrice(PriceVo priceVo);

	void deletePrice(int priceNo);

}
