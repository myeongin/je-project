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
	public List<FcVo> findAccountAll() {
		
		List<FcVo> accounts = fcDao.selectAccountAll();
		
		return accounts;
	}

	//회원상태변경
	@Override
	public void updateAccountTypeByuserNo(FcVo accountVo) {
		
		if(accountVo.getUserDel()) {
			fcDao.updateAccountTypeByuserNo1(accountVo.getUserNo());
		}else {
			fcDao.updateAccountTypeByuserNo2(accountVo.getUserNo());
		}
		
	}
	
	//모든직원
	@Override
	public List<FcVo> findEmployeeAll(int userNo) {
		List<FcVo> employees = fcDao.selectEmployeeByStoreNo(userNo);
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
	




	
}
