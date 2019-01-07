package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import com.jewelry.mapper.FcMapper;
import com.jewelry.vo.FcVo;

public class FcDaoImpl implements FcDao{
	
	private FcMapper fcMapper;
	public void setFcMapper(FcMapper accountMapper) {
		this.fcMapper = accountMapper;
	}
	
	//회원가입
	@Override
	public void insertAccount(FcVo accountVo) {
		fcMapper.insertAccount(accountVo);
	}
	
	//로그인
	@Override
	public FcVo selectAccountByIdAndPswd(FcVo accountVo) {
		FcVo accountVo2=fcMapper.selectAccountByIdAndPswd(accountVo);
		return accountVo2;
	}
	
	//직원정보
	@Override
	public List<FcVo> selectEmployeeByStoreNo(int userNo,int from,int to) {
		
		HashMap<String, Object> user = new HashMap<>();
		user.put("userNo", userNo);
		user.put("fc","fc");
		user.put("admin", "admin");
		user.put("del", "1");
		user.put("from",from);
		user.put("to",to);
		
		List<FcVo> employees = fcMapper.selectEmployeeByStoreNo(user);
		return employees;
	}
	
	//직원
	@Override
	public void insterEmployee(FcVo fc) {
		fcMapper.insterEmployee(fc);
	}
	
	//계정정보
	@Override
	public List<FcVo> selectAccountAll(int from,int to) {
		HashMap<String, Object> reg = new HashMap<>();
		reg.put("user", "fc");
		reg.put("from",from);
		reg.put("to",to);
		
		List<FcVo> accounts=fcMapper.selectAccountAll(reg);
		return accounts;
	}
	
	//계정상태
	@Override
	public void updateAccountTypeByuserNo1(int userNo) {
		
		HashMap<String, Object> type = new HashMap<>();
		type.put("type", "1");
		type.put("userNo",userNo);
		
		fcMapper.updateAccountTypeByuserNo(type);		
	}
	
	@Override
	public void updateAccountTypeByuserNo2(int userNo) {
		
		HashMap<String, Object> type = new HashMap<>();
		type.put("type", "0");
		type.put("userNo",userNo);
		
		fcMapper.updateAccountTypeByuserNo(type);		
	}
	
	//직원정보수정
	@Override
	public void updateEmployeeByEmpNo(FcVo fc) {

		fcMapper.updateEmployeeByEmpNo(fc);

	}


	@Override
	public int findempcount(int userNo) {
		
		HashMap<String, Object> user = new HashMap<>();
		user.put("userNo", userNo);
		user.put("fc","fc");
		user.put("admin", "admin");
		user.put("del", "1");

		int count=fcMapper.findempcount(user);
		
		return count;
	}
	
	//회원수
	@Override
	public int findregcount() {
		
		String user = "fc";
		int count = fcMapper.findregcount(user);
		
		return count;
	}

	@Override
	public void updateAccountTypeByuserNo(int userNo, String del) {
		
		HashMap<String, Object> type = new HashMap<>();
		type.put("type", del);
		type.put("userNo",userNo);
		
		fcMapper.updateAccountTypeByuserNo(type);
		
	}
	
}
