package com.jewelry.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jewelry.service.accountService;
import com.jewelry.ui.ThePager;
import com.jewelry.vo.account;

@Controller
@RequestMapping("/account/")
public class accountController {
	
	@Autowired
	@Qualifier("accountService")
	private accountService accountservice;
	
	
	// 거래처 리스트
	@RequestMapping(value="/list.action",method=RequestMethod.GET)
	public String viewAccount(@RequestParam(value= "pageno", required = false, defaultValue = "1") Integer pageno, Model model) {
			
		int pageSize = 20;
		int from = (pageno - 1) * pageSize + 1;
		int to = from + pageSize;
		int pagerSize = 5;
		String linkUrl = "list.action";
			
		List<account> accounts = accountservice.findAllAccountByPage(from, to);		
		int accountCount = accountservice.findAccountCount();
		
		ThePager pager = new ThePager(accountCount, pageno, pageSize, pagerSize, linkUrl);
			
		model.addAttribute("accounts", accounts);
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageno);
		
		return "account/list";
			
	}
	
	// 결제 거래처 리스트
	@RequestMapping(value="/storesearch.action",method=RequestMethod.GET)
	public String viewAccountSerach(@RequestParam(value= "pageno", required = false, defaultValue = "1") Integer pageno, Model model) {
			
		int pageSize = 20;
		int from = (pageno - 1) * pageSize + 1;
		int to = from + pageSize;
		int pagerSize = 5;
		String linkUrl = "list.action";
			
		List<account> accounts = accountservice.findAllAccountByPage(from, to);		
		int accountCount = accountservice.findAccountCount();
		
		ThePager pager = new ThePager(accountCount, pageno, pageSize, pagerSize, linkUrl);
			
		model.addAttribute("accounts", accounts);
		model.addAttribute("pager", pager);
		model.addAttribute("pageno", pageno);
		
		return "account/storesearch";
			
	}
	
	// 거래처 등록
	@RequestMapping(value = "/write.action", method = RequestMethod.GET)
	public String accountWrite() {
		
		return "account/write";
	}
	
	@RequestMapping(value = "/write.action", method = RequestMethod.POST)
	public String accountWrite(account account) {
		
		accountservice.accountWrite(account);
		
		return "redirect:/account/list.action";
		
	}
	
	// 거래처 수정
	@RequestMapping(value = "/rewrite.action", method = RequestMethod.GET)
	public String accountRewrite(
			int accountNo,
			Model model) {
		
		account accounts = accountservice.accountAll(accountNo);
		model.addAttribute("accounts", accounts);
		
		return "account/rewrite";
	}
	
	@RequestMapping(value = "/rewrite.action", method = RequestMethod.POST)
	public String accountRewrite(
			account account, 
			Model model) {
		
		accountservice.accountRewrite(account);
		model.addAttribute("accountNo", account.getAcno());
		
		return "redirect:/account/list.action";
	}
	
	// 거래처 삭제
	@RequestMapping(value = "/delete.action", method = RequestMethod.GET)
	public String accountDelete(
			int accountNo, 
			Model model) {
		
		accountservice.accountDelete(accountNo);
		
		return "redirect:/account/list.action";
	}
	

	
	
	
	
	
	
}
