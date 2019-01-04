package com.jewelry.mapper;

import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.account;
import com.jewelry.vo.receivables;

public interface misuMapper {

	void insertMisu(receivables misu);

	void uploadMisu(receivables misu);

	List<account> selectAllMisuByPage(HashMap<String, Object> parmas);

	int selectMisuCount(String recarats, String remoneys);

	List<account> selectAccountList();

	int selectMisuCount(HashMap<String, Object> params);

	account selectAccountStoreName(int accountNo);

	account selectStoreName(int storeNo);

	List<receivables> selectAllMisu(int acno);

}
