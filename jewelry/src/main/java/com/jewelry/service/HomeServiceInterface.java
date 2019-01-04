package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.Customer;
import com.jewelry.vo.Home;


public interface HomeServiceInterface {

	



	List<Home> takeCuList(int storeNo);
	List<Home> takeProductList(int storeNo);
	List<Home> takeAcList(int storeNo);

/*
	int countMM();
	int countWW();*/
	

}
