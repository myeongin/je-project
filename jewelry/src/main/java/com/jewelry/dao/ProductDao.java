package com.jewelry.dao;

import java.util.List;

import javax.xml.soap.Detail;

import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.orderViewVo;

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

	List<orderViewVo> selectAllOrderList(int storeNo);

	void updateDetailType(int detailNo);

	void updateMount(int detailNo, int mount);

	List<DetailVo> selectProductDetail(int productNo);

	void updateOrderViewType(int orderNo, String type);

	void insertSales(SalesVo sales);

	DetailVo findDetailBydetailNo(int detailNo);
}
