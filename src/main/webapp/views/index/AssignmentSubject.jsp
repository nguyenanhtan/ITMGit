<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container">    
<div class="row">
	<div class="col-md-12" id="alert-mes">

	</div>
	<div class="col-md-10">
		<div class="form-inline" id="form-ipt">
		<div class="input-group">
			  <span class="input-group-addon">Ten Sinh vien</span>
			  <input list="st-list" id="st-name" class="form-control" placeholder="Name">
			  <datalist id="st-list">
			  	<c:forEach items="${listStudentDefense}" var="sdefense"> 
				  <option class="opt" value='<c:out value="${sdefense.superviseStudent.name}"/>'><c:out value="${sdefense.superviseStudent.studentID}"/></option>
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
				<th>Hội đồng</th>			
			</tr>
			<c:forEach items="${listStudentDefense}" var="sdefense"> 
			<tr class="row-st">
				<td><c:out value="${sdefense.superviseStudent.studentID}"/></td>
				<td><c:out value="${sdefense.superviseStudent.name}"/></td>
				<td>
					<input class="form-control sub-name" placeholder="Subject" value='<c:out value="${sdefense.superviseStudent.title}"/>'>
					<input type="hidden" class="id-def" value='<c:out value="${sdefense.id}"/>'>
					<input type="hidden" value="0" class="flag-change">
				</td>
				<td>									
						
					<select class="form-control spv-name">
					  	<c:forEach items="${listProfessors}" var="ps"> 
					  	<c:choose>
					  		<c:when test="${ps.id == sdefense.supervisor.id}">
						       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
						    </c:when>
						    <c:otherwise>
						    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
							</c:otherwise>
						</c:choose>
						</c:forEach> 
					</select>  
				</td>
				<td>
					
					<select class="form-control session-defense">
						<c:if test="${sdefense.session == null}">
			        		<option value='' selected>-------</option>
			        	</c:if>	
					  <c:forEach items="${listDefense}" var="defense">   
				        	<c:if test="${defense.active > 0}"> 					   
							  	
							  	<c:choose>
							  		<c:when test="${defense.id == sdefense.session.id}">
								       <option selected value='<c:out value="${defense.id}"/>' >
									  		<c:out value="${defense.date}"/>
									  	</option>
								    </c:when>
								    <c:otherwise>
								    	<option value='<c:out value="${defense.id}"/>' >
									  		<c:out value="${defense.date}"/>
									  	</option>
									</c:otherwise>
								</c:choose>
						   </c:if>				   						   
						</c:forEach>
					</select>
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