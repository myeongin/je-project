<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
                                          
                           <div class="product-status-wrap" id="sales">
                            <h4>판매관리</h4> 
                                         <div class="form-group data-custon-pick data-custom-mg" id="data_5" style="padding:0px 0px 10px 5px;float:left">                    
                                        <div class="input-daterange input-group" id="datepicker">
                                            <input type="text" class="form-control" name="start" id="start" value="<fmt:formatDate value="${start}" pattern="MM/dd/yyyy"/>"/>
                                            <span class="input-group-addon">to</span>
                                            <input type="text" class="form-control" name="end"  id="end" value="<fmt:formatDate value="${end}" pattern="MM/dd/yyyy"/>" />
                                        </div>
                                    </div>  
                                     <button class="buttonS" id="search" style="height:34px;float:left">검색</button>
                                    <div style="text-align:right;"><strong  style="padding:20px 40px 20px 20px" >매출:${revenue}</strong><strong  style="padding:20px 40px 20px 20px">순수이익:${profit}</strong></div>
                                                                                       
                            <table>
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
                                    		<td>${view.salesPrice}</td>
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
                            </table>
                            <div class="custom-pagination">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        ${pager}
                                    </ul>
                                </nav>
                            </div>
                        </div>
                          
                            