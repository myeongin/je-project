package com.jewelry.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.jewelry.dao.ProductDao;
import com.jewelry.vo.Customer;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.PriceVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.account;
import com.jewelry.vo.orderViewVo;
import com.jewelry.vo.salesViewVo;

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
			img.setProductNo(productVo.getProductNo());
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
			if(order.getOrderType().equals("주문판매")){
				productDao.insertOrder(order);
			}else {
				productDao.insertOrderNOCuNo(order);
			}
			
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
		
		for(ProductVo product:products) {
			Double harry=productDao.takeHarryByAcno(product.getAcno());
			product.setHarry(harry);
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
	public List<orderViewVo> selectAllOrderList(int storeNo,int from,int to) {
		
		List<orderViewVo> views = productDao.selectAllOrderList(storeNo,from,to);
		
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
	public List<ProductVo> takeAllStockList(int storeNo,int from,int to) {
		
		List<ProductVo> products = productDao.selectProductandDetail(storeNo,from,to);
		
		return products;
	}
	
	//주문상태변경
	@Override
	public void changeOrderViewType(int orderNo,String type) {
		if(type.equals("주문중")) {
			productDao.updateOrderViewType(orderNo,type);
		}else {
			productDao.updateOrderViewTypeAndDate(orderNo,type);
		}
		
		
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
	
	//판매리스트
	@Override
	public List<salesViewVo> findSalesView(int storeNo,int from,int to) {
		
		List<salesViewVo> salesViews = productDao.findSalesView(storeNo,from,to);
		
		
		
		return salesViews;
	}
	
	//판매수정
	@Override
	public void updateSales(int salesNo, int salesPrice) {
		productDao.updateSales(salesNo,salesPrice);
	}
	
	//거래처 정보
	@Override
	public List<account> findAccountByStoreNo(int storeNo) {
		
		List<account> accounts = productDao.findAccountByStoreNo(storeNo);
		
		return accounts;
	}
	
	//손님 리스트
	@Override
	public List<Customer> takeAllCustomer(int storeNo) {
		
		List<Customer> customers = productDao.selectAllCustomer(storeNo);
		
		return customers;
	}
	
	//재고제품판매등록
	@Override
	public void insertAllSales(SalesVo sales) {
		
		DetailVo detail=productDao.findDetailBydetailNo(sales.getDetailNo());
		
		int mount=detail.getMount()-sales.getSalesCount();				
		productDao.updateMount(sales.getDetailNo(),mount);
		
		productDao.insertAllSales(sales);
		
		
	}
	
	//주문수
	@Override
	public int findOrdercount(int storeNo) {
		
		int count=productDao.findOrdercount(storeNo);
		
		return count;
	}
	
	
	//제품+pager
	@Override
	public List<ProductVo> takeAllProductBypager(int storeNo, int from, int to) {
		
		List<ProductVo> products = productDao.selectAllProductBypager(storeNo,from,to);
		for(ProductVo product:products) {			
			product.setImgs(productDao.selectAllImg(product.getProductNo()));
		}
		
		
		return products;
	}
	
	//제품수
	@Override
	public int findProductcount(int storeNo) {
		
		int count=productDao.findProductcount(storeNo);
		
		return count;
	}
	
	//판매수
	@Override
	public int findSalescount(int storeNo) {
		
		int count=productDao.findSalescount(storeNo);
		
		return count;
	}
	
	//거래처해리
	@Override
	public Double takeHarryByAcno(int acno) {
		
		Double harry = productDao.takeHarryByAcno(acno);
		
		return harry;
	}
	
	//최신시세
	@Override
	public int takeNewPrice(int storeNo) {
		 
		int price = productDao.takNewPrice(storeNo);
		
		return price;
	}
	
	//재고수
	@Override
	public int findStockcount(int storeNo) {
		
		int stocks = productDao.findStockcount(storeNo);
		
		return stocks;
	}
	
	//재고수정
	@Override
	public void updateStock(int detailNo, int mount) {
		
		productDao.updateStock(detailNo,mount);
		
	}
	
	//재고삭제
	@Override
	public void deleteStock(int detailNo) {
		
		productDao.deleteStock(detailNo);
		
	}
	
	//이익
	@Override
	public List<Integer> takeProfit(int storeNo, String start, String end) {
		
		List<Integer> profit = productDao.takeProfit(storeNo,start,end);
		return profit;
	}
	
	//판매검색
	@Override
	public HashMap<String, Object> searchSalesView(int storeNo, int from, int to, String start, String end) {
		
		SimpleDateFormat dt = new SimpleDateFormat("MM/dd/yyyy");
		HashMap<String, Object> salesView=new HashMap<>();
		int profit=0;
		int revenue=0;
		
		List<salesViewVo> sales=productDao.searchSalesView(storeNo,from,to,start,end);
						
		for (salesViewVo sale : sales) {

			if (sale.getSalesDate() != null) {

				String day = dt.format(sale.getSalesDate());
				if (sale.getSalesPrice() != 0) {
					if (day.compareTo(start) >= 0 && day.compareTo(end) <= 0) {
						revenue += sale.getSalesPrice();
					}
				}

				if (sale.getPrice() != 0) {
					if (day.compareTo(start) >= 0 && day.compareTo(end) <= 0) {
						profit += sale.getPrice();
					}

				}
			}
		}
		
		salesView.put("sales", sales);
		salesView.put("profit",revenue-profit);
		salesView.put("revenue",revenue);
	
		return salesView;
	}


	
}