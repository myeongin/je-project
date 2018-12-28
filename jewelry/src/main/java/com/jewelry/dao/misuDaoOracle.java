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
	public List<receivables> selectMisuByPage(int first, int last) {
		
		HashMap<String, Object> parmas = new HashMap<>();
		parmas.put("first", first);
		parmas.put("last", last);
		
		List<receivables> misus = misumapper.selectAllMisuByPage(parmas);
		
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
	public List<account> selectAccountList(int reno) {
		
		List<account> accounts = misumapper.selectAccountList(reno);
		return accounts;
	}


	

	

	
	
}
