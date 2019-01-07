package com.jewelry.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.jewelry.mapper.ProductMapper;
import com.jewelry.vo.Customer;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.account;
import com.jewelry.vo.orderViewVo;
import com.jewelry.vo.salesViewVo;

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
		HashMap<String, Object> del = new HashMap<>();
		del.put("productNo", productNo);
		del.put("del","1");
		productMapper.deleteProduct(del);
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
	
	//주문등록(재고)
	@Override
	public void insertOrderNOCuNo(OrderVo order) {		
		productMapper.insertOrderNOCuNo(order);
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
	public List<orderViewVo> selectAllOrderList(int storeNo,int from,int to) {
		
		HashMap<String,Object> type = new HashMap<>();
		type.put("from", from);
		type.put("to",to);
		type.put("storeNo",storeNo);
		
		List<orderViewVo> views = productMapper.selectAllOrderList(type);
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
		
		HashMap<String,Object> type = new HashMap<>();
		type.put("productNo", productNo);
		type.put("div","1");
		
		List<DetailVo> details=productMapper.selectProductDetail(type);
		
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
	
	//주문상태변경 + 수령날짜
		@Override
		public void updateOrderViewTypeAndDate(int orderNo, String type) {
			HashMap<String,Object> viewType = new HashMap<>();
			viewType.put("orderNo", orderNo);
			viewType.put("type",type);
			
			productMapper.updateOrderViewTypeAndDate(viewType);			
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

	//판매리스트
	@Override
	public List<salesViewVo> findSalesView(int storeNo,int from,int to) {
		
		HashMap<String,Object> sales = new HashMap<>();
		sales.put("from", from);
		sales.put("to",to);
		sales.put("storeNo",storeNo);
		
		List<salesViewVo> salesViews = productMapper.findSalesView(sales);
		return salesViews;
	}
	
	//판매수정
	@Override
	public void updateSales(int salesNo, int salesPrice) {
		
		HashMap<String, Object> sales=new HashMap<>();
		sales.put("salesNo", salesNo);
		sales.put("salesPrice",salesPrice);
		sales.put("salesDiv","판매완료");
		
		productMapper.updateSales(sales);
		
	}
	
	//거래처 리스트
	@Override
	public List<account> findAccountByStoreNo(int storeNo) {
		
		List<account> accounts = productMapper.findAccountByStoreNo(storeNo);		
		return accounts;
	}
	
	//고객리스트
	@Override
	public List<Customer> selectAllCustomer(int storeNo) {
		
		List<Customer> customers = productMapper.selectAllCustomer(storeNo);
		
		return customers;
	}
	
	//재고제품판매등록
	@Override
	public void insertAllSales(SalesVo sales) {		
		productMapper.insertAllSales(sales);
	}
	
	//주문수
	@Override
	public int findOrdercount(int storeNo) {
		int count = productMapper.findOrdercount(storeNo);
		return count;
	}
	
	//제품+pager
	@Override
	public List<ProductVo> selectAllProductBypager(int storeNo, int from, int to) {
		
		HashMap<String, Object> type = new HashMap<>();
		type.put("storeNo", storeNo);
		type.put("from",from);
		type.put("to",to);
		type.put("del","1");
		
		List<ProductVo> products = productMapper.selectAllProductBypager(type);
		
		return products;
	}
	
	//제품수
	@Override
	public int findProductcount(int storeNo) {
		int count = productMapper.findProductcount(storeNo);
		return count;
	}
	
	//판매수
	@Override
	public int findSalescount(int storeNo) {
		int count = productMapper.findSalescount(storeNo);
		return count;
	}
	
	//거래처 해리
	@Override
	public Double takeHarryByAcno(int acno) {
		
		Double harry = productMapper.takeHarryByAcno(acno);
		
		return harry;
	}
	
	//최신시세
	@Override
	public int takNewPrice(int storeNo) {
		
		HashMap<String, Object> type = new HashMap<>();
		type.put("storeNo", storeNo);
		type.put("num",1);
		
		int price = productMapper.takNewPrice(type);
		
		return price;
	}
	
	//재고 + pager
	@Override
	public List<ProductVo> selectProductandDetail(int storeNo, int from, int to) {
		HashMap<String, Object> type = new HashMap<>();
		type.put("storeNo", storeNo);
		type.put("from", from);
		type.put("to", to);
		type.put("del", "1");
		
		List<ProductVo> products = productMapper.selectProductandDetail(type);
		
		return products;
	}
	
	//재고 수
	@Override
	public int findStockcount(int storeNo) {
		HashMap<String, Object> type = new HashMap<>();
		type.put("storeNo", storeNo);
		type.put("del", "1");
		
		int count = productMapper.findStockcount(type);
		
		return count;
	}
	
	//재고 수정
	@Override
	public void updateStock(int detailNo, int mount) {
		HashMap<String, Object> type = new HashMap<>();
		type.put("detailNo",detailNo);
		type.put("mount",mount);
		
		productMapper.updateStock(type);
		
	}
	
	//재고삭제
	@Override
	public void deleteStock(int detailNo) {
		HashMap<String,Object> del =  new HashMap<>();
		del.put("detailNo",detailNo);
		del.put("del","0");
		
		productMapper.deleteStock(del);
		
	}
	
	//이익
	@Override
	public List<Integer> takeProfit(int storeNo, String start, String end) {
		
		HashMap<String,Object> profit = new HashMap<>();
		profit.put("storeNo", storeNo);
		profit.put("start",start);
		profit.put("end",end);
		
		int revenue = productMapper.takeRevenue(profit);
		int profit2 = productMapper.takeProfit(profit);
		
		List<Integer> profits = new ArrayList<>();
		profits.add(revenue);
		profits.add(profit2);
		
		return profits;
	}
	
	//검색
	@Override
	public List<salesViewVo> searchSalesView(int storeNo, int from, int to, String start, String end) {
		
		HashMap<String, Object> sal = new HashMap<>();
		sal.put("storeNo", storeNo);
		sal.put("from",from);
		sal.put("to",to);
		sal.put("start",start);
		sal.put("end",end);
		
		List<salesViewVo> salesViewVos = productMapper.searchSalesView(sal);
		return salesViewVos;
	}

	
	
	
	

}
