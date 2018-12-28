package com.jewelry.service;

import java.util.List;

import com.jewelry.dao.FcDao;
import com.jewelry.vo.FcVo;
import com.jewelry.vo.EmployeeVo;

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

	//직원등록
	@Override
	public void registerEmployee(EmployeeVo employeeVo) {
		fcDao.insterEmployee(employeeVo);
	}
	
	//직원 로그인
	@Override
	public EmployeeVo findEmployeeByIdAndPswd(EmployeeVo employeeVo) {
		
		EmployeeVo employeeVo2 = fcDao.selectEmployeeByIdAndPswd(employeeVo);
		
		return employeeVo2;
	}
	
	//모든회원
	@Override
	public List<FcVo> findAccountAll() {
		
		List<FcVo> accounts = fcDao.selectAccountAll();
		
		return accounts;
	}
	
	//회원정보수정
	@Override
	public void updateAccountByuserNo(FcVo accountVo) {
		
		fcDao.updateAccountByuserNo(accountVo);
		
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
	
	//직원수정
	@Override
	public void updateEmployeeByEmpNo(EmployeeVo employeeVo) {
		
		fcDao.updateEmployeeByEmpNo(employeeVo);
		
	}
	
	//직원상태변경
	@Override
	public void updateEmployeeTypeByEmpNo(EmployeeVo employeeVo) {
		
		if(employeeVo.getEmDel()) {
			fcDao.updateEmployeeTypeByEmpNo1(employeeVo.getEmNo());
		}else {
			fcDao.updateEmployeeTypeByEmpNo2(employeeVo.getEmNo());
		}
		
	}

	@Override
	public List<EmployeeVo> findEmployeeAll(int userNo) {
		List<EmployeeVo> employees = fcDao.selectEmployeeByStoreNo(userNo);
		return employees;
	}

	
}
