package com.jewelry.dao;

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

public interface ProductDao {

	void insertProduct(ProductVo productVo);

	void insetProductImg(ProductImgVo img);

	void updateProduct(ProductVo productVo);

	void updateProductImg(ProductImgVo img);

	void deleteProduct(int productNo);

	void insertOrder(OrderVo order);

	void insertDetail(DetailVo detailVo);

	void updateDetail(DetailVo detailVo);

	void updateOrder(OrderVo order);

	void orderDel(int orderNo);

	List<ProductVo> selectAllProduct(int userNo);

	List<ProductImgVo> selectAllImg(int productNo);

	ProductVo selectProductByProductNo(int productNo);

	List<DetailVo> findDetail(int productNo);

	List<orderViewVo> selectAllOrderList(int storeNo, int from, int to);

	void updateDetailType(int detailNo);

	void updateMount(int detailNo, int mount);

	List<DetailVo> selectProductDetail(int productNo);

	void updateOrderViewType(int orderNo, String type);

	void insertSales(SalesVo sales);

	DetailVo findDetailBydetailNo(int detailNo);

	void updateOrderViewTypeAndDate(int orderNo, String type);

	List<salesViewVo> findSalesView(int storeNo, int from, int to);

	void updateSales(int salesNo, int salesPrice);

	List<account> findAccountByStoreNo(int storeNo);

	List<Customer> selectAllCustomer(int storeNo);

	void insertAllSales(SalesVo sales);

	void insertOrderNOCuNo(OrderVo order);

	int findOrdercount(int storeNo);

	List<ProductVo> selectAllProductBypager(int storeNo, int from, int to);

	int findProductcount(int storeNo);

	int findSalescount(int storeNo);

	Double takeHarryByAcno(int acno);

	int takNewPrice(int storeNo);

	List<ProductVo> selectProductandDetail(int storeNo, int from, int to);

	int findStockcount(int storeNo);

	void updateStock(int detailNo, int mount);

	void deleteStock(int detailNo);

	List<Integer> takeProfit(int storeNo, String start, String end);

	List<salesViewVo> searchSalesView(int storeNo, int from, int to, String start, String end);
}
