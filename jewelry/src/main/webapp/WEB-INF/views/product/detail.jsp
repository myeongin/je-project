<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!Doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Product Details | jeweler - Material Admin Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon"
	href="../resources/img/favicon.ico">
<!-- Google Fonts
		============================================ -->
<link href="https://fonts.googleapis.com/css?family=Play:400,700"
	rel="stylesheet">
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
<link rel="stylesheet"
	href="../resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- metisMenu CSS
		============================================ -->
<link rel="stylesheet"
	href="../resources/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet"
	href="../resources/css/metisMenu/metisMenu-vertical.css">
<!-- calendar CSS
		============================================ -->
<link rel="stylesheet"
	href="../resources/css/calendar/fullcalendar.min.css">
<link rel="stylesheet"
	href="../resources/css/calendar/fullcalendar.print.min.css">
<!-- modals CSS
		============================================ -->
<link rel="stylesheet" href="../resources/css/modals.css">
<!-- forms CSS
		============================================ -->
<link rel="stylesheet" href="../resources/css/form/all-type-forms.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="../resources/style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="../resources/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="../resources/js/vendor/modernizr-2.8.3.min.js"></script>
<!-- touchspin CSS
		============================================ -->
<link rel="stylesheet"
	href="../resources/css/touchspin/jquery.bootstrap-touchspin.min.css">
<!-- datapicker CSS
		============================================ -->
<link rel="stylesheet"
	href="../resources/css/datapicker/datepicker3.css">
<!-- colorpicker CSS
		============================================ -->
<link rel="stylesheet"
	href="../resources/css/colorpicker/colorpicker.css">
<!-- select2 CSS
		============================================ -->
<link rel="stylesheet" href="../resources/css/select2/select2.min.css">
<!-- chosen CSS
		============================================ -->
<link rel="stylesheet"
	href="../resources/css/chosen/bootstrap-chosen.css">
<!-- ionRangeSlider CSS
		============================================ -->
<link rel="stylesheet"
	href="../resources/css/ionRangeSlider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="../resources/css/ionRangeSlider/ion.rangeSlider.skinFlat.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		var gold;		
		var carat;
		var newPrice = $('#newPrice').val();
		var harry =$('#harry').val();
		var cost =$('#cost').val();
		
		$('.submitsales').on("click",function(event){		
			var no = $(this).attr("data-no");			
			$('#salesform'+no).submit();			
		});	
					
		$('input').on('ifChecked',function(evnet){
			
			if(this.value=='14k'){
				gold=0.585;
			}else if(this.value=='18k'){
				gold=0.75;
			}else if(this.value=='24k'){
				gold=1;
			}else if(this.value=='재고' || this.value=='주문판매'){
				var productprice=(((newPrice*(gold*harry)) * carat) + cost);
				$('#price').val(productprice);
			}
			
		});
		
		$('#carat').on('focusout',function(event){
			carat=$(this).val();
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
						<a href="index.html"><img class="main-logo"
							src="img/logo/logo.png" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
		<!-- Single pro tab t-->
		<div class="single-product-tab-area mg-t-15 mg-b-30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
						<div id="myTabContent1" class="tab-content">
							<c:forEach var="img" items="${product.imgs}">
								<div class="product-tab-list tab-pane fade active in"
									id="single-tab1">
									<img src="/jewelry/resources/product-img/${img.imgSavedName}"
										alt="" />
								</div>
							</c:forEach>
							<div class="product-tab-list tab-pane fade" id="single-tab2">
								<img src="/" alt="" />
							</div>
							<div class="product-tab-list tab-pane fade" id="single-tab3">
								<img src="" alt="" />
							</div>
							<div class="product-tab-list tab-pane fade" id="single-tab4">
								<img src="" alt="" />
							</div>
							<div class="product-tab-list tab-pane fade" id="single-tab5">
								<img src="" alt="" />
							</div>
						</div>
						<ul id="single-product-tab">
							<li class=""><a href=""><img
									src="" alt="" /></a></li>
							<li><a href="#single-tab2"><img
									src="" alt="" /></a></li>
							<li><a href="#single-tab3"><img
									src="" alt="" /></a></li>
							<li><a href="#single-tab4"><img
									src="" alt="" /></a></li>
						</ul>
					</div>
					<form action="detail.action" method="post">

						<input type="hidden" name="storeNo" value="${user.storeNo}">

						<input type="hidden" name="productNo" value="${product.productNo}">

						<input type="hidden" name="userNo" value="${user.userNo}">

						<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
							<div class="single-product-details res-pro-tb">
								<span class="single-regular">제품명:${product.productName}</span> <br>
								<div class="single-pro-price">
									<h4>주문가격:<input id="price" type="text" name="price" style="border:none;background-color:transparent" readonly></h4>
								</div>

								<br>

								<div class="single-pro-size">
									<h4>형태</h4>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="반지" name="shape">
											<i></i> 반지
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="팔찌" name="shape">
											<i></i> 팔찌
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="목걸이" name="shape">
											<i></i> 목걸이
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="귀걸이" name="shape">
											<i></i> 귀걸이
										</label>
									</div>
								</div>

								<br>

								<div class="single-pro-size">
									<h4>색깔</h4>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="화이트"
											name="detailColor"> <i></i> 화이트
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="루비"
											name="detailColor"> <i></i> 로즈골드
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="black"
											name="detailColor"> <i></i> 엘로우
										</label>
									</div>
								</div>

								<br>

								<div class="single-pro-size">
									<h4>골드</h4>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="14k"
											name="detailGold" id="14k"> <i></i> 14k
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="18k"
											name="detailGold"> <i></i> 18k
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="24k"
											name="detailGold"><i></i> 24k
										</label>
									</div>						
								</div>

								<br>

								<div class="single-pro-size">
									<h4>중량</h4>
									<input type="text" name="detailCarat" id="carat">
								</div>

								<div class="single-pro-size">
									<h4>사이즈</h4>
									<input type="text" name="detailSize">
								</div>

								<div class="single-pro-size">
									<h4>수량</h4>
									<div class="pro-quantity-changer">
									<input type="text" name="orderCount" value=1>
									</div>
								</div>

								<div class="single-pro-size">
									<h4>구분</h4>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="재고"
											name="orderType"> <i></i> 재고
										</label>
									</div>
									<div class="i-checks pull-left">
										<label> <input type="radio" value="주문판매"
											name="orderType"> <i></i> 주문판매
										</label>
									</div>
								</div>

								<br>

								<div class="single-pro-size">
									<h4>고객정보</h4>																
										<select name="cuno" style="width:150px">
											<option selected="selected" value="0">재고주문</option>
												<c:forEach var="customer" items="${customers}">
													<option value="${customer.cuNo}">${customer.cuName}</option>
												</c:forEach>
										</select>									
									</div>
																															
								<input type="hidden" id="harry" value="${harry}">
								<input type="hidden" id="cost" value="${product.productCost}">
								<input type="hidden" id="newPrice" value="${newPrice}">
								
								<input type="hidden" name="storeNo" value="${user.storeNo}">								
								
								<div class="single-pro-button">
									<div>
										<input type="submit" value="ADD">
									</div>
								</div>

								<div class="clear"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="alert-wrap1 shadow-reset wrap-alert-b">
							<div class="alert-title">
								<h2>재고목록</h2>
							</div>
							<c:forEach var="stock" items="${product.details}">
								<div class="alert alert-success" role="alert">
									<table style="width: 100%;">
										<tr>
											<td><strong>형태:</strong>${stock.shape}</td>
											<td><strong>색깔:</strong>${stock.detailColor}</td>
											<td><strong>골드:</strong>${stock.detailGold}</td>
											<td><strong>중량:</strong>${stock.detailCarat}</td>
											<td><strong>사이즈:</strong>${stock.detailSize}</td>
											<td><strong>수량:</strong>${stock.mount}</td>
											<td>
												<button type="button"
													class="btn btn-custon-rounded-three btn-success"
													data-toggle="modal" data-target="#myModal${stock.detailNo}">구입</button>
											</td>
										</tr>
									</table>
								</div>

								<div id="myModal${stock.detailNo}"
									class="modal modal-adminpro-general default-popup-PrimaryModal fade"
									role="dialog">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-close-area modal-close-df">
												<a class="close" data-dismiss="modal" href="#"><i
													class="fa fa-close"></i></a>
											</div>
											<div class="modal-body">

												<h2>구매 제품 정보</h2>
												
												<br>
										
												<div class="i-checks pull-left" style="padding: 0px 0px 30px 0px" >
													<label><input type="checkbox" value="" disabled="" checked=""> <i></i> <span class="basic-ds-n">형태 : </span>${stock.shape}</label>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="checkbox" value="" disabled="" checked=""> <i></i> <span class="basic-ds-n">색깔 : </span>${stock.detailColor}</label>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="checkbox" value="" disabled="" checked=""> <i></i> <span class="basic-ds-n">골드 : </span>${stock.detailGold}</label>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="checkbox" value="" disabled="" checked=""> <i></i> <span class="basic-ds-n">중량 : </span>${stock.detailCarat}</label>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="checkbox" value="" disabled="" checked=""> <i></i> <span class="basic-ds-n">사이즈 : </span>${stock.detailSize}</label>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="checkbox" value="" disabled="" checked=""> <i></i> <span class="basic-ds-n">원가 : </span>${stock.price}</label>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<label><input type="checkbox" value="" disabled="" checked=""> <i></i> <span class="basic-ds-n">수량 : </span>${stock.mount}</label>												
												</div>
																				
												<hr>
												
												<form action="/jewelry/product/stocksales.action" method="post" id="salesform${stock.detailNo}"> 
												<div> 
													<input type="hidden" value="${user.storeNo }" name="storeNo">
													<input type="hidden" value="${user.userNo}" name="userNo">
													<input type="hidden" value="${stock.detailNo}" name="detailNo">
													<input type="hidden" value="판매완료" name="salesDiv">
													<label><strong>구매수량</strong></label>												
													<input type="text" name="salesCount">
													&nbsp;								
													<label><strong>판매금액</strong></label> 
													<input type="text" name="salesPrice">				
												</div>												
												<div style="padding:10px 0px 0px 0px "> 
													<label><strong>고객정보</strong></label>
													<select name="cuno" style="width:50%">
														<option selected="selected">미지정</option>
														<c:forEach var="customer" items="${customers}">													
															<option value="${customer.cuNo}">${customer.cuName}</option>
														</c:forEach>														
													</select>
												</div>
												</form>																					
											</div>
											
											<div class="modal-footer">
												<a data-dismiss="modal" href="#">Cancel</a> <a class="submitsales" href="javascript:" data-no="${stock.detailNo}">Process</a>
											</div>
										</div>
									</div>
								</div>


							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
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
	<script
		src="../resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
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
	<!-- tab JS
		============================================ -->
	<script src="../resources/js/tab.js"></script>
	<!-- icheck JS
		============================================ -->
	<script src="../resources/js/icheck/icheck.min.js"></script>
	<script src="../resources/js/icheck/icheck-active.js"></script>
	<!-- plugins JS
		============================================ -->
	<script src="../resources/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script src="../resources/js/main.js"></script>
	<!-- touchspin JS
		============================================ -->
	<script
		src="../resources/js/touchspin/jquery.bootstrap-touchspin.min.js"></script>
	<script src="../resources/js/touchspin/touchspin-active.js"></script>
</body>

</html>