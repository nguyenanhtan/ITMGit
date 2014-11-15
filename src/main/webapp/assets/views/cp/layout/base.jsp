<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 

<!DOCTYPE html>
<html>
    <head>
        <title><tiles:insertAttribute name="title" ignore="true" /></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<c:url value="/assets/lib/bootstrap/css/bootstrap.css" />" type="text/css"/>
        <link href="<c:url value="/assets/lib/jqueryui/jqueryui.css" />" type="text/css"/>
        <link href="<c:url value="/assets/css/reset.css" />" type="text/css"/>
        <link href="<c:url value="/assets/css/style.css" />" type="text/css"/>
        <script src="<c:url value="/assets/lib/jquery/jquery.js"/>"></script>
        <script src="<c:url value="/assets/lib/jqueryui/jqueryui.js"/>"></script>
        <script src="<c:url value="/assets/lib/bootstrap/js/bootstrap.js"/>"></script>        
    </head>   
    <body>
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="footer" />
        
    </body>
</html>
