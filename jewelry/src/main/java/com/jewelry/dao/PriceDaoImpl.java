package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import com.jewelry.mapper.PriceMapper;
import com.jewelry.vo.PriceVo;

public class PriceDaoImpl implements PriceDao{
	
	private PriceMapper priceMapper;
	public void setPriceMapper(PriceMapper priceMapper) {
		this.priceMapper = priceMapper;
	}
	
	public List<PriceVo> selectPrices(int from,int to,int userNo) {	
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to",to);
		params.put("del",'1');
		params.put("userNo", userNo);
		
		List<PriceVo> prices=priceMapper.selectPrices(params);
		
		return prices;
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
		HashMap<String, Object> params = new HashMap<>();
		params.put("priceNo", priceNo);
		params.put("deleted","1");
		priceMapper.deletePrice(params);
	}
	
	//시세삭제
	@Override
	public void deletePriceAll(int userNo) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("userNo", userNo);
		params.put("deleted","1");
		priceMapper.deletePriceAll(params);
	}
	
	
	
	
}
