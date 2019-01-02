package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.DetailVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.orderViewVo;

public interface ProductService {

	void insertProduct(ProductVo productVo);
	void updateProduct(ProductVo productVo);
	void deleteProduct(int productNo);
	void insertOrder(DetailVo detailVo);
	void updateOrder(DetailVo detailVo);
	void orderDel(int orderNo);
	List<ProductVo> takeAllProduct(int userNo);
	ProductVo takeProductByProductNo(int productNo);
	List<orderViewVo> selectAllOrderList(int storeNo);
	void insertStock(DetailVo detailVo);
	List<ProductVo> takeAllStockList(int storeNo);
	void changeOrderViewType(int orderNo, String type);
	void insertSales(SalesVo sales);
	void updateStockMount(int detailNo, int salesCount);
	

}
