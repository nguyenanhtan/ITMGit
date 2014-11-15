<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">    
<div class="row">
	<div class="col-md-12" id="alert-mes">

	</div>
	<div class="col-md-8">
		<div class="form-inline" id="form-ipt">
		<div class="input-group">
			  <span class="input-group-addon">Ten Sinh vien</span>
			  <input list="st-list" id="st-name" class="form-control" placeholder="Name">
			  <datalist id="st-list">
			  	<c:forEach items="${listStudents}" var="student"> 
				  <option class="opt" value='<c:out value="${student.name}"/>'><c:out value="${student.studentID}"/></option>
				</c:forEach> 
			  </datalist>
			</div>
			<button type="button" class="btn btn-success" id="btn-save"><span class="glyphicon gglyphicon glyphicon-ok"></span>Save</button>
		</div>
		<table class="table table-condensed" id="tab-student">
			<tr>
				<th>SHSV</th>
				<th>Ten sinh vien</th>
				<th>Ten de tai</th>	
				<th>Giang vien huong dan</th>			
			</tr>
			<c:forEach items="${listStudents}" var="student"> 
			<tr class="row-st">
				<td><c:out value="${student.studentID}"/></td>
				<td><c:out value="${student.name}"/></td>
				<td>
					<input class="form-control sub-name" placeholder="Subject" value='<c:out value="${student.title}"/>'>
					<input type="hidden" class="id-st" value='<c:out value="${student.id}"/>'>
				</td>
				<td>					
					<input list="spv-list" id="spv-name" class="form-control" placeholder="Supervior Name">
					  <datalist id="spv-list">
					  	<c:forEach items="${listProfessors}" var="ps"> 
						  <option class="opt" value='<c:out value="${ps.id}"/>' label='<c:out value="${ps.name}"/>'></option>
						</c:forEach> 
					  </datalist>
				</td>
				
			</tr>
			</c:forEach>
		</table>
		<!-- <div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Giao nhan de tai</h3>
		  </div>
		  <div class="panel-body">
		  	<div class="list-group">
		  		<div class="list-group-item">
				    <div class="input-group">
					  <span class="input-group-addon">Ten Sinh vien</span>
					  <input list="st-list" id="st-name" class="form-control" placeholder="Name">
					  <datalist id="st-list">
						  <option class="opt" value="Internet Explorer">fwe<input type="hidden" value="1"/></option>
						  <option class="opt" value="InFirefox"> sdfas</option>
						  <option class="opt" value="inChrome">sd</option>
						  <option class="opt" value="Opera">fsd</option>
						  <option class="opt" value="Safari">fsd</option>
					  </datalist>
					</div>
				</div>
				<div class="list-group-item">
					<div class="input-group">
					  <span class="input-group-addon">De tai</span>
					  <input type="text" class="form-control" placeholder="Subject">
					</div>
				</div>
			</div>
		  </div>
		  <div class="panel-footer">
				<button type="button" class="btn btn-default pull-right" id="ass-sub">Add</button>
				<div class="clear"></div>
		  </div>
		</div> -->
	</div>
	<div class="col-md-6">
	</div>
</div>
</div>