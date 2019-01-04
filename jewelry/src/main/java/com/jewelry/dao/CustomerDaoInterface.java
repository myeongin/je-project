package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.Customer;

public interface CustomerDaoInterface {


	List<Customer> selectCustomer(int from, int to, int userNo);

	void deleteCustomer(int cuNo);

	void updateCustomer(Customer customer);

	void insertCustomer(Customer customer);

	List<Customer> selectNewCustomer(String string);

	int countMM(int userNo);
	int countWW(int userNo);

	

/*	int countMM();*/
	

/*	int selectCustomerCount();*/

}
