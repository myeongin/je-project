package com.jewelry.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jewelry.common.Util;
import com.jewelry.service.ProductService;
import com.jewelry.ui.ThePager;
import com.jewelry.vo.Customer;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;
import com.jewelry.vo.SalesVo;
import com.jewelry.vo.account;
import com.jewelry.vo.orderViewVo;
import com.jewelry.vo.salesViewVo;

@Controller
@RequestMapping("/product/")
public class ProductController {
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	/************************************************************************/
	
	//제품
	@RequestMapping(value="product.action",method=RequestMethod.GET)
	public String productView(int storeNo,Model model,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo) {
		
		int pagesize=8;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 5;
		String linkUrl = "product.action";
		
		List<account> accounts = productService.findAccountByStoreNo(storeNo);
		List<ProductVo> products = productService.takeAllProductBypager(storeNo,from,to);
		int productcount = productService.findProductcount(storeNo);
		
		ThePager pager = new ThePager(productcount, pageNo, pagesize, pagersize, linkUrl,storeNo);
		
		model.addAttribute("accounts",accounts);
		model.addAttribute("products",products);
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);
		
		return "product/product";
	}
	
	//제품등록
	@RequestMapping(value="productupload.action",method=RequestMethod.GET)
	public String productUploadView(int storeNo,Model model) {
		
		List<account> accounts = productService.findAccountByStoreNo(storeNo);
		model.addAttribute("accounts",accounts);
		
		return "product/productupload";
	}
	
	@RequestMapping(value="productupload.action",method=RequestMethod.POST)
	public String productupload(ProductVo productVo,MultipartHttpServletRequest req,Model model) {
			
			MultipartFile img = req.getFile("img");
			ArrayList<ProductImgVo> imgs = new ArrayList<>();
			
			if(img !=null && !img.isEmpty()) {
				String savedname = Util.makeUniqueFileName(img.getOriginalFilename());
				String path = req.getServletContext().getRealPath("/resources/product-img/" + savedname);

				
				try {
					img.transferTo(new File(path));
					ProductImgVo productImg = new ProductImgVo();
					productImg.setImgSavedName(savedname);
					productImg.setImgFileName(img.getOriginalFilename());		
					imgs.add(productImg);
				}catch(Exception ex) {
					ex.printStackTrace();
				}
			}
			
			productVo.setImgs(imgs);
			productService.insertProduct(productVo);	
			
			model.addAttribute("storeNo", productVo.getUserNo());
				
			return "redirect:/product/product.action";
		}
	
	//제품수정
	@RequestMapping(value="productUd.action",method=RequestMethod.POST)
	@ResponseBody
	public String productUd(ProductVo productVo,MultipartHttpServletRequest req) {
		
			MultipartFile img = req.getFile("img");
			ArrayList<ProductImgVo> imgs = new ArrayList<>();
			
			if(img !=null && !img.isEmpty()) {
				String savedname = Util.makeUniqueFileName(img.getOriginalFilename());
				String path = req.getServletContext().getRealPath("/resources/product-img/" + savedname);

				
				try {
					img.transferTo(new File(path));
					ProductImgVo productImg = new ProductImgVo();
					productImg.setImgSavedName(savedname);
					productImg.setImgFileName(img.getOriginalFilename());		
					imgs.add(productImg);
				}catch(Exception ex) {
					ex.printStackTrace();
				}
			}
			
			productVo.setImgs(imgs);
			productService.updateProduct(productVo);	
				
			return "success";
		}
	
	//제품삭제
	@RequestMapping(value="productDel.action",method=RequestMethod.POST)
	@ResponseBody
	public String prodcutDel(int productNo) {
		
		productService.deleteProduct(productNo);
		
		return "success";
	}
	
	//제품리스트
	@RequestMapping(value="productlist.action",method=RequestMethod.POST)
	public String productList(int storeNo,Model model,int pageNo) {
		
		int pagesize=8;	
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		
		List<ProductVo> products = productService.takeAllProductBypager(storeNo,from,to);
		model.addAttribute("products",products);
			
		return "product/productlist";
	}
		
	/************************************************************************/
	
	//주문
	@RequestMapping(value="order.action",method=RequestMethod.GET)
	public String OrderView(int storeNo,Model model,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo) {
		
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 10;
		String linkUrl = "order.action";
		
		List<orderViewVo> views=productService.selectAllOrderList(storeNo,from,to);
		int ordercount = productService.findOrdercount(storeNo);
		
		ThePager pager = new ThePager(ordercount, pageNo, pagesize, pagersize, linkUrl,storeNo);
				
		model.addAttribute("views",views);
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);
		
		return "product/order";
	}
	
	//제품주문수정
	@RequestMapping(value="orderUpdate.action",method=RequestMethod.POST)
	public String orderUpdate(DetailVo detailVo,OrderVo orderVo) {
			
		ArrayList<OrderVo> orders = new ArrayList<>();
		orders.add(orderVo);
		detailVo.setOrders(orders);
			
		productService.updateOrder(detailVo);
			
		return "redirect:/product/product.action";
	}
		
	//제품주문취소
	@RequestMapping(value="orderDel.action",method=RequestMethod.POST)
	public String orderDel(int orderNo) {
			
		productService.orderDel(orderNo);
			
		return "redirect:/product/product.action";
	}
	
	//주문상태변경
	@RequestMapping(value="ordertype.action",method=RequestMethod.POST)
	@ResponseBody
	public String ordertype(int orderNo,String type,String div,SalesVo sales) {
		
		if(type.equals("주문중")) {
			productService.changeOrderViewType(orderNo,type);
		}else {
			
			if(div.equals("주문판매")) {
				productService.insertSales(sales);
			}else {
				productService.updateStockMount(sales.getDetailNo(),sales.getSalesCount());
			}
			
			productService.changeOrderViewType(orderNo,type);
										
		}
		
		return "success";
	}
	
	//주문리스트
	@RequestMapping(value="orderVIewList.action",method=RequestMethod.POST)
	public String orderViewList(int storeNo,Model model,int pageNo) {
		
		int pagesize=10;	
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		
		List<orderViewVo> views=productService.selectAllOrderList(storeNo,from,to);
		model.addAttribute("views",views);
			
		return "product/orderviewlist";
	}
		
	/************************************************************************/
	
	//제품상세
	@RequestMapping(value="detail.action",method=RequestMethod.GET)
	public String detailView(int productNo,int storeNo,Model model) {
		
		ProductVo product=productService.takeProductByProductNo(productNo);
		int newPrice=productService.takeNewPrice(storeNo);	
		Double harry=productService.takeHarryByAcno(product.getAcno());
		List<Customer> customers = productService.takeAllCustomer(storeNo);				

		model.addAttribute("product",product);
		model.addAttribute("customers",customers);
		model.addAttribute("harry",harry);
		model.addAttribute("newPrice",newPrice);
		
		return "product/detail";
	}
	
	//주문등록
	@RequestMapping(value="detail.action",method=RequestMethod.POST)
	public String productOrder(DetailVo detailVo,OrderVo orderVo,int storeNo,Model model) {

		ArrayList<OrderVo> orders = new ArrayList<>();
		orders.add(orderVo);
		detailVo.setOrders(orders);
		
		productService.insertOrder(detailVo);
		model.addAttribute("storeNo",storeNo);
		
		return "redirect:/product/product.action";
	}		
	
	/************************************************************************/
	
	//재고
	@RequestMapping(value="stock.action",method=RequestMethod.GET)
	public String stockView(int storeNo,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo,Model model) {
		
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 10;
		String linkUrl = "stock.action";	
		
		List<ProductVo> products = productService.takeAllStockList(storeNo,from,to);	
		int stockcount = productService.findStockcount(storeNo);
		
		ThePager pager = new ThePager(stockcount, pageNo, pagesize, pagersize, linkUrl,storeNo);
		
		model.addAttribute("products", products);
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);
		
		return "/product/stock";
	}
	
	//재고추가
	@RequestMapping(value="stockupload.action",method=RequestMethod.GET)
	public String stockUploadView(int storeNo,Model model) {
		
		List<ProductVo> products = productService.takeAllProduct(storeNo);
		int newPrice=productService.takeNewPrice(storeNo);
		
		model.addAttribute("products",products);
		model.addAttribute("newPrice",newPrice);
		
		return "/product/stockupload";
	}
		
	@RequestMapping(value="stockupload.action",method=RequestMethod.POST)
	public String stockUpload(DetailVo detailVo,int storeNo,Model model) {
		
		productService.insertStock(detailVo);
		model.addAttribute("storeNo", storeNo);
		
		return "redirect:/product/stock.action";
	}
	
	//재고 수정
	@RequestMapping(value="stockupdate.action",method=RequestMethod.POST)
	@ResponseBody
	public String stockUpdate(int detailNo,int mount) {
		
		productService.updateStock(detailNo,mount);
			
		return "success";
	}
	
	//재고삭제
	@RequestMapping(value="stockdelete.action",method=RequestMethod.POST)
	@ResponseBody
	public String stockDelete(int detailNo) {
		
		productService.deleteStock(detailNo);
			
		return "success";
	}
	
	//재고리스트
	@RequestMapping(value="stocklist.action",method=RequestMethod.POST)
	public String stockList(int storeNo,Model model,int pageNo) {
		
		int pagesize=10;	
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		
		List<ProductVo> products = productService.takeAllStockList(storeNo,from,to);
		model.addAttribute("products", products);
		
		return "/product/stocklist";
	}
		
	//재고판매
	@RequestMapping(value="stocksales.action",method=RequestMethod.POST)
	public String stockSales(int storeNo,SalesVo sales,Model model) {

		
		productService.insertAllSales(sales);
		model.addAttribute("storeNo",storeNo);
		
		return "redirect:/product/sales.action";
	}
	
	/************************************************************************/
	
	//판매
	@RequestMapping(value="sales.action",method=RequestMethod.GET)
	public String salesView(int storeNo,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo,Model model) {
		
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 10;
		String linkUrl = "sales.action";		
		
		SimpleDateFormat dt = new SimpleDateFormat("MM/dd/yyyy");
		String start=dt.format(new Date());
		String end = dt.format(new Date());
		
		List<salesViewVo> salesViews =  productService.findSalesView(storeNo,from,to);		
		int salescount = productService.findSalescount(storeNo);
		List<Integer> profit = productService.takeProfit(storeNo,start,end);
		
		ThePager pager = new ThePager(salescount, pageNo, pagesize, pagersize, linkUrl,storeNo);
		
		model.addAttribute("profit", (profit.get(0)-profit.get(1)));
		model.addAttribute("revenue", profit.get(0));
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		model.addAttribute("views",salesViews);
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);
		
		return "/product/sales";
	}
	
	//판매수정
	@RequestMapping(value="salesupdate.action",method=RequestMethod.POST)
	@ResponseBody
	public String salesUpdate(int salesNo,int salesPrice) {
		
		 productService.updateSales(salesNo,salesPrice);
		
		return "success";
	}
	
	//판매리스트 ajax
	@RequestMapping(value="salesviewlist.action",method=RequestMethod.POST)
	public String salesViewList(int storeNo,Model model,int pageNo) {
		
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 10;
		String linkUrl = "sales.action";		
		
		SimpleDateFormat dt = new SimpleDateFormat("MM/dd/yyyy");
		String start=dt.format(new Date());
		String end = dt.format(new Date());
		
		List<salesViewVo> salesViews =  productService.findSalesView(storeNo,from,to);		
		int salescount = productService.findSalescount(storeNo);
		List<Integer> profit = productService.takeProfit(storeNo,start,end);
		
		ThePager pager = new ThePager(salescount, pageNo, pagesize, pagersize, linkUrl,storeNo);
		
		model.addAttribute("profit", (profit.get(0)-profit.get(1)));
		model.addAttribute("revenue", profit.get(0));
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		model.addAttribute("views",salesViews);
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);
		
		return "/product/salesviewlist";
	}
	
	//판매서치
	@RequestMapping(value="searchsales.action",method=RequestMethod.POST)
	public String searchsales(int storeNo, String start, String end,@RequestParam(value="pageNo",required = false,defaultValue ="1")int pageNo,Model model) {
		
		int pagesize=10;
		int from=(pageNo-1)*pagesize +1;
		int to =from+pagesize;
		int pagersize = 10;
		String linkUrl = "searchsales.action";	
			
		HashMap<String, Object> sales =  productService.searchSalesView(storeNo,from,to,start,end);
		int salescount = productService.findSalescount(storeNo);

		ThePager pager = new ThePager(salescount, pageNo, pagesize, pagersize, linkUrl,storeNo);
		
		model.addAttribute("profit",sales.get("profit"));
		model.addAttribute("revenue",sales.get("revenue"));
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		model.addAttribute("views",sales.get("sales"));
		model.addAttribute("pager",pager);
		model.addAttribute("pageNo",pageNo);
		
		return "/product/sales";
	}
	
}
