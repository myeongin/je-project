package com.jewelry.service;

import java.util.List;

import com.jewelry.dao.PriceDao;
import com.jewelry.vo.PriceVo;

public class PriceServiceImpl implements PriceService{
	
	private PriceDao priceDao;
	public void setPriceDao(PriceDao priceDao) {
		this.priceDao = priceDao;
	}
	
	@Override
	public 	List<PriceVo> takePriceList(int from, int to) {

		List<PriceVo> prices = priceDao.selectPrices(from,to);
		return prices;
		
	}
	//시세등록
	@Override
	public void insertPrice(PriceVo priceVo) {
		priceDao.insertPrice(priceVo);
	}
	
	//시세수정
	@Override
	public void updatePrice(PriceVo priceVo) {
		priceDao.updatePrice(priceVo);
	}
	
	//시세삭제
	@Override
	public void deletePrice(int priceNo) {
		priceDao.deletePrice(priceNo);
	}
	
}
