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
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="../resources/style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="../resources/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="../resources/js/vendor/modernizr-2.8.3.min.js"></script>
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
								<img src="img/product/bg-2.jpg" alt="" />
							</div>
							<div class="product-tab-list tab-pane fade" id="single-tab3">
								<img src="img/product/bg-3.jpg" alt="" />
							</div>
							<div class="product-tab-list tab-pane fade" id="single-tab4">
								<img src="img/product/bg-1.jpg" alt="" />
							</div>
							<div class="product-tab-list tab-pane fade" id="single-tab5">
								<img src="img/product/bg-2.jpg" alt="" />
							</div>
						</div>
						<ul id="single-product-tab">
							<li class="active"><a href="#single-tab1"><img
									src="img/product/1.jpg" alt="" /></a></li>
							<li><a href="#single-tab2"><img src="img/product/2.jpg"
									alt="" /></a></li>
							<li><a href="#single-tab3"><img src="img/product/3.jpg"
									alt="" /></a></li>
							<li><a href="#single-tab4"><img src="img/product/1.jpg"
									alt="" /></a></li>
						</ul>
					</div>
					<form action="detail.action" method="post">
						<input type="hidden" name="productNo" value="${product.productNo}">
						<c:choose>
						<c:when test="${user.userType eq 'admin'}">
							<input type="hidden" name="" value="${user.userNo}">
						</c:when>
						<c:otherwise>
							<input type="hidden" name="" value="${user.emNo}">
						</c:otherwise>
						</c:choose>
						<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
							<div class="single-product-details res-pro-tb">
								<h1>${product.productName}</h1>
								<div class="single-pro-price">
									<span class="single-regular">$150.00</span><span
										class="single-old"><del>$20.00</del></span>
								</div>

								<div class="single-pro-size">
									<h6>Size</h6>
									<input type="text" name="detailSize">
								</div>
								<div class="color-quality-pro">
									<div class="color-quality-details">
										<h5>Color</h5>
										화이트&nbsp;<input type="radio" name="detailColor" value="화이트">&nbsp;&nbsp;
										골드&nbsp;<input type="radio" name="detailColor" value="골드">&nbsp;&nbsp;
										로즈골드&nbsp;<input type="radio" name="detailColor" value="로즈고륻">&nbsp;&nbsp;
									</div>
									<div class="color-quality-details">
										<h5>Shape</h5>
										귀걸이&nbsp;<input type="radio" name="shape" value="귀걸이">&nbsp;&nbsp;
										목걸이&nbsp;<input type="radio" name="shape" value="목걸이">&nbsp;&nbsp;
										반지&nbsp;<input type="radio" name="shape" value="반지">&nbsp;&nbsp;
										팔찌&nbsp;<input type="radio" name="shape" value="팔찌">&nbsp;&nbsp;
									</div>
									<div class="color-quality">
										<h4>수량</h4>
										<div class="quantity">
											<div class="pro-quantity-changer">
												<input type="text" name="orderCount" value="1" />
											</div>
										</div>
									</div>
									<div class="single-pro-size">
										<h6>중량</h6>
										<input type="text" name="detailCarat">
									</div>
									<div class="single-pro-size">
										<h6>가격</h6>
										<input type="text" name="price">
									</div>
									<div class="single-pro-size">
										<h6>골드</h6>
										14k&nbsp;<input type="radio" name="detailGold" value="14K">&nbsp;&nbsp;
										18k&nbsp;<input type="radio" name="detailGold" value="18k">&nbsp;&nbsp;
										24k&nbsp;<input type="radio" name="detailGold" value="24k">&nbsp;&nbsp;
										순금&nbsp;<input type="radio" name="detailGold" value="순금">&nbsp;&nbsp;
									</div>
									<div class="single-pro-size">
										<h6>구분</h6>
										재고&nbsp;<input type="radio" name="detailDiv" value="stock">&nbsp;&nbsp;
										주문판매&nbsp;<input type="radio" name="detailDiv" value="sale">&nbsp;&nbsp;
									</div>
									<div class="clear"></div>
									<div class="single-pro-button">
										<div>
											<input type="submit" value="ADD">
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="single-pro-cn">
									<h3>OVERVIEW</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate
									</p>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Single pro tab End-->
		<!-- Single pro tab review Start-->
		<div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<ul id="myTab" class="tab-review-design">
							<li class="active"><a href="#description">description</a></li>
						</ul>
						<div
							class="product-tab-list product-details-ect tab-pane fade active in"
							id="description">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="review-content-section">
										<div class="review-content-section">
											<div class="card-block">
												<div class="input-group mg-b-15 mg-t-15">
													<span class="input-group-addon"><i
														class="fa fa-user" aria-hidden="true"></i></span> <input
														type="text" class="form-control" placeholder="User Name">
												</div>
												<div class="input-group mg-b-15">
													<span class="input-group-addon"><i
														class="fa fa-user" aria-hidden="true"></i></span> <input
														type="text" class="form-control" placeholder="Last Name">
												</div>
												<div class="input-group mg-b-15">
													<span class="input-group-addon"><i
														class="fa fa-envelope-o" aria-hidden="true"></i></span> <input
														type="text" class="form-control" placeholder="Email">
												</div>
												<div class="form-group review-pro-edt">
													<button type="submit"
														class="btn btn-primary waves-effect waves-light">Submit
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
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
	<!-- plugins JS
		============================================ -->
	<script src="../resources/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script src="../resources/js/main.js"></script>
</body>

</html>