package com.jewelry.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jewelry.common.Util;
import com.jewelry.service.ProductService;
import com.jewelry.vo.DetailVo;
import com.jewelry.vo.OrderVo;
import com.jewelry.vo.ProductImgVo;
import com.jewelry.vo.ProductVo;

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
	public String productView(int userNo,Model model) {
		
		List<ProductVo> products = productService.takeAllProduct(userNo);
		
		model.addAttribute("products",products);
			
		return "product/product";
	}
	
	//제품등록
	@RequestMapping(value="productupload.action",method=RequestMethod.GET)
	public String productUploadView() {
		
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
			model.addAttribute("userNo", productVo.getUserNo());
				
			return "redirect:/product/product.action";
		}
	
	//제품수정
	@RequestMapping(value="productUd.action",method=RequestMethod.POST)
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
				
			return "redirect:/product/product.action";
		}
	
	//제품삭제
	@RequestMapping(value="productDel.action",method=RequestMethod.POST)
	public String prodcutDel(int productNo) {
		
		productService.deleteProduct(productNo);
		
		return "redirect:/product/product.action";
	}
	
	/************************************************************************/
	
	//주문
	@RequestMapping(value="order.action",method=RequestMethod.GET)
	public String OrderView(int userNo,Model model) {
		
		
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
		
	/************************************************************************/
	
	//제품상세
	@RequestMapping(value="detail.action",method=RequestMethod.GET)
	public String detailView(int productNo,Model model) {
		
		ProductVo product=productService.takeProductByProductNo(productNo);
		model.addAttribute("product",product);
		
		return "product/detail";
	}
	
	//주문등록
	@RequestMapping(value="detail.action",method=RequestMethod.POST)
	public String productOrder(DetailVo detailVo,OrderVo orderVo,Model model) {

		ArrayList<OrderVo> orders = new ArrayList<>();
		orders.add(orderVo);
		detailVo.setOrders(orders);
		
		productService.insertOrder(detailVo);
		//model.addAttribute();
		
		return "redirect:/product/product.action";
	}		
	
	/************************************************************************/
	
	//재고
	@RequestMapping(value="stock.action",method=RequestMethod.GET)
	public String stockView() {
		
		//조회
		
		return "/product/stock";
	}
	
	
	/************************************************************************/
	
	//판매
	@RequestMapping(value="sales.action",method=RequestMethod.GET)
	public String salesView() {
		
		//조회
		return "/product/sales";
	}
	
}
