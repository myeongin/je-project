package com.jewelry.service;

import java.util.List;

import com.jewelry.vo.DetailVo;
import com.jewelry.vo.ProductVo;

public interface ProductService {

	void insertProduct(ProductVo productVo);
	void updateProduct(ProductVo productVo);
	void deleteProduct(int productNo);
	void insertOrder(DetailVo detailVo);
	void updateOrder(DetailVo detailVo);
	void orderDel(int orderNo);
	List<ProductVo> takeAllProduct(int userNo);
	ProductVo takeProductByProductNo(int productNo);
	

}
