package com.jewelry.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jewelry.service.CustomerService;

import com.jewelry.vo.Customer;






@Controller
@RequestMapping("/customer/")
public class CustomerController {
	
	   @Autowired
		@Qualifier("customerService")
		private CustomerService customerService;
	
	@RequestMapping(value="customer.action",method=RequestMethod.GET)
	public String listCustomer(@RequestParam(value="pageno",required = false,defaultValue ="1")int pageno,Model model) {
		
		int pagesize=8;
		int from=(pageno-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "customer.action";
		
		List<Customer> customers=customerService.takeList(from,to);
/*		int customerCount = customerService.findmoviecount();*/
//		System.out.println(customers.get(0).getCustomerName());

/*		ThePager pager = new ThePager(customerCount, pageno, pagesize, pagersize, linkUrl);
		
		model.addAttribute("customers",customers);s
		model.addAttribute("pager", pager);
		model.addAttribute("pageNo",pageno);
		*/
		
		model.addAttribute("customers", customers);
		
		return "customer/customer";
	}	
	
	@RequestMapping(value="insertCustomer.action",method=RequestMethod.POST)
/*	@ResponseBody*/
	public String insertCustomer(Customer customer) {
		
		customerService.insertCustomer(customer);
		
		return "redirect:/customer/customer.action";

	}


	@RequestMapping(value="customerDelete.action",method=RequestMethod.GET)
	public String customerDelete(int cuNo) {
		
		customerService.deleteCustomer(cuNo);
		
		return "redirect:/customer/customer.action";
	}
	
	@RequestMapping(value="customerUpdate.action",method=RequestMethod.POST)
	public String customerUpdate(int cuNo,Customer customer,Model model) {
		
		customerService.updateCustomer(customer);
		//System.out.println(customer.getCustomerName());
		//model.addAttribute("customerNo", customerNo);
		return "redirect:customer.action";
	}
	
	@RequestMapping(value="customer2.action",method=RequestMethod.GET)
	public String customer2(@RequestParam(value="pageno",required = false,defaultValue ="1")int pageno,Model model) {
		
		List<Customer> newcusotmer1 =customerService.takeNewCustomers("1");
		List<Customer> newcusotmer2 =customerService.takeNewCustomers("2");
		List<Customer> newcusotmer3 =customerService.takeNewCustomers("3");
		
		model.addAttribute("newlist1", newcusotmer1);
		int pagesize=8;
		int from=(pageno-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "customer.action";
		List<Customer> customers=customerService.takeList(from,to);
		
/*		int countMM = customerService.countMM();*/
		model.addAttribute("customers", customers);
/*		model.addAttribute("newlist2", newcusotmer2);
		model.addAttribute("newlist3", newcusotmer3);
*/
		return "customer/customerMain";
	}
	
	
}
