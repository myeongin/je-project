package com.jewelry.dao;

import java.util.List;

import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;

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
}
