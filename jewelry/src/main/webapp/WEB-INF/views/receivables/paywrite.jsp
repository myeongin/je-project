<%@ page import="com.jewelry.vo.account" %>
<%@ page import="com.jewelry.vo.receivables" %>
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
	$(function(event) {
		
		
		
	});
	
	</script>
	
	
	
	
</head>


<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<div class="color-line"></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="back-link back-backend">
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-md-4 col-sm-4 col-xs-12">
                <div class="text-center m-b-md custom-login">
                    <h3>결제 정보 입력</h3>
                </div>
                <div class="hpanel">
                    <div class="panel-body">
                        <form id="paywrite" action="/jewelry/receivables/paywrite.action" method="post">
                            
                            <div class="form-group">
                                <label class="control-label">상호명</label>
                                <input type="text" class="form-control" name="acstore">
                                
                                <div id="storeCk" class="buttonS">검색</div> <a href="/jewelry/account/write.action"><div class="buttonS">거래처 등록</div></a> 
                                <p>거래처에 등록되어 있어야만 결제가 가능합니다</p>
                            </div>
                            <div class="form-group">
                                <label class="control-label">금 중량  ( 단위 : g )</label>
                                <input type="number" class="form-control" name="recarat">
                            </div>
                            <div class="form-group">
                                <label class="control-label">현금</label>
                                <input type="number" class="form-control" name="remoney">
                            </div>
                            <div class="form-group">
                                <label class="control-label">거래 해리</label>
                                <input type="number" class="form-control" name="acheherry">
                            </div>
                            
                            <button class="btn btn-success btn-block loginbtn" id="submit">등록</button>
                            <a href="/jewelry/receivables/list.action" class="btn btn-default btn-block">취소</a>
                        </form>
                        
                        
                        
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
        </div>
        <div class="row">
            <div class="col-md-12 col-md-12 col-sm-12 col-xs-12 text-center">
            </div>
        </div>
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