package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.account;

public interface accountService {

	List<account> findAllAccountByPage(int from, int to, int storeNo);

	int findAccountCount();

	void accountWrite(account account);

	void accountRewrite(account account);

	void accountDelete(int acno);

	account findAccountByAccountNo(int acno);

	account accountAll(int accountNo);


}
