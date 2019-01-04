package com.jewelry.service;

import java.util.List;

import com.jewelry.dao.CustomerDaoInterface;
import com.jewelry.vo.Customer;




public class CustomerService implements CustomerServiceInterface{

	private CustomerDaoInterface customerDao;
	
	public void setCustomerDao(CustomerDaoInterface CustomerDao) {
		this.customerDao = CustomerDao;
	}

	
	@Override
	public void insertCustomer(Customer customer) {

		customerDao.insertCustomer(customer);
		
	}
	
	@Override
	public List<Customer> takeList(int from,int to, int userNo) {
		
		List<Customer> customers = customerDao.selectCustomer(from,to, userNo);


		return customers;
	}


	@Override
	public void updateCustomer(Customer customer) {
		
		customerDao.updateCustomer(customer);
		
	}

	@Override
	public void deleteCustomer(int cuNo) {
		
		customerDao.deleteCustomer(cuNo);
		
	}




	public List<Customer> takeNewCustomers(String string) {
		List<Customer> newcustomers = customerDao.selectNewCustomer(string);
		return null;
	}


	public int countMM(int userNo) {
		int countMM = customerDao.countMM(userNo);

		return countMM;
	}
	
	public int countWW(int userNo) {
		int countWW = customerDao.countWW(userNo);

		return countWW;
	}



/*	public int findmoviecount() {
		int customerCount=customerDao.selectCustomerCount();
		
		return customerCount;
	}*/

	
}
