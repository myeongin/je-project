package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.FcVo;

public interface FcDao {

	void insertAccount(FcVo accountVo);

	FcVo selectAccountByIdAndPswd(FcVo accountVo);

	void insterEmployee(FcVo fc);

	List<FcVo> selectEmployeeByStoreNo(int userNo);

	List<FcVo> selectAccountAll();

	void updateAccountTypeByuserNo1(int userNo);

	void updateAccountTypeByuserNo2(int userNo);

	void updateEmployeeByEmpNo(FcVo employeeVo);

}
