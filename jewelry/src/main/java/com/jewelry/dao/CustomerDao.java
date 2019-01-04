package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import com.jewelry.mapper.CustomerMapper;
import com.jewelry.vo.Customer;



public class CustomerDao implements CustomerDaoInterface{
	
	private CustomerMapper customerMapper;
	public void setCustomerMapper(CustomerMapper customerMapper) {
		this.customerMapper = customerMapper;
	}
	
	@Override  //고객등록
	public void insertCustomer(Customer customer) {
		System.out.println(customer.getCuName());
		customerMapper.insertCustomer(customer);
	}

	@Override //고객 목록 보기
	public List<Customer> selectCustomer(int from,int to, int userNo) {	
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("from", from);
		params.put("to",to);
		params.put("del",'1');
		params.put("userNo", userNo);
		
		List<Customer> customers=customerMapper.selectCustomers(params);
		
		return customers;
	}


	@Override //고객 정보 수정
	public void updateCustomer(Customer customer) {
		
		customerMapper.updateCustomer(customer);
				
	}

	@Override //고객 삭제
	public void deleteCustomer(int cuNo) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("cuNo", cuNo);
		params.put("deleted","1");
		
		customerMapper.deleteCustomer(params);
		
	}

	@Override
	public List<Customer> selectNewCustomer(String string) {
		
		List<Customer> newlist= customerMapper.selectNewCustomer(string);
		
		return newlist;
	}
	

	@Override //등록된 고객 수
	public int countMM(int userNo) {
		
		int countMM=customerMapper.selectCustomerCount(userNo);
		System.out.println(countMM);
		
		return countMM;
	}

	public int countWW(int userNo) {
		
		int countWW=customerMapper.selectCustomerCount2(userNo);
		System.out.println(countWW);
		return countWW;
	}

	
}
