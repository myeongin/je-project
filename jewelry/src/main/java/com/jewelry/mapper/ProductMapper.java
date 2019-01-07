package com.jewelry.mapper;


import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.Customer;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.account;
import com.jewelry.vo.orderViewVo;
import com.jewelry.vo.salesViewVo;

public interface ProductMapper {
	void insertProduct(ProductVo productVo);
	void insetProductImg(ProductImgVo productImgVo);
	void updateProduct(ProductVo productVo);
	void updateProductImg(ProductImgVo productImgVo);
	void deleteProduct(HashMap<String, Object> del);
	void insertDetail(DetailVo detailVo);
	void insertOrder(OrderVo order);
	void insertOrderNOCuNo(OrderVo order);
	void updateDetail(DetailVo detailVo);
	void updateOrder(OrderVo order);
	void orderDel(int orderNo);
	List<ProductVo> selectAllProduct(int userNo);
	List<ProductImgVo> selectAllImg(int productNo);
	ProductVo selectProductByProductNo(int productNo);
	List<DetailVo> findDetail(int productNo);
	List<orderViewVo> selectAllOrderList(HashMap<String, Object> type);
	void updateDetailType(HashMap<String, Object> type);
	void updateMount(HashMap<String, Object> mount);
	List<DetailVo> selectProductDetail(HashMap<String, Object> type);
	void updateOrderViewType(HashMap<String, Object> type);
	void updateOrderViewTypeAndDate(HashMap<String, Object> type);
	void insertSales(SalesVo sales);
	DetailVo findDetailBydetailNo (int detailNo);
	List<salesViewVo> findSalesView (HashMap<String, Object> sales);
	void updateSales(HashMap<String, Object> sales);
	List<account> findAccountByStoreNo(int storeNo);
	List<Customer> selectAllCustomer(int storeNo);
	void insertAllSales(SalesVo sales);
	int findOrdercount(int storeNo);
	List<ProductVo> selectAllProductBypager(HashMap<String, Object> type);
	int findProductcount(int storeNo);
	int findSalescount(int storeNo);
	Double takeHarryByAcno(int acno);
	int takNewPrice(HashMap<String, Object> type);
	List<ProductVo> selectProductandDetail(HashMap<String, Object> type);
	int findStockcount(HashMap<String, Object> type);
	void updateStock(HashMap<String, Object> type);
	void deleteStock(HashMap<String, Object> del);
	int takeProfit(HashMap<String, Object> profit);
	int takeRevenue(HashMap<String, Object> profit);
	List<salesViewVo> searchSalesView(HashMap<String, Object> sal);
}
