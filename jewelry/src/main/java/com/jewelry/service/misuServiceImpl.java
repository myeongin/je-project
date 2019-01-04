package com.jewelry.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.jewelry.dao.misuDao;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.account;
import com.jewelry.vo.receivables;

public class misuServiceImpl implements misuService {
	
	@Autowired
	@Qualifier("misuDao")
	private misuDao misudao;
	public void setMisudao(misuDao misudao) {
		this.misudao = misudao;
	}
	
	@Override
	public void misuWrite(receivables misu) {
		
		misudao.insertMisu(misu);
		
		
	}
	@Override
	public void misuRewrite(receivables misu) {
		
		misudao.uploadMisu(misu);
		
	}
	@Override
	public List<account> findAllMisuByPage(int from, int to) {
		
		List<account> accounts = misudao.selectMisuByPage(from, to);
		
		
		return accounts;
	}
	
	@Override
	public int findMisuCount() {
		
		int count = misudao.selectMisuCount();
		return count;
	}

	@Override
	public List<account> accountList() {
		
		List<account> accounts = misudao.selectAccountList();
		return accounts;
	}

	@Override
	public account accountStoreName(int accountNo) {
		
		account accounts = misudao.selectAccountStoreName(accountNo);
		
		return accounts;
	}

	@Override
	public account storeStoreName(int storeNo) {
		
		account accounts = misudao.selectStoreName(storeNo);
		return accounts;
	}
	

}
