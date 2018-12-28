package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.jewelry.mapper.accountMapper;
import com.jewelry.vo.account;

public class accountDaoOracle implements accountDao {
	
	private accountMapper accountmapper;
	public void setAccountmapper(accountMapper accountmapper) {
		this.accountmapper = accountmapper;
	}
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public List<account> selectAccountByPage(int first, int last) {
		
		HashMap<String, Object> parmas = new HashMap<>();
		parmas.put("first", first);
		parmas.put("last", last);
		List<account> accounts = accountmapper.selectAllAccountByPage(parmas);
		
		return accounts;
	}
	@Override
	public int selectAccountCount() {
		
		String acdel = "1";
		int count = accountmapper.selectAccountCount(acdel);
		
		return count;
	}
	@Override
	public void insertAccount(account account) {
		
		accountmapper.insertAccount(account);
		
	}
	@Override
	public void uploadAccount(account account) {
		
		accountmapper.uploadAccount(account);
	}
	@Override
	public void deleteAccount(int acno) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("acdelete", "1");
		params.put("acno", acno);
		accountmapper.deleteAccount(params);
		
	}
	@Override
	public account selectAccountByAccountNo(int acno) {
		
		account account = accountmapper.selectAccountByAccountNo(acno);
		
		return account;
	}
	
	
	

}
