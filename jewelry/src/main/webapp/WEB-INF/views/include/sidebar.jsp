    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href="index.html"><img class="main-logo" src="/jewelry/resources/img/logo/logo.png" alt="" /></a>
                <strong><img src="/jewelry/resources/img/logo/logosn.png" alt="" /></strong>
            </div>
            <div class="left-custom-menu-adp-wrap">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li class="active">
                            <a href="/jewelry/fc/empmanagement.action?userNo=${user.userNo}" aria-expanded="false"><i class="fa big-icon fa-home icon-wrap"></i><span class="mini-click-non">직원관리</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/fc/regmanagement.action" aria-expanded="false"><i class="fa big-icon fa-envelope icon-wrap"></i> <span class="mini-click-non">계정관리</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/product/product.action?userNo=${user.userNo}" aria-expanded="false"><i class="fa big-icon fa-flask icon-wrap"></i> <span class="mini-click-non">제품</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/product/order.action?userNo=${user.userNo}" aria-expanded="false"><i class="fa big-icon fa-pie-chart icon-wrap"></i> <span class="mini-click-non">주문</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/product/stock.action?userNo=${user.userNo}" aria-expanded="false"><i class="fa big-icon fa-bar-chart-o icon-wrap"></i> <span class="mini-click-non">재고</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/account/list.action" aria-expanded="false"><i class="fa big-icon fa-table icon-wrap"></i> <span class="mini-click-non">거래처</span></a>
                        </li>                 
                        <li id="removable">
                            <a  href="/jewelry/customer/customer2.action" aria-expanded="false"><i class="fa big-icon fa-files-o icon-wrap"></i> <span class="mini-click-non">고객관리</span></a>
                        </li>
                        <li><a href="/jewelry/receivables/list.action" aria-expanded="false"><i class="fa fa-bookmark icon-wrap sub-icon-mg" aria-hidden="true"></i> <span class="mini-click-non">미수관리</span></a></li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>