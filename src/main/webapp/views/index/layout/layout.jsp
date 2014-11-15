     
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<style><tiles:insertAttribute name="style" ignore="true"/></style>
<link href="<c:url value="/assets/lib/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
<link href='<c:url value="/assets/css/style.css" />' rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<tiles:insertAttribute name="mainmenu"/>
<tiles:insertAttribute name="body"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
  <script src="<c:url value="/assets/js/jquery-1.11.1.js"/>"></script>
  <script src="<c:url value="/assets/js/script.js"/>"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="<c:url value="/assets/lib/bootstrap/js/bootstrap.min.js"/>"></script>
	<script> <tiles:insertAttribute name="script" ignore="true"/> </script>
</body>
</html>