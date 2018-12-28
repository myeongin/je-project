package com.jewelry.dao;

import com.jewelry.mapper.PriceMapper;
import com.jewelry.vo.PriceVo;

public class PriceDaoImpl implements PriceDao{
	
	private PriceMapper priceMapper;
	public void setPriceMapper(PriceMapper priceMapper) {
		this.priceMapper = priceMapper;
	}
	
	//시세등록
	@Override
	public void insertPrice(PriceVo priceVo) {
		priceMapper.insertPrice(priceVo);
	}
	
	//시세수정
	@Override
	public void updatePrice(PriceVo priceVo) {
		priceMapper.updatePrice(priceVo);
	}
	
	//시세삭제
	@Override
	public void deletePrice(int priceNo) {
		priceMapper.deletePrice(priceNo);
	}
	
}
