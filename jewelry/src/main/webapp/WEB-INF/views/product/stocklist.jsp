<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>                                     
                            <tr>
                                    <th>제품명</th>
                                    <th>형태</th>
                                    <th>칼라</th>
                                    <th>골드</th>
                                    <th>중량</th>
                                    <th>사이즈</th>
                                    <th>가격</th>
                                    <th>수량</th>                                    
                                    <th>수정/취소</th>
                                </tr>
								<c:forEach var="product" items="${products}">
								<c:forEach var="detail" items="${product.details}">
                                <tr>
                                      <td>${product.productName}</td>
                                      <td>${detail.shape}</td>
                                      <td>${detail.detailColor}</td>
                                      <td>${detail.detailGold}</td>
                                      <td>${detail.detailCarat}</td>
                                      <td>${detail.detailSize}</td>
                                      <td>${detail.price}</td>
                                      <td>
                                      	<div class="pro-quantity-changer">
                                      		<input type="text" class="form-control" id="mount${detail.detailNo}" value="${detail.mount}">
                                      	</div>	
                                      </td>                                                                                                                                    
                                    <td>                                 
                                        <button data-toggle="tooltip" title="update" class="pd-setting-ed update" data-no="${detail.detailNo}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                        <button data-toggle="tooltip" title="delete" class="pd-setting-ed delete" data-no="${detail.detailNo}"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                    </td>
                                </tr>
                                </c:forEach>
								</c:forEach> 
                
                            