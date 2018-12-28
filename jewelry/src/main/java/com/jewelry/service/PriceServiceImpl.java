package com.jewelry.service;

import com.jewelry.dao.PriceDao;
import com.jewelry.vo.PriceVo;

public class PriceServiceImpl implements PriceService{
	
	private PriceDao priceDao;
	public void setPriceDao(PriceDao priceDao) {
		this.priceDao = priceDao;
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
