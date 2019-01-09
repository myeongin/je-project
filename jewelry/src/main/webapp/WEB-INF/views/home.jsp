<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <c:if test="${empty user}">
		<meta http-equiv="refresh" content="0;url=fc/login.action">
	</c:if>
    <title>Dashboard V.2 | jeweler - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/owl.carousel.css">
    <link rel="stylesheet" href="resources/css/owl.theme.css">
    <link rel="stylesheet" href="resources/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="resources/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="resources/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="resources/css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="resources/style.css">
    <!-- responsive CSS
		======================
		====================== -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			Morris.Area({
		        element: 'morris-area-chart',
		        data: [{
		            period: '${year-4}',
		            매출 : ${ re[4] },
					지출 : ${ ex[4] },
					순수이익 : ${ pr[4] }
		        }, {
		            period: '${year-3}',
		            매출 : ${ re[3] },
					지출 : ${ ex[3] },
					순수이익 : ${ pr[3] }
		        }, {
		            period: '${year-2}',
		            매출 : ${ re[2] },
					지출 : ${ ex[2] },
					순수이익 : ${ pr[2] }
		        }, {
		            period: '${year-1}',
		            매출 : ${ re[1] },
					지출 : ${ ex[1] },
					순수이익 : ${ pr[1] }
		        }, {
		            period: '${year}',
		            매출 : ${ re[0] },
					지출 : ${ ex[0] },
					순수이익 : ${ pr[0] }
		        }],
		        xkey: 'period',
		        ykeys: ['매출', '지출', '순수이익'],
		        labels: ['매출', '지출', '순수이익'],
		        pointSize: 0,
		        fillOpacity: 0.6,
		        pointStrokeColors:['#f75b36', '#00b5c2 ', '#008efa'],
		        behaveLikeLine: true,
		        gridLineColor: '#e0e0e0',
		        lineWidth:0,
		        hideHover: 'auto',
		        lineColors: ['#f75b36', '#00b5c2 ', '#008efa'],
		        resize: true
		        
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
        <div class="section-admin container-fluid res-mg-t-15">
            <div class="row admin text-center">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
                                <h4 class="text-left text-uppercase"><b>당일 매출</b></h4>
                                <div class="row vertical-center-box vertical-center-box-tablet">
                                    <div class="col-xs-3 mar-bot-15 text-left">
                                        <label class="label bg-green"><i class="fa fa-level-up" aria-hidden="true"></i></label>
                                    </div>
                                    <div class="col-xs-9 cus-gh-hd-pro">
                                        <h2 class="text-right no-margin"><fmt:formatNumber value="${day[0]}" pattern="#,###"/><span>원</span></h2>
                                    </div>
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 100%;" class="progress-bar bg-green"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
                                <h4 class="text-left text-uppercase"><b>주간 매출</b></h4>
                                <div class="row vertical-center-box vertical-center-box-tablet">
                                    <div class="text-left col-xs-3 mar-bot-15">
                                        <label class="label bg-red"><i class="fa fa-level-up" aria-hidden="true"></i></label>
                                    </div>
                                    <div class="col-xs-9 cus-gh-hd-pro">
                                        <h2 class="text-right no-margin"><fmt:formatNumber value="${day[1]}" pattern="#,###"/><span>원</span></h2>
                                    </div>
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 100%;" class="progress-bar progress-bar-danger bg-red"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
                                <h4 class="text-left text-uppercase"><b>월간 매출</b></h4>
                                <div class="row vertical-center-box vertical-center-box-tablet">
                                    <div class="text-left col-xs-3 mar-bot-15">
                                        <label class="label bg-blue"><i class="fa fa-level-up" aria-hidden="true"></i></label>
                                    </div>
                                    <div class="col-xs-9 cus-gh-hd-pro">
                                        <h2 class="text-right no-margin"><fmt:formatNumber value="${day[2]}" pattern="#,###"/><span>원</span></h2>
                                    </div>
                                </div>
                                <div class="progress progress-mini">
                                    <div style="width: 100%;" class="progress-bar bg-blue"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="admin-content analysis-progrebar-ctn res-mg-t-30">
                                <h4 class="text-left text-uppercase"><b>연간 매출</b></h4>
                                <div class="row vertical-center-box vertical-center-box-tablet">
                                    <div class="text-left col-xs-3 mar-bot-15">
                                        <label class="label bg-purple"> <i class="fa fa-level-up" aria-hidden="true"></i></label>
                                    </div>
                                    <div class="col-xs-9 cus-gh-hd-pro">
                                        <h2 class="text-right no-margin"><fmt:formatNumber value="${day[3]}" pattern="#,###"/><span>원</span></h2>
                                    </div>
                                </div> 
                                <div class="progress progress-mini">
                                    <div style="width: 100%;" class="progress-bar bg-purple"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-sales-area mg-tb-30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-sales-chart">
                            <div class="portlet-title">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="caption pro-sl-hd">
                                            <span class="caption-subject text-uppercase"><b>연간 매출 현황</b></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    </div>
                                </div>
                            </div>
                            <ul class="list-inline cus-product-sl-rp">
                                <li>
                                    <h5><i class="fa fa-circle" style="color: #f75b36;"></i>매출</h5>
                                </li>
                                <li>
                                    <h5><i class="fa fa-circle" style="color: #00b5c2;"></i>지출</h5>
                                </li>
                                <li>
                                    <h5><i class="fa fa-circle" style="color: #008efa;"></i>순수이익</h5>
                                </li>
                            </ul>
                            <div id="morris-area-chart" style="height: 356px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="traffic-analysis-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">                                        
                    <div class="white-box tranffic-als-inner">
                    			<div class="content-error">
                    			<h1>현재 금 시세</h1>
									<br><h1> <span class="counter"><fmt:formatNumber value="${newprice}" pattern="#,###"/></span>원</h1>
								</div>
								</div>
							
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    	 <div class="personal-info-wrap">
							<div class="persoanl-widget-hd persoanl1-widget-hd" style="padding: 0px 0px 0px 5px;">
								<h2>우수 거래처</h2>
							</div>
							<table class="table">
								<thead>
									<tr>
										<th>순위</th>
										<th>거래처명</th>
										<th>거래제품</th>										
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ac" items="${acs}" varStatus="i">									
									<tr>
										<td>${i.count}</td>
										<td>${ac.get("ACSTORE")}</td>
										<td>${ac.get("MOUNT")}</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
                    </div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="personal-info-wrap">
							<div class="persoanl-widget-hd persoanl1-widget-hd" style="padding: 0px 0px 0px 5px;">
								<h2>이달의 우수 직원</h2>
							</div>
							<table class="table">
								<thead>
									<tr>
										<th>순위</th>
										<th>직원명</th>
										<th>매출</th>
										<th>순수이익</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="employee" items="${employees}" varStatus="i">									
									<tr>
										<td>${i.count}</td>
										<td>${employee.get("USERNAME")}</td>
										<td><fmt:formatNumber value='${employee.get("REVENUE")}' pattern="#,###"/>원</td>
										<td><fmt:formatNumber value='${employee.get("PROFIT")}' pattern="#,###"/>원</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
            </div>
        </div>	
        <div class="product-new-list-area">   
				 <div class="container-fluid">
                <div class="row">
                <c:forEach var="product" items="${pac}">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="single-new-trend mg-t-30">
                        <div>
                        	<c:forEach var="img" items="${product.imgs}">
                            <<img src="/jewelry/resources/product-img/${img.imgSavedName}" alt="">
                            </c:forEach>
                            </div>
                            <div class="overlay-content">
                                <div>
                                    <h2>상품명:${ product.productName } || ${ product.count}개</h2>
                                </div>                                                             
                                <div>
                                    <h4></h4>
                                </div>
                           
                            </div>
                        </div>                        
                    </div>
                  </c:forEach> 
         
                </div>
            </div> 
        </div> 
       <div class="product-sales-area mg-tb-30">
     
        </div> 
        <div class="author-area-pro">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="personal-info-wrap">
						
						<!-- 1번째 포스트잇 시작-->
 							
                                <div class="persoanl-widget-hd persoanl1-widget-hd" style="padding:0px 0px 0px 5px;">
                                    <h2>최신 가입 고객</h2>
                                </div>
                               
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
                                      		<c:forEach var="customer" begin="0" end="5" step="1" items="${customers}">  
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
								<!-- 1번째 포스트잇 끝  -->

                   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="author-widgets-single res-mg-t-30">

                                
                                <div class="persoanl-widget-hd persoanl1-widget-hd" style="padding:0px 0px 0px 5px;">
                                    <h2>최근 등록 제품</h2>
                                </div>
                   
                                   <table class="table">
                                        <thead>
                                            <tr>                                            	
                                                <th>제품번호</th>
                                                <th>제품명</th>                                                
                                            </tr>
                                        </thead>
                                        <tbody>
						<c:forEach var="product" begin="0" end="5" step="1" items="${products}" varStatus="i">
						  		<tr>						  	
						  		<td><strong>${product.productNo}</strong></td>
						  		<td>${product.productName}</td>
						  				</tr>						  										  				
						</c:forEach>
						</tbody>
						</table>
                        </div>
                    </div>

                   <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="author-widgets-single res-mg-t-30">

                                
                                <div class="persoanl-widget-hd persoanl1-widget-hd" style="padding:0px 0px 0px 5px;">
                                    <h2>최근 등록 거래처</h2>
                                </div>
                   
                                   <table class="table">
                                        <thead>
                                            <tr>
                                                <th>거래처 번호</th>
                                                <th>업체명</th>
                                                <th>연락처</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
						<c:forEach var="acList" begin="0" end="5" step="1" items="${acList}">
						  		<tr><td><strong>${acList.acNo}</strong></td>
						  				<td>${acList.acName}</td>
						  				<td>${acList.acPhone}</td>
						  				</tr>
						  				
						</c:forEach>
						</tbody>
						</table>
                        </div>
                    </div>

						<!-- 3번째 포스트잇 끝  -->
                    </div>
                    </div>
                    </div>

        <div style="padding:0px 0px 5px 0px"></div>
        
		<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
    </div>

    <!-- jquery
		============================================ -->
    <script src="resources/js/vendor/jquery-1.11.3.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="resources/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="resources/js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="resources/js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="resources/js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="resources/js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="resources/js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="resources/js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="resources/js/metisMenu/metisMenu.min.js"></script>
    <script src="resources/js/metisMenu/metisMenu-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="resources/js/morrisjs/raphael-min.js"></script>
    <script src="resources/js/morrisjs/morris.js"></script>
    <script src="resources/js/morrisjs/morris-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="resources/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="resources/js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="resources/js/calendar/moment.min.js"></script>
    <script src="resources/js/calendar/fullcalendar.min.js"></script>
    <script src="resources/js/calendar/fullcalendar-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="resources/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="resources/js/main.js"></script>
    
    	    <!-- 숫자 ACTION
		============================================ -->
	<script src="/jewelry/resources/js/counterup/jquery.counterup.min.js"></script>
    <script src="/jewelry/resources/js/counterup/waypoints.min.js"></script>
    <script src="/jewelry/resources/js/counterup/counterup-active.js"></script>
    <!-- Charts JS
		============================================ -->
    <script src="/jewelry/resources/js/charts/Chart.js"></script>
    <script src="/jewelry/resources/js/charts/bar-chart.js"></script>
    
</body>

</html>
