<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Data Table | jeweler - Material Admin Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="http://examp1le.com/myicon.png">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon"
	href="/jewelry/resources/img/favicon.ico">
<!-- Google Fonts
		============================================ -->
<link href="https://fonts.googleapis.com/css?family=Play:400,700"
	rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="/jewelry/resources/css/bootstrap.min.css">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/font-awesome.min.css">
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
<link rel="stylesheet"
	href="/jewelry/resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- metisMenu CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet"
	href="/jewelry/resources/css/metisMenu/metisMenu-vertical.css">
<!-- calendar CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/calendar/fullcalendar.min.css">
<link rel="stylesheet"
	href="/jewelry/resources/css/calendar/fullcalendar.print.min.css">
<!-- touchspin CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/touchspin/jquery.bootstrap-touchspin.min.css">
<!-- datapicker CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/datapicker/datepicker3.css">
<!-- forms CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/form/themesaller-forms.css">
<!-- colorpicker CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/colorpicker/colorpicker.css">
<!-- select2 CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/select2/select2.min.css">
<!-- chosen CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/chosen/bootstrap-chosen.css">
<!-- ionRangeSlider CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/ionRangeSlider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="/jewelry/resources/css/ionRangeSlider/ion.rangeSlider.skinFlat.css">
<!-- x-editor CSS
		============================================ -->
<link rel="stylesheet" href="/jewelry/resources/css/editor/select2.css">
<link rel="stylesheet"
	href="/jewelry/resources/css/editor/datetimepicker.css">
<link rel="stylesheet"
	href="/jewelry/resources/css/editor/bootstrap-editable.css">
<link rel="stylesheet"
	href="/jewelry/resources/css/editor/x-editor-style.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet"
	href="/jewelry/resources/css/data-table/bootstrap-table.css">
<link rel="stylesheet"
	href="/jewelry/resources/css/data-table/bootstrap-editable.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="/jewelry/resources/style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="/jewelry/resources/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="/jewelry/resources/js/vendor/modernizr-2.8.3.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){
    	
    	$('#employeeList').on('click','.sub',function(event){
    		
    		var no=$(this).attr('data-emno'); 		
    		var name=$('#employee'+no+" #name").text();
    		var phone=$('#employee'+no+" #phone").text();
    		var email=$('#employee'+no+" #email").text();
    		var firstDate=$('#employee'+no+" #firstdate").val();
    		var lastDate=$('#employee'+no+" #lastdate").val();
    		var type=$('#employee'+no+" #type").val();
    		
    		//수정
    		$.ajax({
				"url" : "empmanagement.action",
				"method" : "POST",
				"data": {
					"userNo":no,
					"userName":name,
					"userPhone":phone,
					"userEmail":email,
					"firstDate":firstDate,
					"lastDate":lastDate,
					"userType":type
				},
				"success":function(data,status,xhr){
					alert("수정되었습니다.");
					//$('#employeeList').load("employeelist.action",{"userNo":${user.userNo}});
				},
				"error":function(xhr,status,err){
					alert("실패");
				}
			});	
    		
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
		<!-- Static Table Start -->
		<div class="data-table-area mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="sparkline13-list">
							<div class="sparkline13-hd">
								<div class="main-sparkline13-hd">
									<h1>
										직원 <span class="table-project-n">정보</span> 관리
									</h1>
								</div>
							</div>
							<div class="sparkline13-graph">
								<div class="datatable-dashv1-list custom-datatable-overright">
									<div class="add-product">
										<a href="/jewelry/fc/employee.action">직원추가</a>
									</div>
									<table id="table" data-toggle="table" data-pagination="false"
										data-search="false" data-show-columns="false"
										data-show-pagination-switch="false" data-show-refresh="false"
										data-key-events="false" data-show-toggle="false"
										data-resizable="false" data-cookie="true"
										data-cookie-id-table="saveId" data-show-export="false"
										data-click-to-select="false" data-toolbar="#toolbar">
										<thead>
											<tr>
												<th data-field="id">아이디</th>
												<th data-field="name" data-editable="true">이름</th>
												<th data-field="company" data-editable="true">전화번호</th>
												<th data-field="price" data-editable="true">이메일</th>
												<th data-field="date" data-editable="false">입사일</th>
												<th data-field="task" data-editable="false">퇴사일</th>
												<th data-field="email">권한</th>
												<th data-field="action">수정</th>
											</tr>
										</thead>
										<tbody id="employeeList">
											<c:forEach var="employee" items="${employees}">
												<tr id="employee${employee.userNo}">

													<td id="id">${employee.userId}</td>
													<td id="name">${employee.userName}</td>

													<td id="phone">${employee.userPhone}</td>

													<td id="email">${employee.userEmail}</td>

													<td><input style="width: 100%; border: 0px none"
														id="firstdate" type="text" data-mask="9999/99/99"
														value="${employee.firstDate}"></td>

													<td><input style="width: 100%; border: 0px none"
														id="lastdate" type="text" data-mask="9999/99/99"
														value="${employee.lastDate}"></td>
													<td><select id="type" style="border: 0px none">
															<option value="${employee.userType}">${employee.userType}</option>
															<c:choose>
																<c:when test="${employee.userType eq 'employee'}">
																	<option value="manager">manager</option>
																</c:when>
																<c:when test="${employee.userType eq 'manager'}">
																	<option value="employee">employee</option>
																</c:when>
															</c:choose>
													</select></td>
													<td><button class="sub" data-emno="${employee.userNo}">수정</button></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
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
				</div>
			</div>
		</div>
		<!-- Static Table End -->
		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
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
	<script
		src="/jewelry/resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="/jewelry/resources/js/scrollbar/mCustomScrollbar-active.js"></script>
	<!-- metisMenu JS
		============================================ -->
	<script src="/jewelry/resources/js/metisMenu/metisMenu.min.js"></script>
	<script src="/jewelry/resources/js/metisMenu/metisMenu-active.js"></script>
	<!-- data table JS
		============================================ -->
	<script src="/jewelry/resources/js/data-table/bootstrap-table.js"></script>
	<script src="/jewelry/resources/js/data-table/tableExport.js"></script>
	<script src="/jewelry/resources/js/data-table/data-table-active.js"></script>
	<script
		src="/jewelry/resources/js/data-table/bootstrap-table-editable.js"></script>
	<script src="/jewelry/resources/js/data-table/bootstrap-editable.js"></script>
	<script
		src="/jewelry/resources/js/data-table/bootstrap-table-resizable.js"></script>
	<script
		src="/jewelry/resources/js/data-table/colResizable-1.5.source.js"></script>
	<script
		src="/jewelry/resources/js/data-table/bootstrap-table-export.js"></script>
	<!--  editable JS
		============================================ -->
	<script src="/jewelry/resources/js/editable/jquery.mockjax.js"></script>
	<script src="/jewelry/resources/js/editable/mock-active.js"></script>
	<script src="/jewelry/resources/js/editable/select2.js"></script>
	<script src="/jewelry/resources/js/editable/moment.min.js"></script>
	<script
		src="/jewelry/resources/js/editable/bootstrap-datetimepicker.js"></script>
	<script src="/jewelry/resources/js/editable/bootstrap-editable.js"></script>
	<script src="/jewelry/resources/js/editable/xediable-active.js"></script>
	<!-- Chart JS
		============================================ -->
	<script src="/jewelry/resources/js/chart/jquery.peity.min.js"></script>
	<script src="/jewelry/resources/js/peity/peity-active.js"></script>


	<!-- touchspin JS
		============================================ -->
	<script
		src="/jewelry/resources/js/touchspin/jquery.bootstrap-touchspin.min.js"></script>
	<script src="/jewelry/resources/js/touchspin/touchspin-active.js"></script>
	<!-- colorpicker JS
		============================================ -->
	<script src="/jewelry/resources/js/colorpicker/jquery.spectrum.min.js"></script>
	<script src="/jewelry/resources/js/colorpicker/color-picker-active.js"></script>
	<!-- datapicker JS
		============================================ -->
	<script src="/jewelry/resources/js/datapicker/bootstrap-datepicker.js"></script>
	<script src="/jewelry/resources/js/datapicker/datepicker-active.js"></script>
	<!-- input-mask JS
		============================================ -->
	<script src="/jewelry/resources/js/input-mask/jasny-bootstrap.min.js"></script>
	<!-- chosen JS
		============================================ -->
	<script src="/jewelry/resources/js/chosen/chosen.jquery.js"></script>
	<script src="/jewelry/resources/js/chosen/chosen-active.js"></script>
	<!-- select2 JS
		============================================ -->
	<script src="/jewelry/resources/js/select2/select2.full.min.js"></script>
	<script src="/jewelry/resources/js/select2/select2-active.js"></script>
	<!-- ionRangeSlider JS
		============================================ -->
	<script
		src="/jewelry/resources/js/ionRangeSlider/ion.rangeSlider.min.js"></script>
	<script
		src="/jewelry/resources/js/ionRangeSlider/ion.rangeSlider.active.js"></script>
	<!-- rangle-slider JS
		============================================ -->
	<script
		src="/jewelry/resources/js/rangle-slider/jquery-ui-1.10.4.custom.min.js"></script>
	<script
		src="/jewelry/resources/js/rangle-slider/jquery-ui-touch-punch.min.js"></script>
	<script src="/jewelry/resources/js/rangle-slider/rangle-active.js"></script>
	<!-- knob JS
    	============================================ -->
	<script src="/jewelry/resources/js/metisMenu/metisMenu.min.js"></script>
	<script src="/jewelry/resources/js/metisMenu/metisMenu-active.js"></script>

	<!-- tab JS
		============================================ -->
	<script src="/jewelry/resources/js/tab.js"></script>
	<!-- plugins JS
		============================================ -->
	<script src="/jewelry/resources/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script src="/jewelry/resources/js/main.js"></script>
</body>

</html>