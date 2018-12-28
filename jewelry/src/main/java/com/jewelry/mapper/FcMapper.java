package com.jewelry.mapper;

import java.util.List;

import com.jewelry.vo.FcVo;
import com.jewelry.vo.EmployeeVo;

public interface FcMapper {
	void insertAccount(FcVo accountVo);
	FcVo selectAccountByIdAndPswd(FcVo accountVo);
	void insterEmployee(EmployeeVo employeeVo);
	EmployeeVo	selectEmployeeByIdAndPswd(EmployeeVo employeeVo);
	List<EmployeeVo> selectEmployeeByStoreNo(int userNo);
	List<FcVo> selectAccountAll(String user);
	void updateAccountByuserNo(FcVo accountVo);
	void updateAccountTypeByuserNo1(int userNo);
	void updateAccountTypeByuserNo2(int userNo);
	void updateEmployeeByEmpNo(EmployeeVo employeeVo);
	void updateEmployeeTypeByEmpNo1(int emNo);
	void updateEmployeeTypeByEmpNo2(int emNo);
}
