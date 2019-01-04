package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.FcVo;

public interface FcService {

	void registerAccount(FcVo accountVo);

	FcVo findAccountByIdAndPswd(FcVo accountVo);

	void registerEmployee(FcVo fc);

	List<FcVo> findAccountAll();

	void updateAccountTypeByuserNo(FcVo accountVo);

	void updateEmployeeByEmpNo(FcVo fc);

	List<FcVo> findEmployeeAll(int storeNo, int from, int to);

	int findProductcount(int userNo);	
	
}
