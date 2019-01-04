package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.Customer;


public interface CustomerServiceInterface {

	

	List<Customer> takeList(int from, int to, int userNo);
	List<Customer> takeNewCustomers(String string);


	void deleteCustomer(int cuNo);

	void updateCustomer(Customer customer);

	void insertCustomer(Customer customer);

	int countMM();
	int countWW();


	

}
