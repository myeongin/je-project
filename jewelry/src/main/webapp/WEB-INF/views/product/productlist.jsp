<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>                                     
                              	<c:forEach var="product" items="${products}">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="hpanel blog-box mg-t-30">

								<div class="panel-body blog-pra">
									<div class="blog-img">
										<a
											href="/jewelry/product/detail.action?productNo=${product.productNo}&storeNo=${user.storeNo}">
											<c:forEach var="img" items="${product.imgs}">
												<img
													src="/jewelry/resources/product-img/${img.imgSavedName}"
													alt="" />
											</c:forEach>
											<h3>제품명:${product.productName}</h3>
										</a>
									</div>
								</div>
								<div class="panel-footer">
									<div class="btn-group btn-custom-groups btn-custom-groups-one">
									  <button type="button" class="btn btn-primary a" data-no="${product.productNo}"><i class="fa fa-check adminpro-checked-pro" aria-hidden="true"></i></button>
									  <button type="button" class="btn btn-primary b" data-no="${product.productNo}"><i class="fa fa-times adminpro-danger-error" aria-hidden="true"></i></button>
									 </div>
								</div>
							</div>
						</div>
					</c:forEach>
                
                            