package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import com.jewelry.mapper.misuMapper;
import com.jewelry.vo.account;
import com.jewelry.vo.receivables;

public class misuDaoOracle implements misuDao {
	
	private misuMapper misumapper;
	public void setMisumapper(misuMapper misumapper) {
		this.misumapper = misumapper;
	}
	
	
	@Override
	public List<account> selectMisuByPage(int first, int last) {
		
		HashMap<String, Object> parmas = new HashMap<>();
		parmas.put("first", first);
		parmas.put("last", last);
		
		List<account> misus = misumapper.selectAllMisuByPage(parmas);
		
		return misus;
	}


	@Override
	public int selectMisuCount() {
		
		HashMap<String, Object> params = new HashMap<>();
		
		String recarats = "0";
		String remoneys = "0";
		params.put("recarats", recarats);
		params.put("remoneys", remoneys);
		
		int count = misumapper.selectMisuCount(params);
		
		return count;
	}

	
	@Override
	public void insertMisu(receivables misu) {
		
		misumapper.insertMisu(misu);
		
	}
	@Override
	public void uploadMisu(receivables misu) {
		
		misumapper.uploadMisu(misu);
		
	}


	@Override
	public List<account> selectAccountList() {
		
		List<account> accounts= misumapper.selectAccountList();
		return accounts;
	}


	@Override
	public account selectAccountStoreName(int accountNo) {
		
		account accounts = misumapper.selectAccountStoreName(accountNo);
		
		return accounts;
	}


	@Override
	public account selectStoreName(int storeNo) {
		account accounts = misumapper.selectStoreName(storeNo);
		return accounts;
	}


	@Override
	public List<receivables> selectAllMisu(int acno) {

		List<receivables> misus = misumapper.selectAllMisu(acno);
		return misus;
	}




	

	

	
	
}
