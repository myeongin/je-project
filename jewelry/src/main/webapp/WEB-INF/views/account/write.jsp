<%@ page import="com.jewelry.vo.account" %>
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
	<script>
	$(function(event) {
		$('#add').click(function(event) {
			new daum.Postcode({
		        oncomplete: function(data) {
		        	 var roadAddr = data.roadAddress; // 도로명 주소 변수
		                var extraRoadAddr = ''; // 참고 항목 변수

		                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                    extraRoadAddr += data.bname;
		                }
		                // 건물명이 있고, 공동주택일 경우 추가한다.
		                if(data.buildingName !== '' && data.apartment === 'Y'){
		                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                if(extraRoadAddr !== ''){
		                    extraRoadAddr = ' (' + extraRoadAddr + ')';
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('sample4_postcode').value = data.zonecode;
		                document.getElementById("sample4_roadAddress").value = roadAddr;
		                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
		                
		                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
		                if(roadAddr !== ''){
		                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
		                } else {
		                    document.getElementById("sample4_extraAddress").value = '';
		                }

		                var guideTextBox = document.getElementById("guide");
		                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
		                if(data.autoRoadAddress) {
		                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
		                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
		                    guideTextBox.style.display = 'block';

		                } else if(data.autoJibunAddress) {
		                    var expJibunAddr = data.autoJibunAddress;
		                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
		                    guideTextBox.style.display = 'block';
		                } else {
		                    guideTextBox.innerHTML = '';
		                    guideTextBox.style.display = 'none';
		                }
		            }
		    }).open();
		});
	});
	    
	</script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    
	
	<script type="text/javascript">
	$(function(event) {
		var store = $("#acstore");
		var herry = $("#acheherry");
		
		$("#submit").click(function(event) {
			if(store.val()=="") {
				alert("상호명을 입력 해 주세요");
				return;
			}
			if(herry.val()==""){
				alert("해리는 숫자로만 입력이 가능합니다");
				return;
			}
		});
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
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-md-4 col-sm-4 col-xs-12">
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
                                <label class="control-label">주소</label><button id="add" class="buttonS">주소검색</button>
                                <input type="text" class="form-control" name="acadd">
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
                                <input type="number" class="form-control" name="acheherry">
                            </div>
                            
                            <button class="btn btn-success btn-block loginbtn" id="submit">등록</button>
                            <a href="/jewelry/account/list.action" class="btn btn-default btn-block">취소</a>
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