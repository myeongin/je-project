package com.jewelry.mapper;


import java.util.HashMap;
import java.util.List;

import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.orderViewVo;

public interface ProductMapper {
	void insertProduct(ProductVo productVo);
	void insetProductImg(ProductImgVo productImgVo);
	void updateProduct(ProductVo productVo);
	void updateProductImg(ProductImgVo productImgVo);
	void deleteProduct(int productNo);
	void insertDetail(DetailVo detailVo);
	void insertOrder(OrderVo order);
	void updateDetail(DetailVo detailVo);
	void updateOrder(OrderVo order);
	void orderDel(int orderNo);
	List<ProductVo> selectAllProduct(int userNo);
	List<ProductImgVo> selectAllImg(int productNo);
	ProductVo selectProductByProductNo(int productNo);
	List<DetailVo> findDetail(int productNo);
	List<orderViewVo> selectAllOrderList(int storeNo);
	void updateDetailType(HashMap<String, Object> type);
	void updateMount(HashMap<String, Object> mount);
	List<DetailVo> selectProductDetail(int productNo);
	void updateOrderViewType(HashMap<String, Object> type);	
	void insertSales(SalesVo sales);
	DetailVo findDetailBydetailNo (int detailNo);
}
