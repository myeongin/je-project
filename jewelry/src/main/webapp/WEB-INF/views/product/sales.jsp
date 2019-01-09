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
    
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/form/themesaller-forms.css">
     <!-- touchspin CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/touchspin/jquery.bootstrap-touchspin.min.css">
    <!-- datapicker CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/datapicker/datepicker3.css">
    <!-- colorpicker CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/colorpicker/colorpicker.css">
    <!-- select2 CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/select2/select2.min.css">
    <!-- chosen CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/chosen/bootstrap-chosen.css">
    <!-- ionRangeSlider CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/ionRangeSlider/ion.rangeSlider.css">
    <link rel="stylesheet" href="../resources/css/ionRangeSlider/ion.rangeSlider.skinFlat.css">
    
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
    		
    		$('#sales').on('click','.ps-setting',function(event){
    			
    			var salesNo=$(this).attr('data-salesNo');
    			var salesPrice=$('#tr'+salesNo+' #salesPrice').val();
					    			
    			$.ajax({
    				"url" : "salesupdate.action",
    				"method" : "POST",
    				"data":{"salesNo":salesNo,"salesPrice":salesPrice},    				
    				"success":function(data,status,xhr){
    					alert("판매되었습니다.");
    					$('#sales').load("salesviewlist.action",{"storeNo":${user.storeNo},"pageNo":${pageNo}});
    				},
    				"error":function(xhr,status,err){
    					alert("실패");
    				}
    			});	
    		});	
    		
    		
			/*$('#search').on('click',function(event){
    			  				
				var start=$('#start').val();
				var end=$('#end').val();
				var storeNo=${user.storeNo};
				
    			$.ajax({
    				"url" : "searchsales.action",
    				"method" : "POST",
    				"data":{"storeNo":storeNo,"start":start,"end":end},    				
    				"success":function(data,status,xhr){
    					alert("수정되었습니다.");
    					$('#salestable').load("salesviewlist.action",{"storeNo":${user.storeNo},"pageNo":${pageNo}});
    				},
    				"error":function(xhr,status,err){
    					alert("실패");
    				}
    			});	
    		});*/
    		
    		$('#sales').on('click','#search',function(event){
    			$('#searchform').submit();
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
        <div class="product-status mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap" id="sales">
                            <h4>판매관리</h4> 
                            			<form id="searchform" action="searchsales.action" method="get">
                            				<input type="hidden" name="storeNo" value="${user.storeNo }">  
                                         <div class="form-group data-custon-pick data-custom-mg" id="data_5" style="padding:0px 0px 10px 5px;float:left">                                                             
                                        <div class="input-daterange input-group" id="datepicker">                                        	                                      	
                                            	<input type="text" class="form-control" name="start" value="${start}">
                                            	<span class="input-group-addon">to</span>
                                            	<input type="text" class="form-control" name="end" value="${end}">                                           
                                        </div>
                                    </div>
                                    </form>  
                                     <button class="buttonS" id="search" style="height:34px;float:left">검색</button>
                                    <div style="text-align:right;"><strong  style="padding:20px 40px 20px 20px" >매출:<fmt:formatNumber value="${revenue}" pattern="#,###"/></strong><strong  style="padding:20px 40px 20px 20px">순수이익:<fmt:formatNumber value="${profit}" pattern="#,###"/></strong></div>
                                                                                       
                            <table>
                                <tr>
                                    <th>제품명</th>
                                    <th>형태</th>
                                    <th>칼라</th>
                                    <th>골드</th>
                                    <th>중량</th>
                                    <th>사이즈</th>
                                    <th>원가</th>
                                    <th>판매가격</th>
                                    <th>판매수량</th>
                                    <th>판매일</th>
                                    <th>구매자</th>
                                    <th>판매직원</th>
                                    <th>판매상태</th>                                                                                                           
                                </tr>
                                <c:forEach var="view" items="${views}">
                                <tr id="tr${view.salesNo}">                                
                                    <td>${view.productName}</td>
                                    <td>${view.shape}</td>
                                    <td>${view.detailColor}</td>
                                    <td>${view.detailGold}</td>
                                    <td>${view.detailCarat}</td>
                                    <td>${view.detailSize}</td>
                                    <td>${view.price}</td>
                                    <c:choose>
                                    	<c:when test="${view.salesDiv eq '판매대기' }">
                                    		<td><input id="salesPrice" type="text" value="${veiw.salesPrice}"></td>
                                    	</c:when>
                                    	<c:when test="${view.salesDiv eq '판매완료' }">
                                    		<td>${view.salesPrice}</td>
                                    	</c:when>
                                    </c:choose>                                                                  
                                    <td>${view.salesCount}</td>
                                    <td><fmt:formatDate value="${view.salesDate}" pattern="yyyy/MM/dd(E) HH:mm:ss"/></td>
                                    <td>${view.cuName }</td>
                                    <td>${view.userName}</td>
                                    <td>
                                    	<c:choose>
                                    		<c:when test="${view.salesDiv eq '판매대기' }">
                                   				<button class="ps-setting" data-salesNo="${view.salesNo}">${view.salesDiv}</button>
                                   			</c:when>
                                   			<c:when test="${view.salesDiv eq '판매완료' }">
                                   				<button class="pd-setting" disabled='disabled'>${view.salesDiv}</button>
                                   			</c:when>
                                   		</c:choose>	
                                    </td>                                                                                                                                                                                                    
                                </tr>
							</c:forEach>
                            </table>
                            <div class="custom-pagination">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        ${pager}
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
    
    <!-- touchspin JS
		============================================ -->
    <script src="../resources/js/touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <script src="../resources/js/touchspin/touchspin-active.js"></script>
    <!-- colorpicker JS
		============================================ -->
    <script src="../resources/js/colorpicker/jquery.spectrum.min.js"></script>
    <script src="../resources/js/colorpicker/color-picker-active.js"></script>
     <!-- datapicker JS
		============================================ -->
    <script src="../resources/js/datapicker/bootstrap-datepicker.js"></script>
    <script src="../resources/js/datapicker/datepicker-active.js"></script>
    <!-- input-mask JS
		============================================ -->
    <script src="../resources/js/input-mask/jasny-bootstrap.min.js"></script>
    <!-- chosen JS
		============================================ -->
    <script src="../resources/js/chosen/chosen.jquery.js"></script>
    <script src="../resources/js/chosen/chosen-active.js"></script>
    <!-- select2 JS
		============================================ -->
    <script src="../resources/js/select2/select2.full.min.js"></script>
    <script src="../resources/js/select2/select2-active.js"></script>
    <!-- ionRangeSlider JS
		============================================ -->
    <script src="../resources/js/ionRangeSlider/ion.rangeSlider.min.js"></script>
    <script src="../resources/js/ionRangeSlider/ion.rangeSlider.active.js"></script>
    <!-- rangle-slider JS
		============================================ -->
    <script src="../resources/js/rangle-slider/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="../resources/js/rangle-slider/jquery-ui-touch-punch.min.js"></script>
    <script src="../resources/js/rangle-slider/rangle-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="../resources/js/knob/jquery.knob.js"></script>
    <script src="../resources/js/knob/knob-active.js"></script>	
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