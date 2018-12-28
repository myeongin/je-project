											<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
											<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
											<c:forEach var="employee" items="${employees}"> 
                                            <tr id="employee${employee.emNo}">                                                            
                                                <td ></td>
                                                <td id="id">${employee.userId}</td>
                                                <td id="name">${employee.userName}</td>
                                                <td id="phone">${employee.userPhone}</td>
												<td id="email">${employee.userEmail}</td>
												<td id="regdate">${employee.regDate}</td>
                                                <td id="qdate">${employee.qtDate}</td>
												<td id="type">${employee.userType}</td>
                                                <td ><button class="sub" data-emno="${employee.emNo}" >수정</button>/<button>삭제</button></td>                                      
                                            </tr>                                          
                                            </c:forEach>         