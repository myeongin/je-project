<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!Doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product List | jeweler - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="../resources/img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/owl.carousel.css">
    <link rel="stylesheet" href="../resources/css/owl.theme.css">
    <link rel="stylesheet" href="../resources/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="../resources/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="../resources/css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="../resources/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
    	$(function(event){
    		
    		$('#order').on('click','.ps-setting',function(event){
    			
    			var orderNo=$(this).attr('data-orderno');
				var type="주문중";	
    			
    			$.ajax({
    				"url" : "ordertype.action",
    				"method" : "POST",
    				"data":{orderNo,type},    				
    				"success":function(data,status,xhr){
    					alert("수정되었습니다.");
    					$('#order').load("orderVIewList.action",{"storeNo":${user.storeNo}});
    					alert("아니.");
    				},
    				"error":function(xhr,status,err){
    					alert("실패");
    				}
    			});	
    		});
    		
    		
    		
			$('#order').on('click','.ds-setting',function(event){
    			
    			var orderNo=$(this).attr('data-orderno');
    			var price=$("#tr"+orderNo+" #price").text();
    			var count=$("#tr"+orderNo+" #count").text();
    			var salesDiv="판매대기";
    			var userName=$("#tr"+orderNo+" #userName").text();
    			var detailNo=$("#tr"+orderNo+" #detailNo").text();
    			var div=$("#tr"+orderNo+" #orType").text();
				var type="주문완료";												
    			
    			$.ajax({
    				"url" : "ordertype.action",
    				"method" : "POST",
    				"data":{
    						"orderNo":orderNo,
    						"type":type,
    						"productPrice":price,
    						"salesCount":count,
    						"detailNo":detailNo,
    						"salesDiv":salesDiv,
    						"div":div
    					},    				
    				"success":function(data,status,xhr){
    					alert("수정되었습니다.");
    					$('#order').load("orderVIewList.action",{"storeNo":${user.storeNo}});
    				},
    				"error":function(xhr,status,err){
    					alert("실패");
    				}
    			});	
    		})
    		
    		
    	});
    </script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

   <jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
 <jsp:include page="/WEB-INF/views/include/header.jsp" />
        <div class="product-status mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap" id="order">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
    </div>

    <!-- jquery
		============================================ -->
    <script src="../resources/js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="../resources/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="../resources/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="../resources/js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="../resources/js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="../resources/js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="../resources/js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="../resources/js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="../resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../resources/js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="../resources/js/metisMenu/metisMenu.min.js"></script>
    <script src="../resources/js/metisMenu/metisMenu-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="../resources/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="../resources/js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="../resources/js/calendar/moment.min.js"></script>
    <script src="../resources/js/calendar/fullcalendar.min.js"></script>
    <script src="../resources/js/calendar/fullcalendar-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="../resources/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="../resources/js/main.js"></script>
</body>

</html>