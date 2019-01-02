package com.jewelry.service;

import java.util.List;

import javax.xml.soap.Detail;

import com.jewelry.dao.ProductDao;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.orderViewVo;

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
		
		List<DetailVo> details=productDao.findDetail(detailVo.getProductNo());
		int detailNo = 0;
		
		for(DetailVo detail:details) {			
			if(
				detail.getDetailColor().equals(detailVo.getDetailColor())&&
				detail.getDetailCarat().equals(detailVo.getDetailCarat())&&
				detail.getDetailGold().equals(detailVo.getDetailGold())&&
				detail.getShape().equals(detailVo.getShape())&&
				detail.getDetailSize().equals(detailVo.getDetailSize())
			   ){				
				detailNo=detail.getDetailNo();
				break;
			}					
		}
		
		if(detailNo == 0) {
			productDao.insertDetail(detailVo);
			detailNo = detailVo.getDetailNo();
		}
		
		for(OrderVo order:detailVo.getOrders()) {
			order.setDetailNo(detailNo);
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
		product.setDetails(productDao.selectProductDetail(productNo));
		
		return product;
	}
	
	//주문리스트
	@Override
	public List<orderViewVo> selectAllOrderList(int storeNo) {
		
		List<orderViewVo> views = productDao.selectAllOrderList(storeNo);
		
		return views;
	}
	
	//재고등록
	@Override
	public void insertStock(DetailVo detailVo) {
		
		List<DetailVo> details=productDao.findDetail(detailVo.getProductNo());
		int detailNo = 0;
		
		for(DetailVo detail:details) {			
			if(
				detail.getDetailColor().equals(detailVo.getDetailColor())&&
				detail.getDetailCarat().equals(detailVo.getDetailCarat())&&
				detail.getDetailGold().equals(detailVo.getDetailGold())&&
				detail.getShape().equals(detailVo.getShape())&&
				detail.getDetailSize().equals(detailVo.getDetailSize())
			   ){			
				detailNo =detail.getDetailNo();
				productDao.updateDetailType(detailNo);				
				int mount=detail.getMount()+detailVo.getMount();				
				productDao.updateMount(detailNo,mount);				
				break;
			}					
		}
		
		if(detailNo == 0) {
			productDao.insertDetail(detailVo);
			productDao.updateDetailType(detailVo.getDetailNo());			
		}

		
	}
	
	//재고리스트
	@Override
	public List<ProductVo> takeAllStockList(int storeNo) {
		
		List<ProductVo> products = productDao.selectAllProduct(storeNo);
		
		for(ProductVo product:products) {			
			product.setDetails(productDao.selectProductDetail(product.getProductNo()));
		}
		
		return products;
	}
	
	//주문상태변경
	@Override
	public void changeOrderViewType(int orderNo,String type) {
		
		productDao.updateOrderViewType(orderNo,type);
		
	}
	
	//판매추가
	@Override
	public void insertSales(SalesVo sales) {
		
		productDao.insertSales(sales);
		
	}
	
	//재고추가
	@Override
	public void updateStockMount(int detailNo, int salesCount) {
		
		DetailVo detail=productDao.findDetailBydetailNo(detailNo);
		int mount=detail.getMount()+salesCount;	
		productDao.updateDetailType(detailNo);	
		productDao.updateMount(detailNo,mount);
		
	}


	
}