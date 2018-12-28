package com.jewelry.mapper;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.account;

public interface accountMapper {

	int selectAccountCount(String acdel);

	List<account> selectAllAccountByPage(HashMap<String, Object> parmas);

	void insertAccount(account account);

	void uploadAccount(account account);

	void deleteAccount(HashMap<String, Object> params);

	account selectAccountByAccountNo(int acno);

}
