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
                                    <th>원가</th>
                                    <th>판매가격</th>
                                    <th>판매수량</th>
                                    <th>판매일</th>
                                    <th>판매직원</th>
                                    <th>판매상태</th>                                                                                                          
                                </tr>
                                <c:forEach var="view" items="${views}">
                                <tr id="tr${view.salesNo}">                                
                                   <td>${view.productName}</td>
                                    <td>${view.shape}</td>
                                    <td>${view.detailColor}</td>
                                    <td>${view.detailGold}</td>
                                    <td>${view.detailCarat}</td>
                                    <td>${view.detailSize}</td>
                                     <td>${view.price}</td>
                                    <c:choose>
                                    	<c:when test="${view.salesDiv eq '판매대기' }">
                                    		<td><input id="salesPrice" type="text" value="${veiw.salesPrice}"></td>
                                    	</c:when>
                                    	<c:when test="${view.salesDiv eq '판매완료' }">
                                    		<td>${veiw.salesPrice}</td>
                                    	</c:when>
                                    </c:choose>                                                                  
                                    <td>${view.salesCount}</td>
                                    <td><fmt:formatDate value="${view.salesDate}" pattern="yyyy/MM/dd(E) HH:mm:ss"/></td>
                                    <td>${view.userName}</td>
                                    <td>
                                    	<c:choose>
                                    		<c:when test="${view.salesDiv eq '판매대기' }">
                                   				<button class="ps-setting" data-salesNo="${view.salesNo}">${view.salesDiv}</button>
                                   			</c:when>
                                   			<c:when test="${view.salesDiv eq '판매완료' }">
                                   				<button class="pd-setting" disabled='disabled'>${view.salesDiv}</button>
                                   			</c:when>
                                   		</c:choose>	
                                    </td>                                                                                                                                                                                                    
                                </tr>
							</c:forEach>
                          
                            