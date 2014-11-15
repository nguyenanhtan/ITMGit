<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="header">
    <div class="main clearfix">
        <a class="logo_head" href="<c:url value="/index.html"/>"></a>
        <div class="head_right">
            <a class="btn_logout" href="<c:url value="/j_spring_security_logout" />"></a>
            
            <div class="if_user">
                <h4>${username}</h4>
                <p>Wednesday, 01 august 2013, 00:23:43</p>
                <p class="hint">You last log in was Friday, 27 July 2013, 15:23</p>
            </div>
        </div>
    </div>
</div>