
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
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript">
    
    function execPostCode() {
	       new daum.Postcode({
	           oncomplete: function(data) {
	               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

	               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                   extraRoadAddr += data.bname;
	               }
	               // 건물명이 있고, 공동주택일 경우 추가한다.
	               if(data.buildingName !== '' && data.apartment === 'Y'){
	                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	               }
	               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	               if(extraRoadAddr !== ''){
	                   extraRoadAddr = ' (' + extraRoadAddr + ')';
	               }
	               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	               if(fullRoadAddr !== ''){
	                   fullRoadAddr += extraRoadAddr;
	               }

	               // 우편번호와 주소 정보를 해당 필드에 넣는다.
	               console.log(data.zonecode);
	               console.log(fullRoadAddr);
	               
	               
	               $("[name=acadd]").val(data.zonecode);
	               $("[name=acadd2]").val(fullRoadAddr);
	               
	               /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	               document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	               document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	           }
	        }).open();
	    }
    
    $("#myButtons1").click(function(){
		$('#myModal').modal('hide')
		
		$('#myModal').modal({backdrop: 'static', keyboard: false}) ;
		
		
		
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
                                    
                                    
                                    
							

 <button class="buttonS" data-toggle="modal" data-target="#myModal">
   거래처 등록
</button>

 
    <!-- The Modal write -->
    <div id="myModal" class="modal" style="width:40%;height:90%;left:30%;">
 
      <div class="modal-content">
      
         <div class="text-center m-b-md custom-login">
                    <h3>거래처 정보 입력</h3>
                    <p>* 은 필수 사항입니다!</p>
                </div>
                <div class="hpanel">
                    <div class="panel-body">
                        <form id="write" action="/jewelry/account/write.action" 
					method="post"">
                            
                            <div class="form-group">
                                <label class="control-label">* 상호명</label>
                                <input type="text" class="form-control" name="acstore">
                            </div>
                            <div class="form-group">
                                <label class="control-label">주소</label>
                            <div class="form-group">                   
							<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="acadd" type="text" readonly="readonly" >
    							<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
							</div>
							<div class="form-group">
    							<input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="acadd2" type="text" readonly="readonly" />
							</div>
							<div class="form-group">
    							<input class="form-control" placeholder="상세주소" name="acadd3" type="text"  />
							</div>
                                  
                            </div>
                            <div class="form-group">
                                <label class="control-label">전화번호</label>
                                <input type="text" class="form-control" name="achonumber">
                            </div>
                            <div class="form-group">
                                <label class="control-label">대표자 이름</label>
                                <input type="text" class="form-control" name="acname">
                            </div>
                            <div class="form-group">
                                <label class="control-label">대표 번호</label>
                                <input type="text" class="form-control" name="acphone">
                            </div>
                            <div class="form-group">
                                <label class="control-label">담당자</label>
                                <input type="text" class="form-control" name="acmaname">
                            </div>
                            <div class="form-group">
                                <label class="control-label">담당자 번호</label>
                                <input type="text" class="form-control" name="acmaphone">
                            </div>
                            <div class="form-group">
                                <label class="control-label">* 거래처 해리</label>
                                <input type="text" class="form-control" name="acheherry">
                            </div>
                           <!--  <div class="form-group">
                                <label class="control-label">* 거래처 해리</label>
                                <input type="number" class="form-control" name="acheherry">
                            </div> -->
                           	<input type="hidden" name="storeno" value="${ user.storeNo }">
                            <button class="btn btn-success btn-block loginbtn" id="submit">등록</button>
                            <a href="/jewelry/account/list.action" class="btn btn-default btn-block">취소</a>
                        </form>
                        
                        
                        
                    </div>
                </div>
      </div>
 
    </div>
    
    
    
    
                 
    <!-- model rewrite -->      
    
        <div id="myModal2" class="modal2" style="width:40%;height:90%;left:30%;">
 
      </div>
      
      
      
      
      <!-- model end -->                          
                                    
                                    
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                        data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead>
                                        
                                            <tr>
                                                <th data-field="no">No</th>
                                                <th data-field="acstore" data-editable="false">상호명</th>
                                                <th data-field="acadd2" data-editable="false">주소</th>
                                                <th data-field="acadd3" data-editable="false">상세주소</th>
                                                <th data-field="achonumber" data-editable="false">전화번호</th>
                                                <th data-field="acname" data-editable="false">대표</th>
                                                <th data-field="acphone" data-editable="false">대표번호</th>
                                                <th data-field="acmaname" data-editable="false">담당자</th>
                                                <th data-field="acmaphone" data-editable="false">담당자번호</th>
												<th data-field="acheherry" data-editable="false">해리</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
	                                        <c:forEach var="account" items="${ accounts }">
		                                    	<tr>
	 	                                            <td>${ account.acno }</td>
		                                            <td>${ account.acstore }</td>
		                                            <td>${ account.acadd2 }</td>
		                                            <td>${ account.acadd3 }</td>
		                                            <td>${ account.achonumber }</td>
		                                            <td>${ account.acname }</td>
		                                            <td>${ account.acphone }</td>
		                                            <td>${ account.acmaname }</td>
		                                           	<td>${ account.acmaphone }</td>
		                                           	<td>${ account.acheherry }</td>
		                                            <td><a href="/jewelry/account/rewrite.action?accountNo=${ account.acno }"><div class="buttonA">수정</div></a>
		                                       		<a id="acdel" href="/jewelry/account/delete.action?accountNo=${ account.acno }"><div class="buttonA">삭제</div></a></td>
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