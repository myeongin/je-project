package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.account;

public interface accountDao {

	List<account> selectAccountByPage(int first, int last);

	int selectAccountCount();

	void insertAccount(account account);

	void uploadAccount(account account);

	void deleteAccount(int acno);

	account selectAccountByAccountNo(int acno);

	account selectAccountAll(int storeNo);

}
