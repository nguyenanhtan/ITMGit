<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title><tiles:insertAttribute name="title" ignore="true" /></title>
        <link href="<c:url value="/assets/lib/jqueryui/jqueryui.css" />" rel="stylesheet"></link>
        <link href="<c:url value="/assets/css/reset.css" />" rel="stylesheet"></link>
        <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet"></link>
        <script src="<c:url value="/assets/lib/jquery/jquery.js"/>"></script>
        <script src="<c:url value="/assets/lib/jquery/form.js"/>"></script>
        <script src="<c:url value="/assets/lib/jqueryui/jqueryui.js"/>"></script>
        <script src="<c:url value="/assets/lib/bootstrap/js/bootstrap.js"/>"></script>       
    </head>   
    <body>
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="mainmenu" />            
        <tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="footer" />   
        <script>
            var baseUrl = '${baseUrl}';
            var assetsUrl = '${assetsUrl}';
            ${clientScript}
        </script>
    </body>
</html>