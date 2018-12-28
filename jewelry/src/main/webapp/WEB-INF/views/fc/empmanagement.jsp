<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Data Table | jeweler - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="http://example.com/myicon.png">
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
    <!-- x-editor CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/editor/select2.css">
    <link rel="stylesheet" href="../resources/css/editor/datetimepicker.css">
    <link rel="stylesheet" href="../resources/css/editor/bootstrap-editable.css">
    <link rel="stylesheet" href="../resources/css/editor/x-editor-style.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="../resources/css/data-table/bootstrap-editable.css">
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
    $(function(event){
    	
    	$('#employeeList').on('click','.sub',function(event){
    		
    		var no=$(this).attr('data-emno'); 		
    		var name=$('#employee'+no+" #name").text();
    		var phone=$('#employee'+no+" #phone").text();
    		var email=$('#employee'+no+" #email").text();
    		//var regdate=$('#employee'+no+" #regdate").text();
    		//var qdate=$('#employee'+no+" #qdate").text();
    		var type=$('#employee'+no+" #type").text();
    		
    		//수정
    		$.ajax({
				"url" : "empmanagement.action",
				"method" : "POST",
				"data": {
					"emNo":no,
					"userName":name,
					"userPhone":phone,
					"userEmail":email,
					//"regDate":regdate,
					//"qtDate":qdate,
					"userType":type
				},
				"success":function(data,status,xhr){
					alert("수정되었습니다.");
					$('#employeeList').load("employeelist.action",{"userNo":${user.userNo}});
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
                                    <h1>Products <span class="table-project-n">Data</span> Table</h1>
                                </div>
                            </div>
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                    <div id="toolbar">
                                        <select class="form-control">
												<option value="">Export Basic</option>
												<option value="all">Export All</option>
												<option value="selected">Export Selected</option>
											</select>
                                    </div>
                                    <a href="/jewelry/fc/employee.action">employee</a>
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                        data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead>
                                            <tr>
                                                <th data-field="state" data-checkbox="true"></th>
                                                <th data-field="id">이름</th>
                                                <th data-field="name" data-editable="true">아이디</th>
                                                <th data-field="company" data-editable="true">전화번호</th>
                                                <th data-field="price" data-editable="true">이메일</th>
												<th data-field="date" data-editable="true">입사일</th>
												<th data-field="task" data-editable="true">퇴사일</th>
												<th data-field="email" data-editable="true">권한</th>
                                                <th data-field="action">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody id="employeeList">
                                        	<c:forEach var="employee" items="${employees}"> 
                                            <tr id="employee${employee.emNo}">                                                            
                                                <td ></td>
                                                <td id="id">${employee.userId}</td>
                                                <td id="name">${employee.userName}</td>
                                                <td id="phone">${employee.userPhone}</td>
												<td id="email">${employee.userEmail}</td>
												<td id="regdate">${employee.regDate}</td>
                                                <td id="qdate">${employee.qtDate}</td>
												<td id="type">${employee.userType}</td>
                                                <td ><button class="sub" data-emno="${employee.emNo}" >수정</button>/<button>삭제</button></td>                                      
                                            </tr>                                          
                                            </c:forEach>         
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Static Table End -->
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
    <!-- data table JS
		============================================ -->
    <script src="../resources/js/data-table/bootstrap-table.js"></script>
    <script src="../resources/js/data-table/tableExport.js"></script>
    <script src="../resources/js/data-table/data-table-active.js"></script>
    <script src="../resources/js/data-table/bootstrap-table-editable.js"></script>
    <script src="../resources/js/data-table/bootstrap-editable.js"></script>
    <script src="../resources/js/data-table/bootstrap-table-resizable.js"></script>
    <script src="../resources/js/data-table/colResizable-1.5.source.js"></script>
    <script src="../resources/js/data-table/bootstrap-table-export.js"></script>
    <!--  editable JS
		============================================ -->
    <script src="../resources/js/editable/jquery.mockjax.js"></script>
    <script src="../resources/js/editable/mock-active.js"></script>
    <script src="../resources/js/editable/select2.js"></script>
    <script src="../resources/js/editable/moment.min.js"></script>
    <script src="../resources/js/editable/bootstrap-datetimepicker.js"></script>
    <script src="../resources/js/editable/bootstrap-editable.js"></script>
    <script src="../resources/js/editable/xediable-active.js"></script>
    <!-- Chart JS
		============================================ -->
    <script src="../resources/js/chart/jquery.peity.min.js"></script>
    <script src="../resources/js/peity/peity-active.js"></script>
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