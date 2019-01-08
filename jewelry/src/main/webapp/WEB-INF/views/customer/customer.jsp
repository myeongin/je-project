<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
         <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Data Table | jeweler - Material Admin Template</title>
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
    
        <!-- chosen CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/chosen/bootstrap-chosen.css">
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
<!--     <script src="js/vendor/modernizr-2.8.3.min.js"></script> -->
    
    
    
    
    
    <!-- ==================================================== -->
    
    
    
    
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript">
/* 		$(function () { 
			$('.customerRE').on('click', function (event) {
				
				var content = $('#moviecomment-content').val();
				if(content.length == 0){
					alert('댓글의 내용을 입력하세요.');
					return;
				}
			
			
		} */
		
/* 		
		var data=$('#customer'+customerNo).serialize();
		
		$.ajax({
			"url" : "insertCustomer.action",
			"method" : "GET",
			"data": data,
			"success":function(data,status,xhr){
				alert("고객의 정보가 등록되었습니다.");
				$('#comment-list').load("customer.action",{"customerNo": ${ customer.customerNo }});
				$('#customerNo').val("");
			},
			"error":function(xhr,status,err){	
				alert("고객 등록에 실패하였습니다.")
			}
		});			 */
	
	</script>
    
    
<!--     <style>
    

    
    input[type="radio"] + label {
    color:#f2f2f2;
    font-family:Arial, sans-serif;
}

input[type="radio"]  {
    display:inline-block;
    width:19px;
    height:19px;
    margin:-2px 10px 0 0;
    vertical-align:middle;
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -38px top no-repeat;
    cursor:pointer;
}

input[type="radio"]:checked {
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -57px top no-repeat;
}
</style> -->
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
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
                                    
                                                          <!-- /////////// -->
                            <!-- Trigger the modal with a button -->
							<button type="button" class="btn btn-success loginbtn" data-toggle="modal" data-target="#myModal">신규 고객 등록 [ 멤버쉽 등록 ]</button>

							<!-- Modal for Registration -->
							<div id="myModal" class="modal fade" role="dialog">
							<div class="modal-dialog">

						    <!-- Modal content-->
	    
                    <div class="panel-body">
                    
                   <div class="text-center custom-login">
                    <h3><img src="/jewelry/resources/img/clipboard.png"> 신규 고객 등록</h3>
                    <p>신규 고객의 상세 정보를 입력해주세요. </p>
                </div>
                    
                        <form action="/jewelry/customer/insertCustomer.action" id="loginForm" method="post">
                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <label>고객 이름</label>
                                    <input class="form-control" name="cuName" >
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>고객 연락처</label>
                                    <input name="cuPhone" class="form-control">
                                </div>
                                <div class="form-group col-lg-6">
                                    <!-- <label>고객 나이</label> -->
                                    <!-- <input name="cuBirth"class="form-control"> -->
                                    <label>고객 나이</label>
                                    <br>
                                      <select data-placeholder="Choose a Country..." name="cuBirth" class="chosen-select" tabindex="-1">
										<option value="">고객의 나이를 선택해주세요</option>
										<option value="10대">10대</option>
										<option value="20대">20대</option>
										<option value="30대">30대</option>
										<option value="40대">40대</option>
										<option value="50대">50대</option>
										<option value="60대이상">60대 이상</option>
									  </select>
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>고객 이메일</label>
                                    <input class="form-control" name="cuEmail">
                                </div>
                                 <div class="i-checks pull-left">
                                <!--    <label>고객 성별</label>
                                    <input class="form-control" name="cuSex">
                                </div> -->
                                    <label>고객성별</label>
                                    <br>
                                    <input type="radio" id="MSex" name="cuSex" value="남자" /><i></i>&nbsp; 남성&nbsp;&nbsp;
                                    <input type="radio" id="MSex" name="cuSex" value="여자"/><i></i>&nbsp; 여성
								    
								</div>
                                
                                <input type="hidden" name="userNo" value="${user.storeNo}">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="register">Register</button>
                                <button class="Cancel" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
						
						 		 </div>
								</div>
                            <!-- ///////////////////////// -->
                                    
                                    
							<!-- Modal for update-->
							<div id="myModal1" class="modal fade" role="dialog">
							<div class="modal-dialog">

						    <!-- Modal content-->
	    
                    <div class="panel-body">
                    
                   <div class="text-center custom-login">
                    <h3>고객 정보 변경</h3>
                    <p>고객의 상세 정보를 입력해주세요. </p>
                </div>
                    
                        <form action="/jewelry/customer/customerUpdate.action" id="loginForm" method="POST">
                        <input type="hidden" id="cuNo" name="cuNo" value="${customer.cuNo}">
                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <label>고객 이름</label>
                                    <input class="form-control" id="cuName" name="cuName" value="${customer.cuName}" >
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>고객 연락처</label>
                                    <input name="cuPhone" id="cuPhone" class="form-control" value="${customer.cuPhone}">
                                </div>
                                <div class="form-group col-lg-6">
                                  <label>고객 나이</label>
                                    <br>
                                      <select data-placeholder="Choose a Country..." id="selectAge"name="cuBirth" class="chosen-select" tabindex="-1">
										<option value="">고객의 나이를 선택해주세요</option>
										<option value="10대" id="age10" >10대</option>
										<option value="20대" id="age20">20대</option>
										<option value="30대" id="age30">30대</option>
										<option value="40대" id="age40">40대</option>
										<option value="50대" id="age50">50대</option>
										<option value="60대이상" id="ageOver60">60대 이상</option>
									  </select>
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>고객 이메일</label>
                                    <input class="form-control" name="cuEmail" id="cuEmail" value="${customer.cuEmail}">
                                </div>
                                 <div class="i-checks pull-left">
                                    <label>고객성별</label>
                                    <br>
                                    <input type="radio" name="cuSex" id="cuSexM" value="남자" /><i></i>&nbsp; 남성&nbsp;&nbsp;
                                    <input type="radio" name="cuSex" id="cuSexF" value="여자"/><i></i>&nbsp; 여성
								    
								</div>
                                <input type="hidden" name="userNo" id="userNo" value="${user.storeNo}">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="update">수정</button>
                                <button class="Cancel" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
						
						 		 </div>
								</div>
                            <!-- ///////////////////////// -->
                                    
                                    
                                    
                                    
                                    
                                </div>
                            </div>
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">

                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true"  data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                        data-cookie-id-table="saveId"  data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead>
                                            <tr>
                                                
                                                <th data-field="id">고객번호</th>
                                                <th data-field="name">고객 이름</th>
                                                <th data-field="company">고객 번호</th>
                                                <th data-field="price">고객 나이</th>
												<th data-field="date">고객 이메일</th>
												<th data-field="task">고객 성별</th>
												<th data-field="email">멤버쉽 가입일</th>
                                                <th data-field="action">변경</th>
                                            </tr>
                                        </thead>
                                      
                                                                           
                                      <tbody>
                                        
                                        	<c:forEach var="customer"  items="${customers}">
									<tr>
                                    		    
                                                <td>${customer.cuNo}</td>
                                                <td>${customer.cuName}</td>
                                                <td>${customer.cuPhone}</td>
												<td>${customer.cuBirth}</td>
												<td>${customer.cuEmail}</td>
                                                <td>${customer.cuSex}</td>
												<td><fmt:formatDate value="${customer.regDate}" pattern="yyyy년 MM원 dd일   HH:mm:ss"/></td>
                                                
                                                <td >
                                                <%-- <button  type="button" ><a href="/jewelry/customer/customerUpdate.action?movieno=${movie.movieno}">수정</a></button> --%>
                                                
                                                                            <!-- Trigger the modal with a button -->
							                               
                                        
                                       
                                   
							
							<!-- <button type="button" data-toggle="modal" data-target="#myModal1"> -->
							<button type="button" class="showEditModal" data-customer-no="${ customer.cuNo }">
							<i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>

							
                                                
                                                
                                        
                                        	<button type="button"data-toggle="modal" 
                                              data-target="#WarningModalalert">
                                            <a class="Warning Warning-color mg-b-10"> 
                                               
                                            <i class="fa fa-trash-o"></i></a></button>
                                                


                                                          <div id="WarningModalalert" class="modal modal-adminpro-general FullColor-popup-DangerModal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-close-area modal-close-df">
                                        <a class="close" data-dismiss="modal" href="#"><i class="fa fa-close"></i></a>
                                    </div>
                                    <div class="modal-body">
                                        <span class="adminpro-icon adminpro-warning-danger modal-check-pro information-icon-pro"></span>
                                        <h2>경고</h2><br>
                                        <p>고객 정보를 삭제 할 경우 복원이 힘들 수 도 있습니다. <br>그래도 지우시겠습니까?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a data-dismiss="modal" href="#"><span style="color: white;">Cancel</span></a>
                                    
                                        <a href="/jewelry/customer/customerDelete.action?cuNo=${customer.cuNo}&userNo=${user.storeNo}"><span style="color: white;">Process</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                                                </td>
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
        <div class="footer-copyright-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copy-right">
                           
      
                        </div>
                    </div>
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
<!--     <script src="../resources/js/data-table/bootstrap-table-editable.js"></script> -->
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
    
    <!-- icheck JS
		============================================ -->
    <script src="/jewelry/resources/js/icheck/icheck.min.js"></script>
    <script src="/jewelry/resources/js/icheck/icheck-active.js"></script>
    
    
        <!-- modals CSS
		============================================ -->
    <link rel="stylesheet" href="/jewelry/resources/css/modals.css">
    
    
     <!-- mCustomScrollbar JS
		============================================ -->
    <script src="/jewelry/resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/jewelry/resources/js/scrollbar/mCustomScrollbar-active.js"></script>
    
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
    <script src="/jewelry/resources/js/knob/jquery.knob.js"></script>
    <script src="/jewelry/resources/js/knob/knob-active.js"></script>

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
    
    <script type="text/javascript">
		$(function() {
			$('.showEditModal').click(function(event) {
				var names = ['cuNo', 'cuName', 'cuPhone', 'cuBirth', 'cuEmail', 'cuSex', 'storeNo'];
				var tdList = $(this).parents('tr').find('td');
				for (var i = 0; i < 7; i++) {
					var content = $(tdList[i]).text();					
					if (i == 3) {
						$("select[name='cuBirth']").val(content).trigger("chosen:updated");

						
					}
				if (i == 5) {
						if (content === '남자') {
							$('#cuSexM').iCheck('check');
							
						} else if (content === '여자') {
							$('#cuSexF').iCheck('check');
							
						}
					}
					
					$('#' + names[i]).val( content );
				}	
				
				$('#myModal1').modal('show');
			});
		});
     </script>

</body>

</html>
