package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.PriceVo;

public interface PriceService {

	void insertPrice(PriceVo priceVo);

	void updatePrice(PriceVo priceVo);

	void deletePrice(int priceNo);

	List<PriceVo> takePriceList(int from, int to,int userNo);

}
