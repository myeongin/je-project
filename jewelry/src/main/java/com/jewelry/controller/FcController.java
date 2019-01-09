package com.jewelry.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jewelry.service.FcService;
import com.jewelry.ui.ThePager;
import com.jewelry.vo.FcVo;
import com.jewelry.vo.ProductVo;

@Controller

public class FcController {
	
	@Autowired
	@Qualifier("fcService")
	private FcService fcService;
	public void setFcService(FcService fcService) {
		this.fcService = fcService;
	}	
	
/************************************************************************/
	
	//회원가입
	@RequestMapping(value="/fc/register.action",method=RequestMethod.GET)
	public String registerView() {
		
		return "fc/register";
		
	}
	
	@RequestMapping(value="/fc/register.action",method=RequestMethod.POST)
	public String register(@Valid FcVo accountVo,BindingResult br) {
		
		if(br.hasErrors()) {
			return "fc/register";
		}
		
		fcService.registerAccount(accountVo);
		
		return "redirect:/fc/login.action";
	}
	
	
/************************************************************************/
	
	//로그인
	@RequestMapping(value= {"/","/fc/login.action"},method=RequestMethod.GET)
	public String loginView() {
		
		return "fc/login";
		
	}
	

	@RequestMapping(value = "/fc/login.action",method=RequestMethod.POST)
	public String login(FcVo accountVo,HttpSession session,Model model) {
		
		FcVo accountVo2 = fcService.findAccountByIdAndPswd(accountVo);

			if (accountVo2 != null) {
				session.setAttribute("user", accountVo2);				
				model.addAttribute("storeNo",accountVo2.getStoreNo());

				return "redirect:/home.action";
			} else {
				String loginfail="fail";
				model.addAttribute("loginfail",loginfail);
				return "fc/login";
			}
		}
	
	//로그아웃
	@RequestMapping(value="/fc/logout.action",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/fc/login.action";
	}
	
	
	/************************************************************************/	
	
	//회원계정관리
	@RequestMapping(value="/fc/regmanagement.action",method=RequestMethod.GET)
	public String regManagementView(HttpSession session,Model model,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo) {
		
		FcVo accountVo = (FcVo)session.getAttribute("user");
		int storeNo = accountVo.getStoreNo();
		
		if(accountVo != null && accountVo.getUserType().equals("admin")) {
			

			int pagesize=5;
			int from=(pageNo-1)*pagesize +1;
			int to =from+pagesize;
			int pagersize = 5;
			String linkUrl = "regmanagement.action";
			
			List<FcVo> accounts = fcService.findAccountAll(from,to);
			int registercount = fcService.findregcount();
			
			ThePager pager = new ThePager(registercount, pageNo, pagesize, pagersize, linkUrl,storeNo);
			
			model.addAttribute("accounts",accounts);
			model.addAttribute("pager",pager);
			model.addAttribute("pageNo",pageNo);
			
			return "fc/regmanagement";
			
		}else {
			
			model.addAttribute("storeNo",storeNo);
			return "redirect:/home.action";
			
		}
				
			
	}	
	
	//회원계정상태변경
	@RequestMapping(value="/fc/regact.action",method=RequestMethod.POST)
	public String regAct(int userNo,String del) {
		
		fcService.updateAccountTypeByuserNo(userNo,del);

		return "redirect:/fc/regmanagement.action";
	}
	
	/************************************************************************/
	
	//직원정보보기
	@RequestMapping(value="/fc/empmanagement.action",method=RequestMethod.GET)
	public String empManagement(int userNo,Model model,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo) {

		
		int pagesize=5;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "employeelist.action";
		
		List<FcVo> employees = fcService.findEmployeeAll(userNo,from,to);
		int employeecount = fcService.findempcount(userNo);
		
		ThePager pager = new ThePager(employeecount, pageNo, pagesize, pagersize, linkUrl,userNo);
		
		model.addAttribute("employees",employees);
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);				
		
		return "fc/empmanagement";
	}
	
	//직원등록
	@RequestMapping(value="/fc/employee.action",method=RequestMethod.GET)
	public String employeeView(HttpSession session) {
			
		FcVo accountVo = (FcVo)session.getAttribute("user");
			
		if(accountVo != null && accountVo.getUserType().equals("fc")) {
			return "fc/employee";
		}else {
			return "redirect:/fc/home.action";
		}		
			
	}
		
	@RequestMapping(value="/fc/employee.action",method=RequestMethod.POST)
	public String employee(@Valid FcVo fc,BindingResult br,Model model) {
			
//		if(br.hasErrors()) {
//			return "account/employee";
//		}
			
		fcService.registerEmployee(fc);
		model.addAttribute("userNo", fc.getStoreNo());
			
		return "redirect:/fc/empmanagement.action";
	}
	
	//직원리스트
	@RequestMapping(value="/fc/employeelist.action",method=RequestMethod.GET)
	public String employeelist(Integer userNo,Model model,int pageNo) {
		
		System.out.println(userNo);
		
		int pagesize=5;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		
		List<FcVo> employees = fcService.findEmployeeAll(userNo,from,to);
		model.addAttribute("employees",employees);
						
		return "fc/employeelist";
	}

	//직원정보수정
	@RequestMapping(value="/fc/empmanagement.action",method=RequestMethod.POST)
	@ResponseBody
	public String empManagement(FcVo fc) {

		fcService.updateEmployeeByEmpNo(fc);
		
		return "success";
	}
	
}
