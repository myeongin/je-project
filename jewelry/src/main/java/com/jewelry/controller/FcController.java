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
	
	@RequestMapping(value="/fc/login.action",method=RequestMethod.POST)
	public String login(FcVo accountVo,HttpSession session) {
		
		FcVo accountVo2 = fcService.findAccountByIdAndPswd(accountVo);

			if (accountVo2 != null) {
				session.setAttribute("user", accountVo2);				
				return "redirect:/home.action";
			} else {
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
	public String regManagementView(HttpSession session,Model model) {
		
		List<FcVo> accounts = fcService.findAccountAll();
		model.addAttribute("accounts",accounts);
			
		return "fc/regmanagement";
			
	}	
	
	//회원계정상태변경
	@RequestMapping(value="/fc/regact.action",method=RequestMethod.POST)
	public String regAct(FcVo accountVo) {
		
		fcService.updateAccountTypeByuserNo(accountVo);

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
		int employeecount = fcService.findProductcount(userNo);
		
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
			
		/*	if(br.hasErrors()) {
			return "account/employee";
			}*/
			
		fcService.registerEmployee(fc);
		model.addAttribute("userNo", fc.getStoreNo());
			
		return "redirect:/fc/empmanagement.action";
	}
	
	//직원리스트
	@RequestMapping(value="/fc/employeelist.action",method=RequestMethod.GET)
	public String employeelist(int userNo,Model model,int pageNo) {
		
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
