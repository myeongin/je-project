package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.PriceVo;

public interface PriceDao {

	void insertPrice(PriceVo priceVo);

	void updatePrice(PriceVo priceVo);

	void deletePrice(int priceNo);

	List<PriceVo> selectPrices(int from, int to,int userNo);

}
