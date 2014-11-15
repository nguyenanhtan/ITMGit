<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="container">    
<div class="row">
	<div class="col-md-12" id="alert-mes">

	</div>
	<div class="col-md-10" id="head-row">
		<button class="btn btn-primary float-left" data-toggle="modal" data-target="#addInstitute">
		  <span class="glyphicon glyphicon-plus"> </span> Them truong
		</button>				
	</div>

</div>
<div class="row">
	<div class="col-md-6">
		 
		<div class="panel-group" id="accordion">
			<c:forEach items="${listInstitute}" var="institute"> 
			  <div class="panel panel-primary panel-institute">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href='#collapse<c:out value="${institute.id}"/>'>
			          <c:out value="${institute.name}"/>			          
			        </a>
			      </h4>
			    </div>
			    <div id='collapse<c:out value="${institute.id}"/>' class="panel-collapse collapse">
			      <div class="panel-body">
			      	<c:forEach items="${listDepartmentInIns}" var="listdepartment"> 
			      		<c:if test="${listdepartment.key == institute.id}">
						    <c:set var="departments" scope="session" value="${listdepartment.value}"/>
						</c:if>
			      	</c:forEach>
			        <ul class="list-group">
			        	<c:forEach items="${departments}" var="department"> 
						    <li class="list-group-item list-depart-item">					 
			  					<span class="glyphicon glyphicon-remove-circle pull-right remove-department" title="Remove"></span>
			  					<span class="glyphicon glyphicon-pencil pull-right edit-department" title="Edit"></span>
			  					
							    <c:out value="${department.name}"/>
							    <input type="hidden" value='<c:out value="${department.id}"/>' class="id-department"/>
						    </li>
					  	</c:forEach>
					</ul>
			      </div>
			    </div>
			    <div class="panel-footer">
			    	<input type="hidden" class="id-institute" value='<c:out value="${institute.id}"/>'/>
					<input type="hidden" class="name-institute" value='<c:out value="${institute.name}"/>'/>
					  
			    	<button class="btn btn-default add-department" data-toggle="modal" data-target="#addDepartment" title="Add department">
					  <span class="glyphicon glyphicon-plus"></span>
					  
					</button>
					<button class="btn btn-default edit-institute" title="Edit institute">
					  <span class="glyphicon glyphicon-pencil"></span>
					</button>
					<button class="btn btn-default remove-institute" title="Remove institute">
					  <span class="glyphicon glyphicon-remove-circle"></span>
					</button>						
			    </div>
			  </div>
			</c:forEach>
		</div>
		
	</div><!-- End col-md-6 -->
	<div class="col-md-6">
		<div class="panel panel-info" id="panel-department">
			<input type='hidden' id='id-department'/>
		  <div class="panel-heading">
		    <h3 class="panel-title"><span id="title-department">Danh sach lop hoc </span>
		    	<span class="glyphicon glyphicon-plus pull-right add-class" data-toggle="modal" data-target="#addClass" title="Add class"></span>		    	
		    </h3>
		  </div>
		  <div class="panel-body">
		
		    <ul class="list-group" id="list-class">
		    	
			  	<!-- <li class="list-group-item">CNPM-K54
				  	<span class="glyphicon glyphicon-pencil pull-right"></span>
		  			<span class="glyphicon glyphicon-remove-circle pull-right"></span>
	  			</li>
	  		
			  	<li class="list-group-item">HTTT-K54
				  	<span class="glyphicon glyphicon-pencil pull-right"></span>
		  			<span class="glyphicon glyphicon-remove-circle pull-right"></span>
	  			</li><li class="list-group-item">KHMT-K54
				  	<span class="glyphicon glyphicon-pencil pull-right"></span>
		  			<span class="glyphicon glyphicon-remove-circle pull-right"></span>
	  			</li><li class="list-group-item">TTM-K54
				  	<span class="glyphicon glyphicon-pencil pull-right"></span>
		  			<span class="glyphicon glyphicon-remove-circle pull-right"></span>
	  			</li><li class="list-group-item">MMT-K54
				  	<span class="glyphicon glyphicon-pencil pull-right"></span>
		  			<span class="glyphicon glyphicon-remove-circle pull-right"></span>
	  			</li> -->
			</ul>
		  </div>
		</div>
	</div>
</div>
<!-- Them truong -->
<div class="modal fade" id="addInstitute" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Add an Institute</h4>
		      </div>
		      <div class="modal-body">
		      	<div class="list-group-item">
			      	<div class="input-group">
					  <span class="input-group-addon">Name institute</span>
					  <input type="text" class="form-control" placeholder="Name institute" id="ins-name">
					</div>
				</div>
				<div class="list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Description</span>
					  <textarea class="form-control" rows="2" id="ins-des"></textarea>
					</div>
				</div>
									
		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" data-dismiss="modal" id="add-institute">Add</button>
		      </div>
		    </div>
		  </div>
		</div>
<!-- End them truong -->	
<!-- Them vien -->	
<div class="modal fade" id="addDepartment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="title-add-department">Them khoa/vien - Dai hoc Bach Khoa Ha Noi</h4>
		      </div>
		      <div class="modal-body">
		      	<div class="list-group-item">
			      	<div class="input-group">
					  <span class="input-group-addon">Ten khoa/vien</span>
					  <input type="text" class="form-control" placeholder="Ten khoa/vien" id="dep-name">
					</div>
				</div>
				<div class="list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Description</span>
					  <textarea type="text" class="form-control" row="2" id="dep-des"></textarea>
					</div>
				</div>
				<input type="hidden" id="dep-id-institute"/>
		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" id="add-department">Add</button>
		      </div>
		    </div>
		  </div>
		</div>
<!-- End them vien -->	
<!-- Them lop -->	
<div class="modal fade" id="addClass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Them lop</h4>
		      </div>
		      <div class="modal-body">
		      	<div class="list-group-item">
			      	<div class="input-group">
					  <span class="input-group-addon">Ten lop</span>
					  <input type="text" class="form-control" placeholder="Ten lop" id="cl-name">
					</div>
				</div>
				<div class="list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">Description</span>
					  <textarea class="form-control"  id="cl-des"></textarea>
					</div>
				</div>
				
		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" id="add-class" data-dismiss="modal">Add</button>
		      </div>
		    </div>
		  </div>
		</div>
<!-- End them lop -->
</div>