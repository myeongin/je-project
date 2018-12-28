package com.jewelry.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jewelry.service.misuService;
import com.jewelry.ui.ThePager;
import com.jewelry.vo.account;
import com.jewelry.vo.receivables;

@Controller
@RequestMapping("/receivables/")
public class receivablesController {
	
	@Autowired
	@Qualifier("misuService")
	private misuService misuservice;
	
	
	// 미수 리스트
	@RequestMapping(value = "/list.action", method = RequestMethod.GET)
	public String viewMisu(@RequestParam(value= "pageno", required = false, defaultValue = "1") Integer pageno, Model model) {
		
		int pageSize = 20;
		int from = (pageno - 1) * pageSize + 1;
		int to = from + pageSize;
		int pagerSize = 5;
		String linkUrl = "list.action";
			
		List<receivables> misus = misuservice.findAllMisuByPage(from, to);		
		int accountCount = misuservice.findMisuCount();
		
		ThePager pager = new ThePager(accountCount, pageno, pageSize, pagerSize, linkUrl);
			
		model.addAttribute("misus", misus);
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageno);
		
		return "receivables/list";
	}
	
	// 결제 리스트
		@RequestMapping(value = "/paylist.action", method = RequestMethod.GET)
		public String viewPay(@RequestParam(value= "pageno", required = false, defaultValue = "1") Integer pageno, Model model) {
			
			int pageSize = 20;
			int from = (pageno - 1) * pageSize + 1;
			int to = from + pageSize;
			int pagerSize = 5;
			String linkUrl = "paylist.action";
				
			List<receivables> misus = misuservice.findAllMisuByPage(from, to);		
			int accountCount = misuservice.findMisuCount();
			
			ThePager pager = new ThePager(accountCount, pageno, pageSize, pagerSize, linkUrl);
				
			model.addAttribute("misus", misus);
			model.addAttribute("pager", pager);
			model.addAttribute("pageno", pageno);
			
			return "receivables/paylist";
		}
	
	// 미수 등록
	@RequestMapping(value = "/paywrite.action", method = RequestMethod.GET)
	public String misuWrite() {
			
		return "receivables/paywrite";
	}
		
	@RequestMapping(value = "/paywrite.action", method = RequestMethod.POST)
	public String misuWrite(receivables misu) {
			
		misuservice.misuWrite(misu);
			
		return "redirect:/receivables/list.action";
	}
	
	@RequestMapping(value = "/storeCk.action", method = RequestMethod.POST)
	public String storeCk(account account, receivables misu) {
		
		int bestore = account.getAcno();
		int afstore = misu.getAcno();
		
		if (bestore == afstore) {
			return "success";
		} else {
			
			return "false";
		}
		
		
		
	}
	

		

	

}
