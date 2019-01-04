package com.jewelry.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.jewelry.service.HomeService;

import com.jewelry.vo.Home;

/**
 * Handles requests for the application home page.
 */



@Controller
public class HomeController {


@Autowired
	@Qualifier("homeService")
	private HomeService homeService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.action", method = RequestMethod.GET)
	public String home(Locale locale, Model model, int storeNo) {

		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		 
		List<Home> customers=homeService.takeCuList(storeNo);
		model.addAttribute("customers", customers );
		
		List<Home> products=homeService.takeProductList(storeNo);
		model.addAttribute("products", products );
		
		List<Home> acList=homeService.takeAcList(storeNo);
		model.addAttribute("acList", acList );
		
		List<Home> prices=homeService.takePriceList(storeNo);
		
		if(prices.size() != 0) {
			int newprice=prices.get(0).getPrice();
			model.addAttribute("newprice",newprice);
		};
		model.addAttribute("acList", acList );
		
		
		
		
		
		return "home";
	}
	
}
