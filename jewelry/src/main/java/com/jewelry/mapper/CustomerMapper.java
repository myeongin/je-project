package com.jewelry.mapper;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.Customer;




public interface CustomerMapper {
	
	void insertCustomer(Customer customer);
	List<Customer> selectCustomers(HashMap<String,Object> params);

	void updateCustomer(Customer customer);
	void deleteCustomer(HashMap<String, Object> params);
/*	int selectCustomerCount(e);*/
	List<Customer> selectNewCustomer(String string);

}
