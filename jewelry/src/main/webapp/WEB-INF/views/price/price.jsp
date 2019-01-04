<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
         <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Inbox | jeweler - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="/jewelry/resources/img/favicon.ico">
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
    	
    	/* var no= $('#ul').attr('data-no');
 */
    	var last = $("#newPrice0").text(); 
    	var last1 = $("#newPrice0").text();
    	var last2 = $("#newPrice1").text();
    	var last3 = $("#newPrice2").text();
    	var last4 = $("#newPrice3").text();
    	var last5 = $("#newPrice4").text();
    	var last6 = $("#newPrice5").text();
    	var last7 = $("#newPrice6").text();
    	var last8 = $("#newPrice7").text();
    	var last9 = $("#newPrice8").text();
    	var last10 = $("#newPrice9").text();
    	var last11= $("#newPrice10").text();
    	var last12 = $("#newPrice11").text();
    	var last13 = $("#newPrice12").text();
    	var last14 = $("#newPrice13").text();
    	
    	
    	$("#sparkline8").sparkline([last1,last2,last3,last4,last5,last6,last7,last8,last9,last10,last11,last12,last13,last14], {
 
        type: 'bar',
        barWidth: 22,
        height: '150px',
        barColor: '#03a9f4',
        negBarColor: '#303030'});
		});
    
   

		
			
		
    
	</script>
	
	

	<script type="text/javascript">
		
	$(function () { 
		$('#bigger').on('click', function (event) {
			$('#priceview2').find('.hidePrice').hide();
			 $('#priceview2').css("font-size", "50px");
		})
		});
	
	$(function () { 
		$('#smaller').on('click', function (event) {
			$('#priceview2').find('.hidePrice').show();
			 $('#priceview2').css("font-size", "13px");
		})
		});
	
	$(function () {
	$('#something').click(function() {
	    location.reload();
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
      <div class="mailbox-area mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="hpanel responsive-mg-b-30">
                            <div class="panel-body">

                                <ul class="mailbox-list">
                                 
                                    <li>
                                      <div class="content-error">
									  <br>
							<!-- ================================================== -->		
								
                 			   <h1> <span class="counter">${newprice}</span>원</h1>
                 			 
							   <br><br>
							<!-- ================================================== -->		
                    			<!-- <a href="#">등록</a> -->
                    			
                    			
                    			
                    			
                    			                            <!-- /////////// -->
                            <!-- Trigger the modal with a button -->
							<button type="button" class="btn btn-success loginbtn" data-toggle="modal" data-target="#myModal">시세등록</button>
							<!-- Modal -->
							<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog">

						    <!-- Modal content-->
							<div class="panel-body">
							<div class="text-center custom-login">
							<h3>오늘 시세</h3>
							<p>숫자만 입력해주세요 (ex 75000) </p>
							</div>
                    
							<form action="/jewelry/price/price.action?userNo=${user.storeNo}" id="loginForm" method="post">
								<div class="row">
                                <div class="form-group col-lg-12">
                                    <input class="form-control" name="price" >
                                </div>

                            </div>
                            <div class="text-center">
                                <button type="submit" class="register">시세등록</button>
                                <button class="Cancel" data-dismiss="modal">취소</button>
                            </div>
                        </form>
                    </div>
				 </div>				
			</div>
                            <!-- ///////////////////////// -->
                    			
                    			
                    			
                    			
                    			
                    			
                    			
                    			
                				</div>
                                    </li>
                                </ul>
                                <hr>
                                <ul class="mailbox-list">
                                
                                
                                  
                                            
					   <div class="sparkline8-list responsive-mg-b-30">
                            <div class="sparkline8-hd">
                                <div class="main-sparkline8-hd">
                                    <h1>최근 시세 비교표(최근 14건)</h1>
                                </div>
                            </div>
                            <div class="sparkline8-graph">
                                <span id="sparkline8"></span>
                            </div>
                        </div>
						
                                </ul>
                                <hr>
                                <ul class="mailbox-list"  id="ul"  data-no="${priceVo.priceNo}">
                                            
                                            <strong>최근 시세</strong>              
                                           <c:set var="no"  value="0"/>
                                            <c:forEach var="priceVo" begin="0" end="13" step="1" items="${prices}">                                            
                                                <li>< ${priceVo.priceDate} : <span id="newPrice${no}"  class="np">${priceVo.price}</span> ></li>
                                                <c:set var="no" value="${no+1 }"/>
                                            </c:forEach>
                                            
                                            
                                            
                                
                                   <!--  <li>
                                        <a href="#"><i class="fa fa-gears"></i> Settings</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-info-circle"></i> Support</a>
                                    </li> -->
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-md-9 col-sm-9 col-xs-12">
                        <div class="hpanel mg-b-15">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6 col-md-6 col-sm-6 col-xs-12 mg-b-15">
                        
                                        <div class="btn-group">
                                        	
                                            <button class="btn btn-default btn-sm" id=something><i class="fa fa-refresh"></i>  새로고침</button>
                                            <button class="btn btn-default btn-sm" id=bigger><i class="fa fa-eye"></i> 크게 보기</button>
                                            <button class="btn btn-default btn-sm" id=smaller><i class="fa fa-exclamation"></i> 표준 크기로 보기</button>

                                        </div>
                                    </div>
                                    <div class="col-md-6 col-md-6 col-sm-6 col-xs-12 mailbox-pagination mg-b-15">
                                        <div class="btn-group">
                                            <button class="btn btn-default btn-sm"><i class="fa fa-arrow-left"></i></button>
                                            <button class="btn btn-default btn-sm"><i class="fa fa-arrow-right"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-mailbox" id="priceview2" >
                                        <tbody>
                                        
                                       <c:forEach var="priceVo" items="${prices}">
                                            <tr class="unread">
                                                <td class="">
                                         
                                                </td>
                                                <td><strong id="priceview">${priceVo.priceDate}</strong></td>
                                                <td><td>
                                                
                                                <td class="hidePrice">현 재  접 속 한  가 맹 점 에 서  ${priceVo.priceDate}  에  등 록 한  금 의  시 세 는</td> 
                                                <td><td><strong >${priceVo.price}  원</strong></td></td>
                                                <td class="text-right mail-date">  <button type="button"><a href="/jewelry/price/priceDelete.action?priceNo=${priceVo.priceNo}&userNo=${user.storeNo}">삭제</a></button></td>
                                            </tr>
                                            </c:forEach>

 </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="panel-footer">
                             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
    <!-- morrisjs JS
		============================================ -->
    <script src="/jewelry/resources/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="/jewelry/resources/js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="/jewelry/resources/js/calendar/moment.min.js"></script>
    <script src="/jewelry/resources/js/calendar/fullcalendar.min.js"></script>
    <script src="/jewelry/resources/js/calendar/fullcalendar-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="/jewelry/resources/js/tab.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="/jewelry/resources/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="/jewelry/resources/js/main.js"></script>
	
	
	    <!-- 숫자 ACTION
		============================================ -->
	<script src="/jewelry/resources/js/counterup/jquery.counterup.min.js"></script>
    <script src="/jewelry/resources/js/counterup/waypoints.min.js"></script>
    <script src="/jewelry/resources/js/counterup/counterup-active.js"></script>
	    <!-- sparkline JS
		============================================ -->
    <script src="/jewelry/resources/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="/jewelry/resources/js/sparkline/sparkline-active.js"></script>
    

</body>

</html>