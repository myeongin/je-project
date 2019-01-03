package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.account;
import com.jewelry.vo.receivables;

public interface misuDao {

	void insertMisu(receivables misu);

	void uploadMisu(receivables misu);

	List<account> selectMisuByPage(int first, int last);

	int selectMisuCount();

	List<account> selectAccountList();

	account selectAccountStoreName(int accountNo);

	account selectStoreName(int storeNo);

	List<receivables> selectAllMisu(int acno);

}
