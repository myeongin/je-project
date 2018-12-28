package com.jewelry.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jewelry.service.FcService;
import com.jewelry.vo.FcVo;
import com.jewelry.vo.EmployeeVo;

@Controller
@RequestMapping("/fc/")
public class FcController {
	
	@Autowired
	@Qualifier("fcService")
	private FcService fcService;
	public void setFcService(FcService fcService) {
		this.fcService = fcService;
	}	
	
	/************************************************************************/
	
	//로그인
	@RequestMapping(value="login.action",method=RequestMethod.GET)
	public String loginView() {
		return "fc/login";
	}
	
	@RequestMapping(value="login.action",method=RequestMethod.POST)
	public String login(FcVo accountVo,@RequestParam(value="employee",required = false,defaultValue ="user")String em,HttpSession session) {
		
		if (em.equals("employee")) {

			EmployeeVo employeeVo = new EmployeeVo();
			employeeVo.setUserId(accountVo.getUserId());
			employeeVo.setUserPswd(accountVo.getUserPswd());

			employeeVo = fcService.findEmployeeByIdAndPswd(employeeVo);
			
			if(employeeVo != null) {
				session.setAttribute("user", employeeVo);
				return "redirect:/home.action";
			}else {
				return "fc/login";
			}
			
		} else {

			FcVo accountVo2 = fcService.findAccountByIdAndPswd(accountVo);

			if (accountVo2 != null) {
				session.setAttribute("user", accountVo2);
				return "redirect:/home.action";
			} else {
				return "fc/login";
			}
		}
		
		
	}
	
	/************************************************************************/
	
	//로그아웃
	@RequestMapping(value="logout.action",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/fc/login.action";
	}
	
	/************************************************************************/
	
	//회원가입
	@RequestMapping(value="register.action",method=RequestMethod.GET)
	public String registerView() {		
		
			return "fc/register";		
		
	}
	
	@RequestMapping(value="register.action",method=RequestMethod.POST)
	public String register(@Valid FcVo accountVo,BindingResult br) {
		
		if(br.hasErrors()) {
			return "fc/register";
		}
		
		fcService.registerAccount(accountVo);
		
		return "redirect:/fc/login.action";
	}
	
	/************************************************************************/	
	
	//회원계정관리
	@RequestMapping(value="regmanagement.action",method=RequestMethod.GET)
	public String regManagementView(HttpSession session,Model model) {
		
	
			List<FcVo> accounts = fcService.findAccountAll();
			model.addAttribute("accounts",accounts);
			
			return "fc/regmanagement";
			
	}
	
	//회원계정수정 
	@RequestMapping(value="regmanagement.action",method=RequestMethod.POST)
	public String regManagement(FcVo accountVo) {
		
		fcService.updateAccountByuserNo(accountVo);
		
		return "redirect:/fc/regmanagement.action";
	}
	
	
	//회원계정상태변경
	@RequestMapping(value="regact.action",method=RequestMethod.POST)
	public String regAct(FcVo accountVo) {
		
		fcService.updateAccountTypeByuserNo(accountVo);

		return "redirect:/fc/regmanagement.action";
	}
	
	/************************************************************************/
	
	//직원정보보기
	@RequestMapping(value="empmanagement.action",method=RequestMethod.GET)
	public String empManagement(int userNo,Model model) {
		
		List<EmployeeVo> employees = fcService.findEmployeeAll(userNo);
		model.addAttribute("employees",employees);
		
		return "fc/empmanagement";
	}
	
	//직원리스트
	@RequestMapping(value="employeelist.action",method=RequestMethod.GET)
	public String employeelist(int userNo,Model model) {
		
		List<EmployeeVo> employees = fcService.findEmployeeAll(userNo);
		model.addAttribute("employees",employees);
		return "fc/employeelist";
	}

	//직원등록
	@RequestMapping(value="employee.action",method=RequestMethod.GET)
	public String employeeView(HttpSession session) {
		
		FcVo accountVo = (FcVo)session.getAttribute("user");
		
		if(accountVo != null && accountVo.getUserType().equals("user")) {
			return "fc/employee";
		}else {
			return "redirect:/fc/login.action";
		}		
		
	}
	
	@RequestMapping(value="employee.action",method=RequestMethod.POST)
	public String employee(@Valid EmployeeVo employeeVo,BindingResult br,Model model) {
		
	/*	if(br.hasErrors()) {
			return "account/employee";
		}*/
		
		fcService.registerEmployee(employeeVo);
		model.addAttribute("userNo", employeeVo.getUserNo());
		
		return "redirect:/fc/login.action";
	}
	
	//직원정보수정
	@RequestMapping(value="empmanagement.action",method=RequestMethod.POST)
	@ResponseBody
	public String empManagement(EmployeeVo employeeVo) {
		
		fcService.updateEmployeeByEmpNo(employeeVo);
		
		return "success";
	}
	
	//직원상태변경
	@RequestMapping(value="empact.action",method=RequestMethod.POST)
	public String empAct(EmployeeVo employeeVo) {
		
		fcService.updateEmployeeTypeByEmpNo(employeeVo);
		return"";
	}
	
}
