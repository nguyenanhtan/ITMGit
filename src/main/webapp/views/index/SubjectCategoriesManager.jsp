<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">    
<div class="row">
	<div class="col-md-12" id="alert-mes">

	</div>
	<div class="col-md-6">
		<table class="table table-condensed" id="tab-subject">
			<tr>
				<th>STT</th>
				<th>Ten nhom de tai</th>
			</tr>
			<c:set var="ind" value="${0}"/>
			<c:forEach items="${listCategory}" var="sc"> 
			<c:set var="ind" value="${ind+1}"/>	
				<tr>
					<td><c:out value="${ind}"/></td>
					<td>
						<c:out value="${sc.name}"/>
						<span class="glyphicon glyphicon-remove pull-right rm-subcategory" onclick="rmRow(this)"></span>
						<input type="hidden" class="id-sc" value='<c:out value="${sc.id}"/>'>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="col-md-6">
		<div class="panel panel-default">
		  <div class="panel-body">
		  	<div class="list-group-item">
			   <div class="input-group">
				  <span class="input-group-addon">Subject name</span>
				  <input type="text" class="form-control" placeholder="Subject name" id="sc-name">
				</div>
			</div>
			<div class="list-group-item">
				<div class="input-group">
				  <span class="input-group-addon">Subject description</span>
				  <input type="text" class="form-control" placeholder="Subject description" id="sc-des">
				</div>
			</div>
		  </div>
		  <div class="panel-footer">
		  	<!-- Standard button -->
				<button type="button" class="btn btn-default pull-right" id="add-subject-category">Add</button>
				<div class="clear"></div>
		  </div>
		</div>
	</div>
</div>
</div>