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
    <link rel="stylesheet" href="../resources/css/form/all-type-forms.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="../resources/js/vendor/modernizr-2.8.3.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	
	<script type="text/javascript">
	
		function check(regular,id,message){
			if(regular.test(id.val())){
				return true;
			}
			alert(message);
			id.val("");
			id.focus();
		}
		
		$(function(event){
			
			var regular = /^[a-zA-Z0-9]{6,18}$/;
			
			var id = $("#userId");
			var pswd = $("#userPswd");
			var name = $("#userName");
			var phone = $("#userPhone");
			
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
                    <h3>Registration</h3>
                    <p>Admin template with very clean and aesthetic style prepared for your next app. </p>
                </div>
                <div class="hpanel">
                    <div class="panel-body">
                        <form action="/jewelry/fc/register.action" method="post" id="loginForm">
                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <label>아이디</label>
                                    <input id="userId" name="userId" class="form-control">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>패스워드</label>
                                    <input id="userPswd" name="userPswd" type="password" class="form-control">
                                </div>
                             <!--    <div class="form-group col-lg-6">
                                    <label>패스워드 확인</label>
                                    <input type="password" class="form-control">
                                </div> -->
                                <!-- <div class="form-group col-lg-6">
                                    <label>이메일</label>
                                    <input id=""class="form-control">
                                </div> -->
                                <div class="form-group col-lg-6">
                                    <label>이름</label>
                                    <input id="userName" name="userName" class="form-control">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>전화번호</label>
                                    <input id="userPhone" name="userPhone" class="form-control">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>이메일</label>
                                    <input id="userEmail" name="userEmail" class="form-control">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>상호명</label>
                                    <input id="userStore" name="userStore" class="form-control">
                                </div>
                            </div>
                            <div class="text-center">
							<button id="register" class="btn btn-success btn-block loginbtn">Register</button>
							<a href="/jewelry/fc/login.action" class="btn btn-default btn-block">Cancel</a>
						</div>
                        </form>
						
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
    <!-- tab JS
		============================================ -->
    <script src="../resources/js/tab.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="../resources/js/icheck/icheck.min.js"></script>
    <script src="../resources/js/icheck/icheck-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="../resources/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="../resources/js/main.js"></script>
</body>
</html>