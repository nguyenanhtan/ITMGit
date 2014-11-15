<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="bs-sidebar hidden-print affix">
    <ul class="nav bs-sidenav">
        <li>
            <a href="${baseUrl}/dashboard.html">Tổng quan</a>
        </li>
        <li>
            <a href="javascript:;">Quảng cáo</a>
            <ul class="nav">
                <li><a href="${baseUrl}/pop/list.html">Quản trị chiến dịch</a></li>
                <li><a href="${baseUrl}/pop/report.html">Thống kê quảng cáo</a></li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">Website</a>
            <ul class="nav">
                <li><a href="${baseUrl}/site/list.html">Danh sách website</a></li>
                <li><a href="${baseUrl}/site/report.html">Thống kê hiệu quả</a></li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">Tài khoản</a>
            <ul class="nav">
                <li><a href="${baseUrl}/acc/deposit.html">Nạp tiền quảng cáo</a></li>
                <li><a href="${baseUrl}/acc/withdraw.html">Rút doanh thu</a></li>
            </ul>
        </li>
        <c:if test="${viewer.user != null && viewer.user.admin}" >
            <li>
                <a href="javascript:;">Quản trị</a>
                <ul class="nav">
                    <li><a href="${baseUrl}/admin/user.html">Danh sách thành viên</a></li>
                    <li><a href="${baseUrl}/admin/site.html">Danh sách website</a></li>
                    <li><a href="${baseUrl}/admin/pop.html">Danh sách chiến dịch</a></li>
                    <li><a href="${baseUrl}/admin/report.html">Thống kê hệ thống</a></li>
                    <li><a href="${baseUrl}/admin/acc.html">Tài khoản quảng cáo</a></li>
                    <li><a href="${baseUrl}/admin/withdraw.html">Trả tiền doanh thu</a></li>
                </ul>
            </li>
        </c:if>
    </ul>
</div>