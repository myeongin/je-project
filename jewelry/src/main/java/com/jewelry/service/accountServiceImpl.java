package com.jewelry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.jewelry.dao.accountDao;
import com.jewelry.vo.account;

public class accountServiceImpl implements accountService {
	
	@Autowired
	@Qualifier("accountDao")
	private accountDao accountdao;
	public void setAccountdao(accountDao accountdao) {
		this.accountdao = accountdao;
	}

	@Override
	public List<account> findAllAccountByPage(int from, int to) {
		
		List<account> accounts = accountdao.selectAccountByPage(from, to);
		
		return accounts;
	}

	@Override
	public int findAccountCount() {
		
		int count = accountdao.selectAccountCount();
		return count;
	}

	@Override
	public void accountWrite(account account) {
		
		accountdao.insertAccount(account);
		
	}

	@Override
	public void accountRewrite(account account) {
		
		accountdao.uploadAccount(account);
		
	}

	@Override
	public void accountDelete(int acno) {
		
		accountdao.deleteAccount(acno);
		
	}

	@Override
	public account findAccountByAccountNo(int acno) {
		
		account account = accountdao.selectAccountByAccountNo(acno);
		
		if (account != null) {
			
		}
		
		return account;
	
	}

	@Override
	public account accountAll(int accountNo) {
		
		account accounts = accountdao.selectAccountAll(accountNo);
		
		return accounts;
	}
	

}
