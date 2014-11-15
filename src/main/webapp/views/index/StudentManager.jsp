<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">    
<div class="row">
	<div class="col-md-12" id="alert-mes">

	</div>
	<div class="col-md-12" id="head-row">
		<button class="btn btn-primary float-left" data-toggle="modal" data-target="#addStudent">
		  <span class="glyphicon glyphicon-plus"> </span> Them sinh vien
		</button>
	<!-- 	<button class="btn btn-primary float-left" id="test">
		  <span class="glyphicon glyphicon-plus"> </span> Them
		</button> -->
		<div class="col-md-3">
			<div class="input-group">
			  <span class="input-group-addon">Loc theo lop</span>
			  <select type="check" class="form-control" id="filter-class">
			  	
				<option value="all" selected>All</option>
				<c:forEach items="${listClass}" var="classes"> 	        		
	        		<option value='<c:out value="${classes.id}"/>'><c:out value="${classes.name}"/></option>
	        	</c:forEach>
				
			  </select>
			</div>
		</div>
		<div class="col-md-3">
			<div class="input-group">
			  <span class="input-group-addon">Loc theo tinh trang</span>
			  <select type="check" class="form-control" id="filter-status">
			  	
				<option value="all" selected>All</option>
				<c:forEach items="${listStatus}" var="status"> 	        		
	        		<option value='<c:out value="${status.id}"/>'><c:out value="${status.description}"/></option>
	        	</c:forEach>
				
			  </select>
			</div>
		</div>
		

		<div class="modal fade" id="addStudent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Them sinh vien</h4>
		      </div>
		      <div class="modal-body">
		      	<div class="list-group-item">
			      	<div class="input-group">
					  <span class="input-group-addon">Ho ten</span>
					  <input type="text" class="form-control" placeholder="Ho ten" id="st-name">
					</div>
				</div>
				<div class="list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Ma sinh vien</span>
					  <input type="text" class="form-control" placeholder="Ma sinh vien" id="st-id">
					</div>
				</div>
				<div class="list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Email</span>
					  <input type="email" class="form-control" placeholder="Email" id="st-email">
					</div>
				</div>
				<div class="list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Dien thoai</span>
					  <input type="text" class="form-control" placeholder="Dien thoai" id="st-tel">
					</div>
				</div>
				<div class="col-lg-6 list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Khoa</span>
					  <select type="check" class="form-control" id="select-promotion">
					  							
						<c:forEach items="${listPromotion}" var="promotion"> 	        		
			        		<option value='<c:out value="${promotion.id}"/>'><c:out value="${promotion.name}"/></option>
			        	</c:forEach>
						
					  </select>
					</div>
				</div>
				<div class="col-lg-6 list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Loai hinh</span>
					  <select type="check" class="form-control" id="select-type">
					  							
						<c:forEach items="${listType}" var="type"> 	        		
			        		<option value='<c:out value="${type.id}"/>'><c:out value="${type.description}"/></option>
			        	</c:forEach>
						
					  </select>
					</div>
				</div>	
				<div class="col-lg-6 list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Lop</span>
					  <select type="check" class="form-control" id="select-class">
					  							
						<c:forEach items="${listClass}" var="classes"> 	        		
			        		<option value='<c:out value="${classes.id}"/>'><c:out value="${classes.name}"/></option>
			        	</c:forEach>
						
					  </select>
					</div>
				</div>		
				<div class="col-lg-6 list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Lop</span>
					  <select type="check" class="form-control" id="select-status">
					  							
						<c:forEach items="${listStatus}" var="status">       		
			        		<option value='<c:out value="${status.id}"/>'><c:out value="${status.description}"/></option>
			        	</c:forEach>
						
					  </select>
					</div>
				</div>		
				
					
					<div class="clear"></div>
		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" id="st-add">Add</button>
		      </div>
		    </div>
		  </div>
		</div>

	</div>
	<div class="col-lg-12">
	<table class="table table-hover">
	  <thead>
	  	<tr>
	  		<th>#</th>
	  		<th>StudentID</th>
	  		<th>Student Name</th>
	  		<th>Prommotion</th>
	  		<th>Class</th>
	  		<th>Email</th>
	  		<th>Phone</th>
	  		<th>Status</th>
	  		<th>&nbsp</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:set var="ind" value="${0}"/>
	  	<c:forEach items="${listSuperviseStudent}" var="student"> 
	  		<c:set var="ind" value="${ind+1}"/>
		  	<tr class="active st-row">
		  		<td><c:out value="${ind}"/></td>
		  		<td><c:out value="${student.studentID}"/></td>
		  		<td><c:out value="${student.name}"/></td>
		  		<td>
		  			<c:forEach items="${listPromotion}" var="promotion"> 
			  			<c:if test="${student.promotion == promotion.id}">
						   <c:out value="${promotion.name}"/>
						</c:if>		  				
		  			</c:forEach>
		  		</td>
		  		<td class="class-name">
		  			<c:forEach items="${listClass}" var="clss"> 
			  			<c:if test="${student.classId == clss.id}">
						   <c:out value="${clss.name}"/>
						</c:if>		  				
		  			</c:forEach>		  			
		  		</td>
		  		<td><c:out value="${student.email}"/></td>
		  		<td><c:out value="${student.phone}"/></td>
		  		<td class="status-name">
		  			<c:forEach items="${listStatus}" var="stt"> 
			  			<c:if test="${student.status == stt.id}">
						   <c:out value="${stt.description}"/>
						</c:if>		  				
		  			</c:forEach>
		  		</td>
		  		<td>
		  			<span class="glyphicon glyphicon-pencil"></span>
		  			<span class="glyphicon glyphicon-remove-circle rm-spv-st"></span>
		  			<input type="hidden" class="id-spv-st" value='<c:out value="${student.id}"/>'/>
		  		</td>
		  		
		  	</tr>
	  	</c:forEach>
	  </tbody>
	  
	</table>
</div>
</div>
</div>