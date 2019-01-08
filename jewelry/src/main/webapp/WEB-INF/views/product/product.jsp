<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Blog | jeweler - Material Admin Template</title>
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
    $(function(){
    	
    	$('#productdiv').on('click','.b',function(event){ // 삭제
    		
    		var no=$(this).attr('data-no'); 		    		
    		
    		$.ajax({
				"url" : "productDel.action",
				"method" : "POST",
				"data": {
					"productNo":no,					
				},
				"success":function(data,status,xhr){
					alert("수정되었습니다.");
					$('#productdiv').load("productlist.action",{"storeNo":${ user.storeNo },"pageNo":${ pageNo }});
				},
				"error":function(xhr,status,err){
					alert("실패");
				}
			});	
    		
    	});
    	
		$('#productdiv').on('click','.c',function(event){ //수정
    								
    		var no=$(this).attr('data-no');
		
			var d=$('#sub'+no)[0];
			var data=new FormData(d);
			
    		$.ajax({
				"url" : "productUd.action",  
				"processData": false,
                "contentType": false,
                "data": data,
				"type" : "POST",				
				"success":function(data,status,xhr){
					alert("수정되었습니다.");					
					$('#productdiv').load("productlist.action",{"storeNo":${ user.storeNo },"pageNo":${ pageNo }});
				},
				"error":function(xhr,status,err){
					alert("수정에 실패하였습니다.");
				}
			});
    		
    		$('#myModal1'+no).modal('hide');
    		
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
        <div class="blog-area mg-tb-15">
      
            <div class="buttonS" style="margin: 5px 20px;">
        		<a href="/jewelry/product/productupload.action?storeNo=${user.storeNo}" data-target="#zoomInDown1">제품추가</a>
        	</div>
			<div class="container-fluid">
				<div class="row" id="productdiv">
					<c:forEach var="product" items="${products}">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<div class="hpanel blog-box mg-t-30">

								<div class="panel-body blog-pra">
									<div class="blog-img">
										<a
											href="/jewelry/product/detail.action?productNo=${product.productNo}&storeNo=${user.storeNo}">
											<c:forEach var="img" items="${product.imgs}">
												<img
													src="/jewelry/resources/product-img/${img.imgSavedName}"
													alt="" />
											</c:forEach>
											<h3>제품명:${product.productName}</h3>
										</a>
									</div>
								</div>
								<div class="panel-footer">
									<div class="btn-group btn-custom-groups btn-custom-groups-one">
										<button type="button" class="btn btn-primary a"
											data-toggle="modal" data-target="#myModal1${product.productNo }"
											data-no="${product.productNo}">
											<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
										</button>
										<button type="button" class="btn btn-primary b" title="update"
											data-no="${product.productNo}">
											<i class="fa fa-times adminpro-danger-error" title="delete"
												aria-hidden="true"></i>
										</button>

										<!-- Modal -->
										<div id="myModal1${product.productNo }" class="modal fade" role="dialog">
											<div class="modal-dialog">

												<!-- Modal content-->
											<div class="panel-body">
											
												<div class="modal-header">
													<h4 class="modal-title">재품 정보 수정</h4>													
												</div>
												
													<div id="myTabContent"
														class="tab-content custom-product-edit">
														<div class="product-tab-list tab-pane fade active in"
															id="description">
														<form id="sub${product.productNo}" action='productUd.action' method="post">
															<div class="row">
																<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
																	<div class="review-content-section">
																		<div class="input-group mg-b-pro-edt">
																			<span class="input-group-addon"><strong>제품이름</strong></span>
																			<input type="text" class="form-control" name="productName" value="${product.productName}" placeholder="Name">																				
																		</div>
																		
																		<div class="input-group mg-b-pro-edt">
																			<span class="input-group-addon"><strong>공인비</strong></span>
																			<input type="text" class="form-control" name="productCost" placeholder="Cost" value="${product.productCost}">																				
																		</div>																		
																		<input type="hidden" class="form-control" name="userNo" value="${user.storeNo}">
																		<input type="hidden" class="form-control" name="productNo" value="${product.productNo}">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
																	<div class="review-content-section">
																		<div class="input-group mg-b-pro-edt">
																			<span class="input-group-addon"><i
																				class="fa fa-download" aria-hidden="true"></i></span> <input
																				type="file" name="img" class="form-control">
																		</div>

																		<div class="input-group mg-b-pro-edt">
																			<span class="input-group-addon">거래처</span> <select
																				class="form-control" name="acno">
																				<option selected></option>
																				<c:forEach var="account" items="${accounts}">
																					<option value="${account.acno}">${account.acstore}</option>
																				</c:forEach>
																			</select>
																		</div>
																	</div>
																</div>
															</div>
														</form>
															
															<div class="row">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
																	<div class="text-center mg-b-pro-edt custom-pro-edt-ds">
																		<button class="btn btn-primary waves-effect waves-light m-r-10 c" data-no="${product.productNo}">수정</button>																																																																							
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
						</div>
					</c:forEach>
				</div>
				<div class="custom-pagination">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
						${pager}
						</ul>
					</nav>
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