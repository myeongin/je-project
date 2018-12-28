package com.jewelry.service;

import java.util.List;

import com.jewelry.dao.ProductDao;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;

public class ProdcutServiceImpl implements ProductService{
	
	private ProductDao productDao;
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	//제품등록
	@Override
	public void insertProduct(ProductVo productVo) {
		productDao.insertProduct(productVo);
		
		for(ProductImgVo img:productVo.getImgs()) {
			img.setProductNo(productVo.getProductNo());
			productDao.insetProductImg(img);
		}
	}
	
	//제품수정
	@Override
	public void updateProduct(ProductVo productVo) {
		productDao.updateProduct(productVo);
		
		for(ProductImgVo img:productVo.getImgs()) {
			productDao.updateProductImg(img);
		}
	}
	
	//제품삭제
	@Override
	public void deleteProduct(int productNo) {
		productDao.deleteProduct(productNo);
		
	}
	
	//주문등록
	@Override
	public void insertOrder(DetailVo detailVo) {
		productDao.insertDetail(detailVo);
		
		for(OrderVo order:detailVo.getOrders()) {
			order.setDetailNo(detailVo.getDetailNo());
			productDao.insertOrder(order);
		}
	}
	
	//주문수정
	@Override
	public void updateOrder(DetailVo detailVo) {
		productDao.updateDetail(detailVo);
		
		for(OrderVo order:detailVo.getOrders()) {
			productDao.updateOrder(order);
		}
			
	}
	
	//주문취소
	@Override
	public void orderDel(int orderNo) {
		productDao.orderDel(orderNo);
	}
	

	
	//재품
	@Override
	public List<ProductVo> takeAllProduct(int userNo) {
		
		List<ProductVo> products = productDao.selectAllProduct(userNo);
		
		for(ProductVo product:products) {			
			product.setImgs(productDao.selectAllImg(product.getProductNo()));
		}
		
		return products;
	}
	
	//재품정보
	@Override
	public ProductVo takeProductByProductNo(int productNo) {
		ProductVo product = productDao.selectProductByProductNo(productNo);
		product.setImgs(productDao.selectAllImg(productNo));
		return product;
	}


	
}