package com.jewelry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.jewelry.dao.misuDao;
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
	public List<receivables> findAllMisuByPage(int from, int to) {
		
		List<receivables> misus = misudao.selectMisuByPage(from, to);
		
		for (receivables misu:misus) {
			misu.setAccountlist(misudao.selectAccountList(misu.getReno()));
		}
		return misus;
	}
	
	@Override
	public int findMisuCount() {
		
		int count = misudao.selectMisuCount();
		return count;
	}
	

}
