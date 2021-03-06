<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product Edit | jeweler - Material Admin Template</title>
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
    <link rel="stylesheet" href="css/morrisjs/morris.css">
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
	
	function check(regular,id,message){
		if(regular.test(id.val())){
			return true;
		}
		alert(message);
		id.val("");
		id.focus();
	}

	$(function(){
		
		var caratreg = $("#carat");
		var sizereg = $("#size");
		var mountreg = $("#mount");
		var pricereg = $("#price");
		var regular= /^\d+\.?\d*$/;
		
		var gold=0;		
		var carat=0;		
		var newPrice =parseInt(${newPrice});
		var harry =0;		
		var cost =0;
		
		
		$('#cost').change(function(evnet){
			cost=parseInt($("#cost option:selected").attr('id'));
			harry=parseFloat($("#cost option:selected").attr('data-harry'));
		});	
		
		$('#detailGold').change(function(evnet){
			if($("#detailGold option:selected").val() == '14k'){
				gold=parseFloat(0.585);			
			}else if($("#detailGold option:selected").val() == '18k'){
				gold=parseFloat(0.75);	
			}else if($("#detailGold option:selected").val() == '24k'){
				gold=parseFloat(1);	
			}
		});
		
		$('#carat').on('focusout',function(evnet){
			carat=parseInt($('#carat').val());
		});
		
		
		$('#mount').on('focusout',function(event){
			var productprice=Math.ceil((newPrice*gold*harry*carat)+cost);
			$('#price').val(productprice);
		});
		
		
		$('#stockupload').click(function(envet){
			
			if(pricereg.val()==""){
				alert("가격을 확인해 주세요");
				return;
			}
			
			if(!check(regular,pricereg,"가격에 숫자만 입력해주세요")){
				return;
			}
			
			if(caratreg.val()==""){
				alert("중량을 입력해 주세요");
				return;
			}
			
			if(!check(regular,caratreg,"중량에 숫자만 입력해주세요")){
				return;
			}
			
			if(sizereg.val()==""){
				alert("사이즈을 입력해 주세요");
				return;
			}
			if(mountreg.val()==""){
				alert("수량을 입력해 주세요");
				return;
			}
			
			if(!check(regular,mountreg,"수량에 숫자만 입력해주세요")){
				return;
			}						
			
			$('#stockform').submit();
		});
		
		$("#cancel").click(function(evnet){
			location.href='/jewelry/product/stock.action?storeNo=${user.storeNo}';
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
        <!-- Single pro tab start-->
        <div class="single-product-tab-area mg-tb-15">
            <!-- Single pro tab review Start-->
            <div class="single-pro-review-area">
                <div class="container-fluid">               
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="review-tab-pro-inner">
                                <ul id="myTab3" class="tab-review-design">
                                    <li class="active"><a href="#description"><i class="fa fa-pencil" aria-hidden="true"></i>재고 추가</a></li>  
                                </ul>
                                <div id="myTabContent" class="tab-content custom-product-edit">
                                    <div class="product-tab-list tab-pane fade active in" id="description">
                                    	 <form action="/jewelry/product/stockupload.action" method="Post" id="stockform">
                                    	  <input type="hidden" name="storeNo" value=${ user.storeNo }> 
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">제품명</span>                                                        
                                                        <select class="form-control" name="productNo" id="cost">                                                        
                                                        	<c:forEach var="product" items="${products}">
                                                        		<option value="${product.productNo}" id="${product.productCost}" data-harry="${product.harry}">${product.productName}</option>                                                        		
                                                        	</c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">원가</span>                
                                                        <input type="text" class="form-control" name="price" placeholder="price"  id="price" readonly>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">형태</span>                                                       
                                                         <select class="form-control" name="shape">                                                         	
                                                         	<option value="반지">반지</option>
                                                         	<option value="팔찌">팔찌</option>
                                                         	<option value="목걸이">목걸이</option>
                                                         	<option value="귀걸이">귀걸이</option>
                                                         </select>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">색깔</span>                                                                                                                                   
                                                         <select class="form-control" name="detailColor">                                                        
                                                         	<option value="화이트">화이트</option>
                                                         	<option value="루비">루비</option>
                                                         	<option value="블랙">블랙</option>                                                         	
                                                         </select>
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">골드</span>
                                                        <select class="form-control" name="detailGold" id="detailGold">                                                        	
                                                         	<option value="14k">14k</option>
                                                         	<option value="18k">18k</option>
                                                         	<option value="24k">24k</option>                                                                                                                
                                                         </select>                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">중량</span>
                                                        <input type="text" name="detailCarat" class="form-control" placeholder="Carat" id="carat">
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">사이즈</span>
                                                       <input type="text" name="detailSize" class="form-control" placeholder="Size" id="size">
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">수량</span>
                                                        <input type="text" name="mount" class="form-control" placeholder="Mount" id="mount">
                                                    </div>                                                    
                                                </div>
                                            </div>                                          
                                        </div>    
                                         </form>                                  
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="text-center mg-b-pro-edt custom-pro-edt-ds">
                                                    <button class="btn btn-primary waves-effect waves-light m-r-10" id="stockupload">추가
														</button>
                                                    <button type="button" class="btn btn-warning waves-effect waves-light" id="cancel">취소
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