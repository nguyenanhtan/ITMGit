<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">    
<div class="row">
	<div class="col-md-12" id="alert-mes">

	</div>
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading">Them kip bao ve</div>
		  <div class="panel-body">
		  	<div class="list-group-item">
			   <div class="input-group">
				  <span class="input-group-addon">Ten Kip</span>
				  <input type="text" class="form-control" id="slot-name" placeholder="Ten kip">
				</div>
			</div>
		  	<div class="list-group-item">
			   <div class="input-group">
				  <span class="input-group-addon">Bat dau</span>
				  <input type="time" class="form-control" id="st-time" value="08:00">
				</div>
			</div>
			<div class="list-group-item">
				<div class="input-group">
				  <span class="input-group-addon">Ket thuc</span>
				  <input type="time" class="form-control"  id="end-time" value="08:00">
				</div>
			</div>
		  </div>
		  <div class="panel-footer">
		  	<!-- Standard button -->
				<button type="button" class="btn btn-default pull-right" id="add-slot">Add</button>
				<div class="clear"></div>
		  </div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading">Them phong</div>
		  <div class="panel-body">
		  	<div class="list-group-item">
			   <div class="input-group">
				  <span class="input-group-addon">Ten phong</span>
				  <input type="text" class="form-control" id="room" placeholder="Ten phong">
				</div>
			</div>
			<div class="list-group-item">
			   <div class="input-group">
				  <span class="input-group-addon">So cho</span>
				  <input type="number" min="0" value="20" class="form-control" id="cap-room" placeholder="So cho">
				</div>
			</div>
		  </div>
		  <div class="panel-footer">
		  	<!-- Standard button -->
				<button type="button" class="btn btn-default pull-right" id="add-room">Add</button>
				<div class="clear"></div>
		  </div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-6">
		<table class="table table-condensed" id="tab-slot">	
			<tr>
				<th>Kip</th>
				<th>Bat dau</th>
				<th>Ket thuc</th>
				<th>&nbsp</th>
			</tr>
			<c:set var="ind" value="${0}"/>
			<c:forEach items="${listSlots}" var="ls"> 
			<c:set var="ind" value="${ind+1}"/>	
			<tr>
				<td><c:out value="${ls.name}"/></td>
				<td><c:out value="${ls.start}"/></td>
				<td><c:out value="${ls.end}"/></td>
				<td>
					<span class="glyphicon glyphicon-remove-circle  pull-right rm-slot"></span>
		  			<span class="glyphicon glyphicon-pencil pull-right edit-slot"></span>
		  			
		  			<input type="hidden" class="id-slot" value='<c:out value="${ls.id}"/>'/>
		  		</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="col-md-6">
		<table class="table table-condensed" id="tab-room">	
			<tr>
				<th>STT</th>
				<th>Phong</th>
				<th>So cho</th>
				<th>&nbsp</th>
			</tr>
			<c:set var="ind" value="${0}"/>
			<c:forEach items="${listRooms}" var="ls"> 
			<c:set var="ind" value="${ind+1}"/>	
			<tr>
				<td><c:out value="${ind}"/></td>
				<td><c:out value="${ls.name}"/></td>
				<td><c:out value="${ls.capacity}"/></td>
				<td>
					<span class="glyphicon glyphicon-remove-circle  pull-right rm-room"></span>
		  			<span class="glyphicon glyphicon-pencil pull-right edit-room"></span>
		  			
		  			<input type="hidden" class="id-room" value='<c:out value="${ls.id}"/>'/>
		  		</td>
			</tr>
			</c:forEach>
			
		</table>
	</div>
</div>
</div>