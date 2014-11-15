<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">    
<div class="row">
	<div class="col-md-12" id="alert-mes">

	</div>
	<div class="col-md-12" id="head-row">
	
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

	</div>
	<div class="clear"></div>
<div class="col-md-12">
	<div class="panel panel-default">
	    <div class="panel-heading">
	      <h4 class="panel-title">
	        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
	          Them giang vien
	        </a>
	      </h4>
	    </div>
	    <div id="collapseOne" class="panel-collapse collapse">
	      <div class="panel-body">

				<div class="col-md-6">
					<div class="panel panel-default">
						<div class="panel-heading">
						  <h3 class="panel-title">Danh gia do phu hop</h3>
						</div>
						<div class="panel-body">
							<table class="table table-condensed">
								<tr>
									<th>Nhom de tai</th>
									<th>Do phu hop</th>
									
								</tr>
								<c:forEach items="${listCategory}" var="sc"> 
								<tr class="info mark-subject">
									<td>
										<c:out value="${sc.name}"/>										
										<input type="hidden" class="id-sc" value='<c:out value="${sc.id}"/>'>
									
									</td>
									<td><input type="number" class="form-control mark" value="5" min="0" max="10"></td>
								</tr>
								</c:forEach>
							</table>  	
						</div>
							
					</div>
				</div>
				<div class="col-md-6">
					<div class="list-group-item">
					  	<div class="input-group">
							<span class="input-group-addon">Ho ten</span>
							<input type="text" class="form-control" placeholder="Ho ten" id="ps-name">
						</div>
					</div>
					<div class="list-group-item">
						<div class="input-group">
							<span class="input-group-addon">Truong</span>
							<select type="check" class="form-control" id="select-institute">
								<c:forEach items="${listInstitute}" var="institute"> 	        		
					        		<option value='<c:out value="${institute.id}"/>'><c:out value="${institute.name}"/></option>
					        	</c:forEach>
				        	</select>
						</div>
					</div>
					<div class="list-group-item">
						<div class="input-group">
							<span class="input-group-addon">Bo mon</span>
							<select class="form-control" id="select-depart">
							  <option>---</option>
							  					  
							</select>
						</div>
					</div>
					<div class="list-group-item">
						<div class="input-group">
							<span class="input-group-addon">Hoc ham/Hoc vi</span>
							<select type="check" class="form-control" id="select-degree">
								<c:forEach items="${listDegrees}" var="degree"> 	        		
					        		<option value='<c:out value="${degree.id}"/>'><c:out value="${degree.name}"/></option>
					        	</c:forEach>
				        	</select>
						</div>
					</div>
					<div class="list-group-item">
						<div class="input-group">
							<span class="input-group-addon">Muc do chuyen gia</span>
							<input type="number" value="5" class="form-control" min="0" max="10" id="level-expert">
						</div>
					</div>
					<div class="list-group-item ">
						<button type="button" class="btn btn-default pull-right" id="ps-save">Luu lai</button>
						<div class="clear"></div>
					</div>
				</div>
				
	      </div>
	    </div>
	  </div>
				
	</div><!-- End them giang vien -->
</div>
<div class="row">
	<div class="col-md-12">
		<table  class="table table-condensed">
			<tr>
				<th>STT</th>
				<th>Ho ten</th>
				<th>Truong</th>
				<th>Bo mon</th>
				<th>Hoc ham/Hoc vi</th>
				<th>Muc chuyen gia</th>
			</tr>
			<c:set var="ind" value="${0}"/>
			<c:forEach items="${listProfessors}" var="ps"> 
			<c:set var="ind" value="${ind+1}"/>	
			<tr>
				<td><c:out value="${ind}"/></td>
				<td><c:out value="${ps.name}"/></td>
				<td><c:out value="${ps.institute}"/></td>
				<td><c:out value="${ps.department}"/></td>
				<td><c:out value="${ps.degree}"/></td>
				<td><c:out value="${ps.expertLevel}"/></td>
				
			</tr>
			</c:forEach>
		</table>
	</div>
</div>

</div>