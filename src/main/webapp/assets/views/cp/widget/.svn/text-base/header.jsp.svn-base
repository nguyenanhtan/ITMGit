<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${baseUrl}">Popnet.vn</a>
        </div>
        <div class="navbar-collapse collapse">
            <c:if test="${viewer.user != null}">
                <!--ul class="nav navbar-nav">
                    <li><a href="${baseUrl}/dashboard.html">Tổng quan</a></li>
                </ul-->
                <ul class="nav navbar-nav">
                    <li class="dropdown" >
                        <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;">Quảng cáo <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${baseUrl}/pop/list.html">Quản trị chiến dịch</a></li>
                            <li><a href="${baseUrl}/pop/report.html">Thống kê quảng cáo</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="dropdown" >
                        <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;">Website <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${baseUrl}/site/list.html">Danh sách website</a></li>
                            <li><a href="${baseUrl}/site/report.html">Thống kê hiệu quả</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="dropdown" >
                        <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;">Tài khoản <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${baseUrl}/acc/deposit.html">Nạp tiền quảng cáo</a></li>
                            <li><a href="${baseUrl}/acc/withdraw.html">Rút doanh thu</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="dropdown" >
                        <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;">Quản trị <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${baseUrl}/admin/user.html">Danh sách thành viên</a></li>
                            <li><a href="${baseUrl}/admin/site.html">Danh sách website</a></li>
                            <li><a href="${baseUrl}/admin/report.html">Thống kê hệ thống</a></li>
                            <li><a href="${baseUrl}/admin/acc.html">Tài khoản quảng cáo</a></li>
                            <li><a href="${baseUrl}/admin/withdraw.html">Trả tiền doanh thu</a></li>
                        </ul>
                    </li>
                </ul>
            </c:if>
            <c:if test="${viewer.user != null}">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">${viewer.user.name} <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a>Log hoạt động</a></li>
                            <li><a>Tùy chọn</a></li>
                            <li><a>Tin nhắn</a></li>
                            <li class="divider"></li>
                            <li><a href="${baseUrl}/signout.html">Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </c:if>
            <c:if test="${viewer.user == null}">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a target="_blank" href="https://www.nganluong.vn/?portal=nganluong&page=forgot_login_password">Quên mật khẩu</a>
                    </li>
                    <li>
                        <a target="_blank" href="https://www.nganluong.vn/?portal=nganluong&page=user_register">Đăng ký</a>
                    </li>
                </ul>
            </c:if>
        </div><!--/.nav-collapse -->
    </div>
</div>
