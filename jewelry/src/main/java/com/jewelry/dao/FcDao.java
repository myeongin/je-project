package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.FcVo;

public interface FcDao {

	void insertAccount(FcVo accountVo);

	FcVo selectAccountByIdAndPswd(FcVo accountVo);

	void insterEmployee(FcVo fc);

	List<FcVo> selectEmployeeByStoreNo(int userNo, int from, int to);

	List<FcVo> selectAccountAll(int from, int to);

	void updateEmployeeByEmpNo(FcVo employeeVo);

	int findempcount(int userNo);

	int findregcount();

	void updateAccountTypeByuserNo(int userNo, String del);

	void updateAccountTypeByuserNo1(int userNo);

	void updateAccountTypeByuserNo2(int userNo);
	
	
}
