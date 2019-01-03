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
	
	// 결제 리스트
		@RequestMapping(value = "/paylist.action", method = RequestMethod.GET)
		public String viewPay(@RequestParam(value= "pageno", required = false, defaultValue = "1") Integer pageno, Model model) {
			
			int pageSize = 20;
			int from = (pageno - 1) * pageSize + 1;
			int to = from + pageSize;
			int pagerSize = 5;
			String linkUrl = "paylist.action";
				
			List<account> accounts = misuservice.findAllMisuByPage(from, to);		
			int misuCount = misuservice.findMisuCount();
			
			ThePager pager = new ThePager(misuCount, pageno, pageSize, pagerSize, linkUrl);
			
			model.addAttribute("misus", accounts);
			model.addAttribute("pager", pager);
			model.addAttribute("pageno", pageno);
			
			return "receivables/paylist";
		}
	
	// 결제 등록
	@RequestMapping(value = "/paywrite.action", method = RequestMethod.GET)
	public String misuWrite(int accountNo, Model model) {
		
		account accounts = misuservice.accountStoreName(accountNo);
		
		model.addAttribute("accounts", accounts);
		
		return "receivables/paywrite";
	}
		
	@RequestMapping(value = "/paywrite.action", method = RequestMethod.POST)
	public String misuWrite(receivables misu) {
			
		misuservice.misuWrite(misu);
			
		return "redirect:/receivables/paylist.action";
	}
	
	// 결제 수정
	
	
	// 결제 삭제
	
	
	
	// 미수 리스트
	@RequestMapping(value = "/list.action", method = RequestMethod.GET)
	public String viewMisu(@RequestParam(value= "pageno", required = false, defaultValue = "1") Integer pageno, Model model) {
			
		int pageSize = 20;
		int from = (pageno - 1) * pageSize + 1;
		int to = from + pageSize;
		int pagerSize = 5;
		String linkUrl = "list.action";
			
		List<account> accounts = misuservice.findAllMisuByPage(from, to);		
		int misuCount = misuservice.findMisuCount();
		
		ThePager pager = new ThePager(misuCount, pageno, pageSize, pagerSize, linkUrl);
			
		model.addAttribute("misus", accounts);
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageno);
		
		return "receivables/list";
	}
	
	

	

}
