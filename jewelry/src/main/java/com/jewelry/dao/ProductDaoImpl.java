package com.jewelry.dao;

import java.util.List;

import com.jewelry.mapper.ProductMapper;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;

public class ProductDaoImpl implements ProductDao{
	
	private ProductMapper productMapper;
	public void setProductMapper(ProductMapper productMapper) {
		this.productMapper = productMapper;
	}
	
	//제품등록
	@Override
	public void insertProduct(ProductVo productVo) {
		productMapper.insertProduct(productVo);		
	}
	
	//제품이미지 등록
	@Override
	public void insetProductImg(ProductImgVo img) {
		productMapper.insetProductImg(img);
	}
	
	//제품수정
	@Override
	public void updateProduct(ProductVo productVo) {
		productMapper.updateProduct(productVo);
	}
	
	//제품이미지수정
	@Override
	public void updateProductImg(ProductImgVo img) {
		productMapper.updateProductImg(img);
	}
	
	//제품삭제
	@Override
	public void deleteProduct(int productNo) {
		productMapper.deleteProduct(productNo);
	}
	
	//제품상세등록
	@Override
	public void insertDetail(DetailVo detailVo) {
		productMapper.insertDetail(detailVo);
	}
	
	//주문등록
	@Override
	public void insertOrder(OrderVo order) {
		productMapper.insertOrder(order);
	}
	
	//제품상세수정
	@Override
	public void updateDetail(DetailVo detailVo) {
		productMapper.updateDetail(detailVo);
	}
	
	//주문수정
	@Override
	public void updateOrder(OrderVo order) {
		productMapper.updateOrder(order);
	}
	
	//주문취소
	@Override
	public void orderDel(int orderNo) {
		productMapper.orderDel(orderNo);
	}
	
	
	//제품
	@Override
	public List<ProductVo> selectAllProduct(int userNo) {
		List<ProductVo> productVo=productMapper.selectAllProduct(userNo);
		return productVo;
	}
	
	//제품이미지
	@Override
	public List<ProductImgVo> selectAllImg(int productNo) {
		List<ProductImgVo> imgs=productMapper.selectAllImg(productNo);
		return imgs;
	}
	
	//제품정보
	@Override
	public ProductVo selectProductByProductNo(int productNo) {
		ProductVo product = productMapper.selectProductByProductNo(productNo);
		return product;
	}
	

}
