package com.jewelry.dao;

import java.util.HashMap;
import java.util.List;

import javax.xml.soap.Detail;

import com.jewelry.mapper.ProductMapper;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.orderViewVo;

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
	
	//중복제품상세정보
	@Override
	public List<DetailVo> findDetail(int productNo) {
		List<DetailVo> details = productMapper.findDetail(productNo);
		return details;
	}
	
	//주문리스트
	@Override
	public List<orderViewVo> selectAllOrderList(int storeNo) {
		List<orderViewVo> views = productMapper.selectAllOrderList(storeNo);
		return views;
	}
	
	//재고등록
	@Override
	public void updateDetailType(int detailNo) {
		
		HashMap<String, Object> type = new HashMap<>();
		type.put("detailNo", detailNo);
		type.put("type","1");
		
		productMapper.updateDetailType(type);
		
	}
	
	//재고수량증가
	@Override
	public void updateMount(int detailNo, int mount) {
		
		HashMap<String, Object> mount2 = new HashMap<>();
		mount2.put("detailNo", detailNo);
		mount2.put("mount",mount);
		
		productMapper.updateMount(mount2);
	}
	
	//제품detail
	@Override
	public List<DetailVo> selectProductDetail(int productNo) {
		
		List<DetailVo> details=productMapper.selectProductDetail(productNo);
		
		return details;
	}
	
	//주문상태변경
	@Override
	public void updateOrderViewType(int orderNo,String type) {
		
		HashMap<String,Object> viewType = new HashMap<>();
		viewType.put("orderNo", orderNo);
		viewType.put("type",type);
		
		productMapper.updateOrderViewType(viewType);
		
	}
	
	//판매추가
	@Override
	public void insertSales(SalesVo sales) {
		productMapper.insertSales(sales);
		
	}
	
	//재고찾기
	@Override
	public DetailVo findDetailBydetailNo(int detailNo) {
		DetailVo detail = productMapper.findDetailBydetailNo(detailNo);
		return detail;
	}

	

}
