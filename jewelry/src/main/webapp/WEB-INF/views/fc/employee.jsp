<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register | jeweler - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/jewelry/resources/img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/font-awesome.min.css">
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
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="/jewelry/resources/css/calendar/fullcalendar.print.min.css">
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/form/all-type-forms.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="/jewelry/resources/js/vendor/modernizr-2.8.3.min.js"></script>
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
			
			var regular = /^[a-zA-Z0-9]{6,18}$/;
			var regular2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			
			var id = $("#userId");
			var pswd = $("#userPswd");
			var name = $("#userName");
			var phone = $("#userPhone");
			var email = $("#userEmail");
			
			$("#register").click(function(evnet){
				
				if(!check(regular,id,"아이디는 6~18자의 영문 대소문자와 숫자만 입력할수 있습니다.")){
					return;
				}
				
				if(!check(regular,pswd,"패스워드는 6~18자의 영문 대소문자와 숫자만 입력할수 있습니다.")){
					return;
				}
				
				if(name.val()==""){
					alert("이름을 입력해 주세요");
					return;
				}
				if(phone.val()==""){
					alert("전화번호를 입력해 주세요");
					return;
				}
				
				if(email.val()==""){
					alert("이메일을 입력해 주세요");
					return;
				}
				
				if(!check(regular2,email,"적합하지 않은 이메일 형식 입니다.")){
					return;
				}
				
				$('#loginForm').submit();
				
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
                <div class="back-link back-backend">
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
			<div class="col-md-6 col-md-6 col-sm-6 col-xs-12">
				<div class="text-center custom-login">
					<h3>직원 등록</h3>
					<p></p>
				</div>
				<div class="hpanel">
					<div class="panel-body">
						<form action="/jewelry/fc/employee.action" method="post"
							id="loginForm">
							<input type="hidden" name="userType" value="employee"> 
							<input type="hidden" name="userStore" value="${user.userStore}">								
							<input type="hidden" name="storeNo" value="${user.userNo}">
							<div class="row">
								<div class="form-group col-lg-12">
									<label>아이디</label> <input id="userId" name="userId"
										class="form-control"> <span class="help-block small">6~18자의
										영문 대소문자와 숫자만 입력</span>
								</div>
								<div class="form-group col-lg-12">
									<label>패스워드</label> <input id="userPswd" name="userPswd"
										type="password" class="form-control"> <span
										class="help-block small">6~18자의 영문 대소문자와 숫자만 입력</span>
								</div>
								<!--    <div class="form-group col-lg-6">
                                    <label>패스워드 확인</label>
                                    <input type="password" class="form-control">
                                </div> -->
								<div class="form-group col-lg-12">
									<label>이름</label> <input id="userName" name="userName"
										class="form-control">
								</div>

								<div class="form-group col-lg-12">
									<label>전화번호</label> <input type="text" id="userPhone"
										name="userPhone" class="form-control"
										data-mask="99999999999" placeholder>
								</div>

								<div class="form-group col-lg-12">
									<label>이메일</label> <input id="userEmail" name="userEmail"
										class="form-control"><span
										class="help-block small">이메일 형식을 지켜주세요 ex)aaa123@naver.com</span>
								</div>
							</div>
						</form>
						<div class="text-center">
							<button id="register" class="btn btn-success btn-block loginbtn">등록</button>
							<a href="/jewelry/fc/employeeList.action?userNo=${user.userNo }"
								class="btn btn-default btn-block">취소</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <p>Copyright &copy; 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
            </div>
        </div>
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
    <script src="/jewelry/resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/jewelry/resources/js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
	<script src="/jewelry/resources/js/metisMenu/metisMenu.min.js"></script>
    <script src="/jewelry/resources/js/metisMenu/metisMenu-active.js"></script>
    <!-- touchspin JS
		============================================ -->
    <script src="/jewelry/resources/js/touchspin/jquery.bootstrap-touchspin.min.js"></script>
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
    <script src="/jewelry/resources/js/ionRangeSlider/ion.rangeSlider.min.js"></script>
    <script src="/jewelry/resources/js/ionRangeSlider/ion.rangeSlider.active.js"></script>
    <!-- rangle-slider JS
		============================================ -->
    <script src="/jewelry/resources/js/rangle-slider/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="/jewelry/resources/js/rangle-slider/jquery-ui-touch-punch.min.js"></script>
    <script src="/jewelry/resources/js/rangle-slider/rangle-active.js"></script>
    <!-- knob JS
    	============================================ -->	
    <script src="/jewelry/resources/js/metisMenu/metisMenu.min.js"></script>
    <script src="/jewelry/resources/js/metisMenu/metisMenu-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="/jewelry/resources/js/tab.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="/jewelry/resources/js/icheck/icheck.min.js"></script>
    <script src="/jewelry/resources/js/icheck/icheck-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="/jewelry/resources/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="/jewelry/resources/js/main.js"></script>
</body>
</html>