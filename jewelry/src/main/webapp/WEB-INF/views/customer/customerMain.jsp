<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
         <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><!doctype html>
         
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Static Table | jeweler - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/owl.carousel.css">
    <link rel="stylesheet" href="/jewelry/resources/css/owl.theme.css">
    <link rel="stylesheet" href="/jewelry/resources/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="/jewelry/resources/js/vendor/modernizr-2.8.3.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript">



    $(function () { 
    	 "use strict";
    	  
    		 /*----------------------------------------*/
    		/*  1.  pie Chart
    		/*----------------------------------------*/
    		var ctx = document.getElementById("piechart");
    		var piechart = new Chart(ctx, {
    			type: 'pie',
    			data: {
    				labels: ["여성", "남성"],
    				datasets: [{
    					label: 'pie Chart',
    	                backgroundColor: [
    						'rgb(255, 99, 132)',
    						'#303030'
    					],
    					data: [${countWW},${countMM}]
    	            }]
    			},
    			options: {
    				responsive: true
    			}
    		});
    		 		 
    			
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
    		<jsp:include page="/WEB-INF/views/include/header.jsp" />
     <!-- Static Table Start -->
        <div class="static-table-area mg-t-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="sparkline8-list">
                            <div class="sparkline8-hd">
                                <div class="main-sparkline8-hd">
                                    <h1>최근 가입 고객    <button type="button" class="btn btn-success loginbtn"><a style="color: white;" href="/jewelry/customer/customer.action?userNo=${user.storeNo}">자세히 보기 / 고객 등록하기</a></button></h1>
                                </div>
                            </div>
                            <div class="sparkline8-graph">
                            <p><span id ="todaysWeather"></span></p>
                                <div class="static-table-list">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>고객번호</th>
                                                <th>고객이름</th>
                                                <th>고객 연락처</th>
                                                <th>고객 성별</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        
											<%-- <c:forEach var="customer" begin="0" end="3" step="1" items="${newcustomers}">   --%>                                      
                                            <%-- <c:forEach var="customer"  items="${customers}"> --%>
                                            <c:forEach var="customer" begin="0" end="19" step="1" items="${customers}">  
                                            <tr>
                                                <td>${customer.cuNo}</td>
                                                <td>${customer.cuName}</td>
                                                <td>${customer.cuPhone}</td>
                                                <td>${customer.cuSex}</td>
                                            </tr>
                                            </c:forEach>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="charts-single-pro responsive-mg-b-30">
                            <div class="alert-title">
                                <h2>고객 성비 비교</h2>
                                <p>샵에 등록한 고객의 남여 성비 비교</p>
                            </div>
                            <div id="pie-chart">
                                <canvas id="piechart"></canvas>
                            </div>
                      
                    
                    
                    
 <%--                        <div class="sparkline9-list mt-b-30">
                            <div class="sparkline9-hd">
                                <div class="main-sparkline9-hd">
                                    <h1>생일이 가까운 고객</h1>
                                </div>
                            </div>
                            <div class="sparkline9-graph">
                                <div class="static-table-list">
                                    <table class="table sparkle-table">
                                                                               <thead>
                                            <tr>
                                                <th>고객번호</th>
                                                <th>고객이름</th>
                                                <th>고객 연락처</th>
                                                <th>고객 생년월일</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
											<c:forEach var="customer" begin="0" end="3" step="1" items="${newcustomers}">                                        
                                            <c:forEach var="customer"  items="${customers}">
                                              
                                           
                                                <jsp:useBean id="now"  class="java.util.Date" />
                                                <fmt:parseDate var="birth" value="${customer.cuBirth}"  pattern="yyyyMMdd"/>
                                                <fmt:parseDate var="birth" value="${birth00}"  pattern="yyyyMMdd"/>
                                                <c:set var="target_date" value="${ now.time }"  />
                                                <c:set var="target_birth"  value="${ birth.time  }" />
                                                 <fmt:parseDate var="target_date" value="${ target_date }"  pattern="yyyy"></fmt:parseDate> 
                                               <fmt:parseNumber var='target_date'   integerOnly="true" value="${   (target_date - target_birth) / (1000 * 60 * 60 * 24)   }"></fmt:parseNumber> 
                                                	<c:out value="${   target_date }" />
                                                	<c:out value="${   (target_date - target_age) / (1000 * 60 * 60 * 24)  < 7   }" />
                                                <c:if test="${(target_date - target_birth) / (1000 * 60 * 60 * 24) le 7 }">
                                                <c:out value="${(target_date + target_birth) / (1000 * 60 * 60 * 24)}"   />
                                              
                                                <c:if test="${(target_date - target_birth) / (1000 * 60 * 60 * 24) le 7} ">
                                            	<c:forEach var="customer" begin="0" end="5" step="1" items="${customers}">	
                                                 <tr>
                                                <td>${customer.cuNo}</td>
                                                <td>${customer.cuName}</td>
                                                <td>${customer.cuPhone}</td>
                                                <td>${customer.cuBirth}</td>
                                            </tr>
                                            </c:forEach>
                                            </c:if>
                                        </tbody>
                                    
                                    </table>
                                </div>
                            </div>
                        </div> --%>
                    </div>
                </div>
                
                
                

                    </div>
                    
                    
                    
                </div>
        </div>
        <!-- Static Table End -->
        <div class="footer-copyright-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copy-right">
                            <p>Copyright &copy; 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jquery
		============================================ -->
    <script src="/jewelry/resources/js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="/jewelry/resources/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="/jewelry/resources/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="/jewelry/resources/js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="/jewelry/resources/js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="/jewelry/resources/js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="/jewelry/resources/js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="/jewelry/resources/js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="/jewelry/resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/jewelry/resources/js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="/jewelry/resources/js/metisMenu/metisMenu.min.js"></script>
    <script src="/jewelry/resources/js/metisMenu/metisMenu-active.js"></script>
    <!-- peity JS
		============================================ -->
    <script src="/jewelry/resources/js/peity/jquery.peity.min.js"></script>
    <script src="/jewelry/resources/js/peity/peity-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="/jewelry/resources/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="/jewelry/resources/js/sparkline/sparkline-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="/jewelry/resources/js/tab.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="/jewelry/resources/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="/jewelry/resources/js/main.js"></script>
    
           <!-- Charts JS
		============================================ --> 
    
        <script src="/jewelry/resources/js/charts/Chart.js"></script>
</body>

</html>