package com.jewelry.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jewelry.service.PriceService;
import com.jewelry.vo.Customer;
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
	@RequestMapping(value="price.action",method= RequestMethod.GET)
public String listPrice(@RequestParam(value="pageno",required = false,defaultValue ="1")int pageno,Model model, int userNo) {
		
		int pagesize=1000000;
		int from=(pageno-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "price.action";
		
		List<PriceVo> prices=priceService.takePriceList(from,to,userNo);
		if(prices.size() != 0) {
			int newprice=prices.get(0).getPrice();
			model.addAttribute("newprice",newprice);
		};
		
		
		model.addAttribute("prices", prices);

		model.addAttribute("userNo",userNo);
		
		return "price/price";
	}
	
	//시세등록
	@RequestMapping(value="price.action",method=RequestMethod.POST)
	public String price(PriceVo priceVo,Model model, int userNo) {
		
		priceService.insertPrice(priceVo);
		model.addAttribute("userNo",userNo);
		
		return "redirect:/price/price.action";
	}
	
	/*
	//시세수정
	@RequestMapping(value="priceUd.action",method=RequestMethod.POST)
	public String priceUpdate(PriceVo priceVo) {
		
		priceService.updatePrice(priceVo);
		
		return "price/price";
	}*/
	
	
	
	//시세삭제
	@RequestMapping(value="priceDelete.action",method= {RequestMethod.POST,RequestMethod.GET})
	public String priceDe(int priceNo,Model model, int userNo) {
		
		priceService.deletePrice(priceNo);
		model.addAttribute("userNo",userNo);
		
		return "redirect:/price/price.action";
	}
	

	
	
	
}
