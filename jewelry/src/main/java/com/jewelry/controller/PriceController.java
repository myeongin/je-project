package com.jewelry.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jewelry.service.PriceService;
import com.jewelry.vo.PriceVo;

@Controller
@RequestMapping("/price/")
public class PriceController {
	
	@Autowired
	@Qualifier("priceService")
	private PriceService priceService;
	public void setPriceService(PriceService priceService) {
		this.priceService = priceService;
	}	
	
	/************************************************************************/
	
	//시세
	@RequestMapping(value="price.action",method=RequestMethod.GET)
	public String priceView() {
		
		
		
		return "price/price";
	}
	
	//시세등록
	@RequestMapping(value="price.action",method=RequestMethod.POST)
	public String price(PriceVo priceVo) {
		
		priceService.insertPrice(priceVo);
		
		return "price/price";
	}
	
	//시세수정
	@RequestMapping(value="priceUd.action",method=RequestMethod.POST)
	public String priceUpdate(PriceVo priceVo) {
		
		priceService.updatePrice(priceVo);
		
		return "price/price";
	}
	
	//시세삭제
	@RequestMapping(value="priceDel.action",method=RequestMethod.POST)
	public String priceDe(int priceNo) {
		
		priceService.deletePrice(priceNo);
		
		return "price/price";
	}

	
	
	
}
