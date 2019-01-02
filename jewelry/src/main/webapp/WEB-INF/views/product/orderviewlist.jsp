<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
                <h4>Products List</h4>                          
                            <table>
                                <tr>
                                    <th>제품명</th>
                                    <th>형태</th>
                                    <th>칼라</th>
                                    <th>골드</th>
                                    <th>중량</th>
                                    <th>사이즈</th>
                                    <th>원가</th>
                                    <th>주문수량</th>                                    
                                    <th>주문구분</th>
                                    <th>주문일</th>
                                    <th>수령일</th>                                    
                                    <th>주문담당자</th>                                
                                    <th>상태</th> 
                                    <th>수정/취소</th>
                                </tr>
                              	<c:forEach var="view" items="${views}">
                                <tr id="tr${view.orderNo}">
                                    <td id="proName">${view.productName}</td>
                                    <td id="shape">${view.shape}</td>
                                    <td id="color">${view.detailColor}</td>
                                    <td id="gold">${view.detailGold}</td>
                                    <td id="carat">${view.detailCarat}</td>
                                    <td id="size">${view.detailSize}</td>
                                    <td id="price">${view.price}</td>
                                    <td id="count">${view.orderCount}</td>
                                    <td id="orType">${view.orderType}</td>
                                    <td id="orDate"><fmt:formatDate value="${view.orderDate}" pattern="yyyy/MM/dd(E) HH:mm:ss"/></td>
                                    <td id="ckDate">${view.orderCkDate}</td>
                                    <td id="userName">${view.userName}</td>
                                    <td id="productNo" style="display:none">${view.productNo}</td>
									<td id="detailNo" style="display:none">${view.detailNo}</td>
									<td id="userNo" style="display:none">${view.userNo}</td>                                     
                                    <td>
                                    	<c:choose>
                                    		<c:when test="${view.orderCk eq '주문대기' }">
                                   				<button class="ps-setting" data-orderno="${view.orderNo}">${view.orderCk}</button>
                                   			</c:when>
                                   			<c:when test="${view.orderCk eq '주문중' }">
                                   				<button class="ds-setting" data-orderno="${view.orderNo}">${view.orderCk}</button>
                                   			</c:when>
                                   			<c:when test="${view.orderCk eq '주문완료' }">
                                   				<button class="pd-setting" disabled='disabled'>${view.orderCk}</button>
                                   			</c:when>
                                   		</c:choose>
                                    </td>
                                    <td>
                                    	<c:if test="${view.orderCk eq '주문대기' }">
                                        	<button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                        	<button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                        </c:if>
                                    </td>
                                </tr>
						</c:forEach>
                            </table>
                            <div class="custom-pagination">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                    </ul>
                                </nav>
                            </div>