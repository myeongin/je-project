package com.jewelry.mapper;


import java.util.List;

import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;

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
	

}
