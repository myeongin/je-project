package com.jewelry.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import com.jewelry.dao.FcDao;
import com.jewelry.vo.FcVo;

public class FcServiceImpl implements FcService{

	private FcDao fcDao;
	public void setFcDao(FcDao accountDao) {
		this.fcDao = accountDao;
	}

	//회원가입
	@Override
	public void registerAccount(FcVo accountVo) {
		fcDao.insertAccount(accountVo);
	}

	//로그인
	@Override
	public FcVo findAccountByIdAndPswd(FcVo accountVo) {
		
		FcVo accountVo2= fcDao.selectAccountByIdAndPswd(accountVo);
		return accountVo2;
		
	}	
	
	//모든회원
	@Override
	public List<FcVo> findAccountAll(int from,int to) {
		
		List<FcVo> accounts = fcDao.selectAccountAll(from,to);
		
		return accounts;
	}

	//회원상태변경
	@Override
	public void updateAccountTypeByuserNo(int userNo,String del) {
		
		fcDao.updateAccountTypeByuserNo(userNo,del);
		
	}
	
	//모든직원
	@Override
	public List<FcVo> findEmployeeAll(int userNo,int from,int to) {
		List<FcVo> employees = fcDao.selectEmployeeByStoreNo(userNo,from,to);
		return employees;
	}
	
	//직원등록
		@Override
		public void registerEmployee(FcVo fc) {
			fcDao.insterEmployee(fc);
		}
	
	//직원수정
	@Override
	public void updateEmployeeByEmpNo(FcVo fc) {

		fcDao.updateEmployeeByEmpNo(fc);
		
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy/MM/dd",Locale.KOREA);
		String date = simpleDate.format(new Date());
		
		if(fc.getLastDate().compareTo(date)<=0) {
			fcDao.updateAccountTypeByuserNo1(fc.getUserNo());
		}else {

			fcDao.updateAccountTypeByuserNo2(fc.getUserNo());
		}
	}
	
	//직원수
	@Override
	public int findempcount(int userNo) {
		int count = fcDao.findempcount(userNo);
		return count;
	}
	
	//회원수
	@Override
	public int findregcount() {
		int count = fcDao.findregcount();
		return count;
	}
	
}
