											<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
											<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
									<c:forEach var="employee" items="${employees}">
												<tr id="employee${employee.userNo}">

													<td id="id">${employee.userId}</td>
													<td id="name">${employee.userName}</td>

													<td id="phone">${employee.userPhone}</td>

													<td id="email">${employee.userEmail}</td>

													<td><input style="width: 100%; border: 0px none"
														id="firstdate" type="text" data-mask="9999/99/99"
														value="${employee.firstDate}"></td>

													<td><input style="width: 100%; border: 0px none"
														id="lastdate" type="text" data-mask="9999/99/99"
														value="${employee.lastDate}"></td>
													<td><select id="type" style="border: 0px none">
															<option value="${employee.userType}">${employee.userType}</option>
															<c:choose>
																<c:when test="${employee.userType eq 'employee'}">
																	<option value="manager">manager</option>
																</c:when>
																<c:when test="${employee.userType eq 'manager'}">
																	<option value="employee">employee</option>
																</c:when>
															</c:choose>
													</select></td>
													<td><button class="buttonS" data-emno="${employee.userNo}">수정</button></td>
												</tr>
											</c:forEach>