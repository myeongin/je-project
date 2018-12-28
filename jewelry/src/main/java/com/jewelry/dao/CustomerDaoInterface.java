package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.Customer;

public interface CustomerDaoInterface {


	List<Customer> selectCustomer(int from, int to);

	void deleteCustomer(int customerNo);

	void updateCustomer(Customer customer);

	void insertCustomer(Customer customer);

	List<Customer> selectNewCustomer(String string);
	

/*	int selectCustomerCount();*/

}
