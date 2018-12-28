package com.jewelry.dao;

import java.util.List;

import com.jewelry.mapper.FcMapper;
import com.jewelry.vo.FcVo;
import com.jewelry.vo.EmployeeVo;

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
	public List<EmployeeVo> selectEmployeeByStoreNo(int userNo) {
		List<EmployeeVo> employees = fcMapper.selectEmployeeByStoreNo(userNo);
		return employees;
	}
	
	//직원
	@Override
	public void insterEmployee(EmployeeVo employeeVo) {
		fcMapper.insterEmployee(employeeVo);
	}
	
	//직원로그인
	@Override
	public EmployeeVo selectEmployeeByIdAndPswd(EmployeeVo employeeVo) {
		EmployeeVo employeeVo2=fcMapper.selectEmployeeByIdAndPswd(employeeVo);
		return employeeVo2;
	}
	
	//계정관리
	@Override
	public List<FcVo> selectAccountAll() {
		String user = "user";
		List<FcVo> accounts=fcMapper.selectAccountAll(user);
		return accounts;
	}
	
	//계정수정
	@Override
	public void updateAccountByuserNo(FcVo accoutVo) {
		fcMapper.updateAccountByuserNo(accoutVo);		
	}
	
	//계정상태
	@Override
	public void updateAccountTypeByuserNo1(int userNo) {
		fcMapper.updateAccountTypeByuserNo1(userNo);		
	}
	
	@Override
	public void updateAccountTypeByuserNo2(int userNo) {
		fcMapper.updateAccountTypeByuserNo2(userNo);		
	}
	
	//직원정보수정
	@Override
	public void updateEmployeeByEmpNo(EmployeeVo employeeVo) {
		fcMapper.updateEmployeeByEmpNo(employeeVo);
		
	}
	
	//직원상태
	@Override
	public void updateEmployeeTypeByEmpNo1(int emNo) {
		fcMapper.updateEmployeeTypeByEmpNo1(emNo);
		
	}

	@Override
	public void updateEmployeeTypeByEmpNo2(int emNo) {
		fcMapper.updateEmployeeTypeByEmpNo2(emNo);
		
	}
	
	
}
