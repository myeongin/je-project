package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.FcVo;
import com.jewelry.vo.EmployeeVo;

public interface FcService {

	void registerAccount(FcVo accountVo);

	FcVo findAccountByIdAndPswd(FcVo accountVo);

	void registerEmployee(EmployeeVo employeeVo);

	EmployeeVo findEmployeeByIdAndPswd(EmployeeVo employeeVo);

	List<FcVo> findAccountAll();

	void updateAccountByuserNo(FcVo accountVo);

	void updateAccountTypeByuserNo(FcVo accountVo);

	void updateEmployeeByEmpNo(EmployeeVo employeeVo);

	void updateEmployeeTypeByEmpNo(EmployeeVo employeeVo);

	List<EmployeeVo> findEmployeeAll(int storeNo);
	
	
	
}
