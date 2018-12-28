package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.receivables;

public interface misuService {

	void misuWrite(receivables misu);

	void misuRewrite(receivables misu);

	List<receivables> findAllMisuByPage(int from, int to);

	int findMisuCount();

}


