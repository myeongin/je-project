package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.Customer;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.PriceVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.account;
import com.jewelry.vo.orderViewVo;
import com.jewelry.vo.salesViewVo;

public interface ProductService {

	void insertProduct(ProductVo productVo);
	void updateProduct(ProductVo productVo);
	void deleteProduct(int productNo);
	void insertOrder(DetailVo detailVo);
	void updateOrder(DetailVo detailVo);
	void orderDel(int orderNo);
	List<ProductVo> takeAllProduct(int userNo);
	ProductVo takeProductByProductNo(int productNo);
	List<orderViewVo> selectAllOrderList(int storeNo, int from, int to);
	void insertStock(DetailVo detailVo);
	List<ProductVo> takeAllStockList(int storeNo);
	void changeOrderViewType(int orderNo, String type);
	void insertSales(SalesVo sales);
	void updateStockMount(int detailNo, int salesCount);
	List<salesViewVo> findSalesView(int storeNo, int from, int to);
	void updateSales(int salesNo, int salesPrice);
	List<account> findAccountByStoreNo(int storeNo);
	List<Customer> takeAllCustomer(int storeNo);
	void insertAllSales(SalesVo sales);
	int findOrdercount(int storeNo);
	List<ProductVo> takeAllProductBypager(int storeNo, int from, int to);
	int findProductcount(int storeNo);
	int findSalescount(int storeNo);
	Double takeHarryByAcno(int acno);
	int takeNewPrice(int storeNo);
	
}
