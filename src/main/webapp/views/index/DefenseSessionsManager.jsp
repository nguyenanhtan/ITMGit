<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">    
<div class="row">
		<div class="col-md-12" id="alert-mes">

		</div>
		<div class="col-md-6">
			<div class="panel-group" id="accordion">
			  <div class="panel panel-default">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
			          Active
			        </a>
			      </h4>
			    </div>
			    <div id="collapseOne" class="panel-collapse collapse in">
			      <div class="panel-body">
			        
			        <div class="list-group" id="list-active">
			        	<c:forEach items="${listDefense}" var="defense">   
				        	<c:if test="${defense.active > 0}"> 
							   <a href="#" class="list-group-item list-group-item-success defense-session" data-toggle="modal" data-target="#form-edit-defensession"><c:out value="${defense.date}"/>
							   <input type="hidden" value='<c:out value="${defense.id}"/>' class="id-defense"/>
							  	<input type="hidden" value='<c:out value="${defense.active}"/>' class="active-defense"/>
							  	<input type="hidden" value='<c:out value="${defense.description}"/>' class="description-defense"/>
							  	<input type="hidden" value='<c:out value="${defense.date}"/>' class="date-defense"/>
							   </a>	

						   </c:if>				   						   
						</c:forEach>
					  
					  <!-- <a href="#" class="list-group-item list-group-item-success defense-session" data-toggle="modal" data-target="#form-edit-defensession">2014-12-13</a>
					  <a href="#" class="list-group-item list-group-item-success defense-session" data-toggle="modal" data-target="#form-edit-defensession">14/10/2014</a>
					  <a href="#" class="list-group-item list-group-item-success defense-session" data-toggle="modal" data-target="#form-edit-defensession">15/10/2014</a>
					   -->
					</div>
			      </div>
			    </div>
			  </div>
			  <div class="panel panel-default">
			    <div class="panel-heading">
			      <h4 class="panel-title">
			        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
			          Deactive
			        </a>
			      </h4>
			    </div>
			    <div id="collapseTwo" class="panel-collapse collapse">
			      <div class="panel-body">
			        <div class="list-group" id="list-deactive">
			        	<c:forEach items="${listDefense}" var="defense">   
				        	<c:if test="${defense.active <= 0}"> 
							   <a href="#" class="list-group-item disabled defense-session" data-toggle="modal" data-target="#form-edit-defensession"><c:out value="${defense.date}"/>
								<input type="hidden" value='<c:out value="${defense.id}"/>' class="id-defense"/>
							  	<input type="hidden" value='<c:out value="${defense.active}"/>' class="active-defense"/>
							  	<input type="hidden" value='<c:out value="${defense.description}"/>' class="description-defense"/>
							  	<input type="hidden" value='<c:out value="${defense.date}"/>' class="date-defense"/>
							   </a>
							   
						   </c:if>				   						   
						</c:forEach>
					  <!-- <a href="#" class="list-group-item disabled">12-8-2014</a>		  
					  <a href="#" class="list-group-item disabled">12/8/2014</a>		  
					  <a href="#" class="list-group-item disabled">12/8/2014</a>		  
					  <a href="#" class="list-group-item disabled">12/8/2014</a> -->		  
					  
					</div>
			      </div>
			    </div>
			  </div>
			  
			</div>
		</div>
		<div class="col-md-6">
			<div class="panel panel-default">
			  <div class="panel-heading">Them dot bao ve</div>
			  <div class="panel-body">
			    <form role="form">
				  <div class="form-group">
				    <label for="date-session">Ngay bao ve</label>
				    <input type="date" class="form-control" id="date-session" placeholder="Enter date">
				  </div>
				  <div class="form-group">
				    <label for="description-session">Description</label>
				    <input type="text" class="form-control" id="description-session" placeholder="Description">
				  </div>
				  
				  <div class="checkbox">
				    <label>
				      <input type="checkbox" id="active-defense"> Active
				    </label>
				  </div>
				  <button type="button" class="btn btn-default" id="add-defense">Them</button>
				</form>
			  </div>
			</div>

		</div>
</div>
<!-- <c:forEach items="${listDefense}" var="defense">    
	   		id= <c:out value="${defense.id}"/>		   						   
	   		des= <c:out value="${defense.description}"/>
	   		act= <c:out value="${defense.active}"/>
</c:forEach> -->
<div id="result"></div>

</div>

<div class="modal fade" id="form-edit-defensession">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">Edit Defensession</h4>
      </div>
      <div class="modal-body">
       
       	<div class="form-group">
		    <label for="date-session">Ngay bao ve</label>
		    <input type="date" class="form-control" id="edit-date-session" placeholder="Enter date">
		  </div>
		  <div class="form-group">
		    <label for="description-session">Description</label>
		    <input type="text" class="form-control" id="edit-description-session" placeholder="Description">
		  </div>
		  
		  <div class="checkbox">
		    <label>
		      <input type="checkbox" id="edit-active-session"> Active
		    </label>
		  </div>
		  <input type="hidden" id="edit-id-session">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default"  data-dismiss="modal" id="close-session">Close</button>
        <button type="button" class="btn btn-default" data-dismiss="modal" id="delete-session">Delete</button>
        <button type="button" class="btn btn-primary" id="save-session" data-dismiss="modal">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->