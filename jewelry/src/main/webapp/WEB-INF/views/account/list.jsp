
<%@ page import="java.util.List" %>
<%@ page language="java" 
		 contentType="text/html; charset=utf-8"
    	 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    	 
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Data Table | jeweler - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/jewelry/resources/img/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <link rel="stylesheet" href="/jewelry/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/owl.carousel.css">
    <link rel="stylesheet" href="/jewelry/resources/css/owl.theme.css">
    <link rel="stylesheet" href="/jewelry/resources/css/owl.transitions.css">
    <link rel="stylesheet" href="/jewelry/resources/css/animate.css">
    <link rel="stylesheet" href="/jewelry/resources/css/normalize.css">
    <link rel="stylesheet" href="/jewelry/resources/css/meanmenu.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/main.css">
    <link rel="stylesheet" href="/jewelry/resources/css/morrisjs/morris.css">
    <link rel="stylesheet" href="/jewelry/resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/metisMenu/metisMenu-vertical.css">
    <link rel="stylesheet" href="/jewelry/resources/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/calendar/fullcalendar.print.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/editor/select2.css">
    <link rel="stylesheet" href="/jewelry/resources/css/editor/datetimepicker.css">
    <link rel="stylesheet" href="/jewelry/resources/css/editor/bootstrap-editable.css">
    <link rel="stylesheet" href="/jewelry/resources/css/editor/x-editor-style.css">
    <link rel="stylesheet" href="/jewelry/resources/css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="/jewelry/resources/css/data-table/bootstrap-editable.css">
    <link rel="stylesheet" href="/jewelry/resources/style.css">
    <link rel="stylesheet" href="/jewelry/resources/css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript">
    $(function() {
    	
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
        
        <!-- Static Table Start -->
        <div class="data-table-area mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline13-list">
                            <div class="sparkline13-hd">
                                <div class="main-sparkline13-hd">
                                    <h1>거래처 <span class="table-project-n">정보</span> </h1>
                                </div>
                            </div>
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                    <div id="toolbar">
                                        <select class="form-control">
											<option value="all">전체</option>
										</select>
                                    </div>
                                    
                                    
                                    
                                    <!-- account list -->
                                    
                                    
                                    
                                    
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                        data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead>
                                        <a href="/jewelry/account/write.action?storeNo=${user.storeNo}">
                                        	<div id="write" class="buttonS">등록</div>
                                        </a>
                                            <tr>
                                                <th data-field="no">No</th>
                                                <th data-field="store" data-editable="true">상호명</th>
                                                <th data-field="add" data-editable="true">주소</th>
                                                <th data-field="number" data-editable="true">전화번호</th>
                                                <th data-field="name" data-editable="true">대표명</th>
												<th data-field="namephone" data-editable="true">대표번호</th>
												<th data-field="manager" data-editable="true">담당자</th>
												<th data-field="managerphone" data-editable="true">담장자번호</th>
                                                <th data-field="herry" data-editable="true">해리</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
	                                        <c:forEach var="account" items="${ accounts }">
		                                    	<tr>
	 	                                            <td>${ account.acno }</td>
		                                            <td>${ account.acstore }</td>
		                                            <td>${ account.acadd }</td>
		                                            <td>${ account.achonumber }</td>
		                                            <td>${ account.acname }</td>
		                                            <td>${ account.acphone }</td>
		                                            <td>${ account.acmaname }</td>
		                                           	<td>${ account.acmaphone }</td>
		                                            <td>${ account.acheherry }</td>
		                                            <td><a href="/jewelry/account/rewrite.action?acno=${ account.acno }"><div class="buttonA">수정</div></a>
		                                       		<a id="acdel" href="/jewelry/account/delete.action?acno=${ account.acno }"><div class="buttonA">삭제</div></a></td>
		                                    	</tr>
	                                    	</c:forEach>
                                        </tbody>
                                    </table>
                                    <!-- end account list -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Static Table End -->
        <jsp:include page="/WEB-INF/views/include/footer.jsp" />
    </div>

    <script src="/jewelry/resources/js/vendor/jquery-1.11.3.min.js"></script>
    <script src="/jewelry/resources/js/bootstrap.min.js"></script>
    <script src="/jewelry/resources/js/wow.min.js"></script>
    <script src="/jewelry/resources/js/jquery-price-slider.js"></script>
    <script src="/jewelry/resources/js/jquery.meanmenu.js"></script>
    <script src="/jewelry/resources/js/owl.carousel.min.js"></script>
    <script src="/jewelry/resources/js/jquery.sticky.js"></script>
    <script src="/jewelry/resources/js/jquery.scrollUp.min.js"></script>
    <script src="/jewelry/resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/jewelry/resources/js/scrollbar/mCustomScrollbar-active.js"></script>
    <script src="/jewelry/resources/js/metisMenu/metisMenu.min.js"></script>
    <script src="/jewelry/resources/js/metisMenu/metisMenu-active.js"></script>
    <script src="/jewelry/resources/js/data-table/bootstrap-table.js"></script>
    <script src="/jewelry/resources/js/data-table/tableExport.js"></script>
    <script src="/jewelry/resources/js/data-table/data-table-active.js"></script>
    <script src="/jewelry/resources/js/data-table/bootstrap-table-editable.js"></script>
    <script src="/jewelry/resources/js/data-table/bootstrap-editable.js"></script>
    <script src="/jewelry/resources/js/data-table/bootstrap-table-resizable.js"></script>
    <script src="/jewelry/resources/js/data-table/colResizable-1.5.source.js"></script>
    <script src="/jewelry/resources/js/data-table/bootstrap-table-export.js"></script>
    <script src="/jewelry/resources/js/editable/jquery.mockjax.js"></script>
    <script src="/jewelry/resources/js/editable/mock-active.js"></script>
    <script src="/jewelry/resources/js/editable/select2.js"></script>
    <script src="/jewelry/resources/js/editable/moment.min.js"></script>
    <script src="/jewelry/resources/js/editable/bootstrap-datetimepicker.js"></script>
    <script src="/jewelry/resources/js/editable/bootstrap-editable.js"></script>
    <script src="/jewelry/resources/js/editable/xediable-active.js"></script>
    <script src="/jewelry/resources/js/chart/jquery.peity.min.js"></script>
    <script src="/jewelry/resources/js/peity/peity-active.js"></script>
    <script src="/jewelry/resources/js/tab.js"></script>
    <script src="/jewelry/resources/js/plugins.js"></script>
    <script src="/jewelry/resources/js/main.js"></script>
</body>

</html>