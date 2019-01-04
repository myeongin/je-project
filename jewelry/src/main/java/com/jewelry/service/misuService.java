package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.account;
import com.jewelry.vo.receivables;

public interface misuService {

	void misuWrite(receivables misu);

	void misuRewrite(receivables misu);

	List<account> findAllMisuByPage(int from, int to);

	int findMisuCount();

	List<account> accountList();

	account accountStoreName(int accountNo);

	account storeStoreName(int storeNo);

}


