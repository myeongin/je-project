    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href="/jewelry/home.action?storeNo=${ user.storeNo }"><img class="main-logo" src="/jewelry/resources/img/logo/logo.png" alt="" /></a>
                <strong><img src="/jewelry/resources/img/logo/logosn.png" alt="" /></strong>
            </div>
            <div class="left-custom-menu-adp-wrap">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li>
                            <a href="/jewelry/fc/regmanagement.action" aria-expanded="false"><i class="fa fa-television sub-icon-mg"></i> <span class="mini-click-non">계정관리</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/fc/empmanagement.action?userNo=${user.userNo}" aria-expanded="false"><i class="fa fa-bullseye sub-icon-mg"></i> <span class="mini-click-non">직원관리</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/price/price.action?userNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-line-chart sub-icon-mg"></i> <span class="mini-click-non">금 시세</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/product/product.action?storeNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-pencil sub-icon-mg"></i> <span class="mini-click-non">제품</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/product/order.action?storeNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-barcode sub-icon-mg"></i> <span class="mini-click-non">주문</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/product/stock.action?storeNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-table sub-icon-mg"></i> <span class="mini-click-non">재고</span></a>
                        </li>
                        <li>
                            <a href="/jewelry/product/sales.action?storeNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-building sub-icon-mg"></i> <span class="mini-click-non">판매</span></a>
                        </li>                 
                        <li>
                            <a  href="/jewelry/account/list.action?storeNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-tags sub-icon-mg"></i> <span class="mini-click-non">거래처</span></a>
                        </li>
                        <li>
                        	<a href="/jewelry/receivables/list.action?storeNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-bookmark icon-wrap sub-icon-mg"></i> <span class="mini-click-non">미수</span></a>
                        </li>
                        <li>
                        	<a href="/jewelry/customer/customer2.action?userNo=${user.storeNo}" aria-expanded="false"><i class="fa fa-female sub-icon-mg"></i><span class="mini-click-non">고객</span></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>