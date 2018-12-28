<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="../resources/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="../resources/js/vendor/modernizr-2.8.3.min.js"></script>
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
                        <div class="product-status-wrap">
                            <h4>Products List</h4>
                            <div class="add-product">
                                <a href="product-edit.html">Add Product</a>
                            </div>
                            <table>
                                <tr>
                                    <th>Product Title</th>
                                    <th>Status</th>
                                    <th>Purchases</th>
                                    <th>Product sales</th>
                                    <th>Stock</th>
                                    <th>Price</th>
                                    <th>Setting</th>
                                </tr>
                              	<c:forEach var="order" items="${orders}">
                                <tr>
                                    <td>${order.productName}</td>
                                    <td>
                                        <button class="pd-setting">Active</button>
                                    </td>
                                    <td>${order.orderDate}</td>
                                    <td>${order.price}</td>
                                    <td>Out Of Stock</td>
                                    <td>$15</td>
                                    <td>
                                        <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                                        <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                                    </td>
                                </tr>
						</c:forEach>
                            </table>
                            <div class="custom-pagination">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
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
    <!-- plugins JS
		============================================ -->
    <script src="../resources/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="../resources/js/main.js"></script>
</body>

</html>