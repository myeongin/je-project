package com.jewelry.mapper;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.FcVo;

public interface FcMapper {
	void insertAccount(FcVo accountVo);
	FcVo selectAccountByIdAndPswd(FcVo accountVo);
	void insterEmployee(FcVo fc);
	FcVo selectEmployeeByIdAndPswd(FcVo fc);
	List<FcVo> selectEmployeeByStoreNo(HashMap<String, Object> user);
	List<FcVo> selectAccountAll(HashMap<String, Object> reg);
	void updateEmployeeByEmpNo(FcVo fc);
	void updateAccountTypeByuserNo(HashMap<String, Object> type);
	int findempcount(HashMap<String, Object> user);
	int findregcount(String user);
}
