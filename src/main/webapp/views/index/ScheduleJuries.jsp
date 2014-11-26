<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<link href='<c:url value="/assets/css/jquery.mCustomScrollbar.min.css" />' rel="stylesheet" type="text/css" media="all"/>
  <div class="container">
  	<div class="row">
  		<div class="col-md-12" id="alert-mes">

		</div>
		<div class="col-md-12 form-inline function">
		<button class="btn btn-primary" data-toggle="modal" data-target="#myStudent">
		  <span class="glyphicon glyphicon-plus"> </span> Them sinh vien
		</button>

		<!-- Modal -->
		<div class="modal fade" id="myStudent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Them sinh vien vao hoi dong ngay 1/6/2015</h4>
		      </div>
		      <div class="modal-body">
		        <div class="checkbox list-group-item">
				    <label>
				      <input type="checkbox"> Nguyen Van Du
				    </label>
				</div>
				<div class="checkbox list-group-item">
				    <label>
				      <input type="checkbox"> Le Thanh Chuong
				    </label>
				</div>
				<div class="checkbox list-group-item">
				    <label>
				      <input type="checkbox"> Pham Van Hung
				    </label>
				</div>

		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>

		<!-- Button trigger modal -->
		<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
		  <span class="glyphicon glyphicon-plus"> </span> Them giang vien
		</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Them giang vien vao hoi dong ngay 1/6/2015</h4>
		      </div>
		      <div class="modal-body" id="list-teacher">
		        <!-- <div class="checkbox list-group-item">
				    <label>
				      <input type="checkbox"> Nguyen Tuan Dung
				    </label>
				</div>
				<div class="checkbox list-group-item">
				    <label>
				      <input type="checkbox"> Huynh Thanh Binh
				    </label>
				</div>
				<div class="checkbox list-group-item">
				    <label>
				      <input type="checkbox"> Pham Dang Hai
				    </label>
				</div>
 -->
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="btn btn-success" id="btn-save">
			<span class="glyphicon glyphicon-ok"> </span> Luu lai
		</div>

		</div>


		<div class="col-md-12 form-inline function">
  			<div class="form-group">
			    <div class="input-group">
			      <div class="input-group-addon">Chon hoi dong</div>
			        <select class="form-control" id="select-defense">
			        	<c:set var="all"  value="ALL"/>
			        	<c:choose>
					  		<c:when test="${all == sessionActive}">
						       <option selected value='ALL' >
							  		-- All --
							  	</option>
						    </c:when>
						    <c:otherwise>
						    	<option value='ALL' >
							  		-- All --
							  	</option>
							</c:otherwise>
						</c:choose>
					  <c:forEach items="${listDefense}" var="defense">   
				        	<c:if test="${defense.active > 0}"> 					   
							  	
							  	<c:choose>
							  		<c:when test="${defense.id == sessionActive}">
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
			    </div>
			 </div>
  			

  			<div class="form-group">
			    <div class="input-group">
			        <div class="input-group-addon">Sap xep theo</div>
			        <select class="form-control ">
						<option value="Supervisor">Giao vien huong dan</option>
						<option value="StudentID">Ma Sinh Vien</option>
						<option value="Slot">Kip</option>
						<option value="Room">Phong</option>
						<option value="Room-Slot">Phong-Kip</option>
						<option value="Slot-Room">Kip-Phong</option>
						<option value="Examiner1">Phan bien 1</option>
						<option value="Examiner2">Phan bien 2</option>
						<option value="President">Chu tich</option>
						<option value="Secretary">Thu ky</option>
						<option value="AdditionalMember">Uy vien</option>
					</select>
			    </div>
			</div>
  			
			<div class="form-group">
			    <div class="input-group form-inline">
			        <div class="input-group-addon">Loc theo</div>
			        <select class="form-control ">
					  <option>All</option>
					  <option>2</option>
					  <option>3</option>
					  <option>4</option>
					  <option>5</option>
					</select>					
			    </div>
			</div>
  			

		<div class="btn-group">
		  <button type="button" class="btn btn-default" id="btn-view-detail">Chi tiet</button>
		  <button type="button" class="btn btn-default" id="btn-view-less">Thu gon</button>
		</div>
		<input type="text" class="form-control" id="" placeholder="Search">
	</div>



	</div>
	
<div id="detail-juries" style="display:none">
	<div class="row" id="row-juries">
		<div class="col-md-3">
		 	<div class="panel panel-primary">
				<div class="panel-heading juries-heading">
				    <h3 class="panel-title">Nguyen Anh Tan - 20092343 <span class="badge pull-right">1</span></h3>

				</div>
				<div class="panel-body subject-project">
					Nghiên cứu triển khai chữ ký số điện tử
				</div><!-- list-group-item -->
				<div class="list-group list-item-jury">
					
					<div class="list-group-item">
					    <select class="form-control" title="ddddddd">
						  <option>Chon giao vien huong dan</option>
						  <option>Pham Quang Dung</option>
						  <option>Nguyen Duc Nghia</option>
						  <option>Huynh Thanh Binh</option>
						  <option>Ta Tuan Anh</option>
						</select>
					</div>
					<div class="list-group-item">
					    <select class="form-control">
						  <option>Chon phan bien 1</option>
						  <option>Pham Quang Dung</option>
						  <option>Nguyen Duc Nghia</option>
						  <option>Huynh Thanh Binh</option>
						  <option>Ta Tuan Anh</option>
						</select>
					</div>
					<div class="list-group-item">
					    <select class="form-control">
						  <option>Chon phan bien 2</option>
						  <option>Pham Quang Dung</option>
						  <option>Nguyen Duc Nghia</option>
						  <option>Huynh Thanh Binh</option>
						  <option>Ta Tuan Anh</option>
						</select>
					</div>
					<div class="list-group-item">
					    <select class="form-control">
						  <option>Chon chu tich</option>
						  <option>Pham Quang Dung</option>
						  <option>Nguyen Duc Nghia</option>
						  <option>Huynh Thanh Binh</option>
						  <option>Ta Tuan Anh</option>
						</select>
					</div>
					<div class="list-group-item">
					    <select class="form-control">
						  <option>Chon thu ki</option>
						  <option>Pham Quang Dung</option>
						  <option>Nguyen Duc Nghia</option>
						  <option>Huynh Thanh Binh</option>
						  <option>Ta Tuan Anh</option>
						</select>
					</div>
					<div class="list-group-item">
					    <select class="form-control">
						  <option>Chon uy vien</option>
						  <option>Pham Quang Dung</option>
						  <option>Nguyen Duc Nghia</option>
						  <option>Huynh Thanh Binh</option>
						  <option>Ta Tuan Anh</option>
						</select>
					</div>
					<div class="list-group-item">
					    <select class="form-control">
						  <option>Chon kip</option>
						  <option>1</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  
						</select>
					</div>
					<div class="list-group-item">
					    <select class="form-control">
						  <option>Chon phong</option>
						  <option>1</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  
						</select>
					</div>
				</div>
				<div class="panel-footer">
					<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span></button>
					<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-star"></span></button>
					<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-question-sign"></span></button>
				</div>
			</div>
		</div>

		
	</div><!-- End detail-juries -->

</div>

<div id="box-list-jury" style="display:none">
				<table id="list-jury" class="table table-hover">
				<c:forEach items="${listStudentDefense}" var="ldf"> 
				<tr>
					<!-- <td>
					    <input type="checkbox"> 
					</td> -->
					<td>
						<div class="panel panel-default">

						  <!-- List group -->
						  <ul class="list-group">
						    <li class="list-group-item"><label>Sinh viên:</label> <c:out value="${ldf.superviseStudent.name}"/></li>
						    <li class="list-group-item"><label>SHSV:</label> <c:out value="${ldf.superviseStudent.studentID}"/></li>
						    <li class="list-group-item"><label>Đề tài:</label> <c:out value="${ldf.superviseStudent.title}"/></li>
						    <li class="list-group-item"><label>GVHD:</label> <c:out value="${ldf.supervisor.name}"/></li>
						    
						  </ul>
						</div>
						
						

						
					</td>
					<td>
						
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Chủ tịch</div>
						        <select class="form-control ">		
						        	<c:if test="${ldf.president == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.president.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</div>

					
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Phản biện 1</div>
						        <select class="form-control ">		
						        	<c:if test="${ldf.examiner1 == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.examiner1.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</div>

						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Phản biện 2</div>
						        <select class="form-control ">		
						        	<c:if test="${ldf.examiner2 == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.examiner2.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</div>
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Thư kí</div>
						        <select class="form-control ">		
						        	<c:if test="${ldf.secretary == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.secretary.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</div>
						</td>
						<td>
						

						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Ủy viên</div>
						        <select class="form-control ">		
						        	<c:if test="${ldf.additionalMember == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.additionalMember.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</div>
						
						
					
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Kíp</div>
						        <select class="form-control ">		
						        	<c:if test="${ldf.slot == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listSlot}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.slot.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/> --- Từ <c:out value="${ps.start}"/> đến <c:out value="${ps.end}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/> --- Từ <c:out value="${ps.start}"/> đến <c:out value="${ps.end}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</div>

						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Phòng</div>
						        <select class="form-control ">		
						        	<c:if test="${ldf.room == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listRoom}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.room.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</div>

						<div class="checkbox" style="float:left">
						    <label>
						      <input type="checkbox"> 
						    </label>
						</div>
						<button type="button" class="btn btn-success">Save</button>
						<button type="button" class="btn btn-warning">Remove</button>
					</td>
					
					
				</tr>
				</c:forEach>
				</table>
			</div>
<button type="button" class="btn btn-default btn-lg" id="btn-shift-left">
	<span class="glyphicon glyphicon-circle-arrow-left btn-arrow" aria-hidden="true"></span>
</button>
<button type="button" class="btn btn-default btn-lg" id="btn-shift-right">
<span class="glyphicon glyphicon-circle-arrow-right btn-arrow" aria-hidden="true"></span>
</button>
<span id="outtext"></span>
<div id="box-list-jury-2">
	
				<table id="list-jury-2" class="table table-hover">
				<tr>
					<th> </th>
					<th>Họ tên</th>
					<th>SHSV</th>
					<th>Đề tài</th>
					<th>GVHD</th>
					<th>Chủ tịch</th>
					<th>Phản biện 1</th>
					<th>Phản biện 2</th>
					<th>Thư kí</th>
					<th>Ủy viên</th>
					<th>Kíp</th>
					<th>Phòng</th>
					<th></th>
					
				</tr>
				<c:forEach items="${listStudentDefense}" var="ldf"> 

				<tr>
					<!-- <td>
					    <input type="checkbox"> 
					</td> -->
					<td>
						<div class="">
						    <label>
						      <input type="checkbox"> 
						    </label>
						</div>
						<input type="hidden" value='<c:out value="${ldf.id}"/>' class="defenseId">
					</td>
					<td>
						<c:out value="${ldf.superviseStudent.name}"/>
					</td>
					<td>	
						<c:out value="${ldf.superviseStudent.studentID}"/>
					</td>
					<td>
						<c:out value="${ldf.superviseStudent.title}"/>
						    
					</td>
					<td>
						<c:out value="${ldf.supervisor.name}"/>
					</td>
					<td>
						
						<div class="form-group has-feedback">
						    
						        <select class="form-control professor president">		
						        	<c:if test="${ldf.president == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.president.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
								<span class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span>
						</div>
						</td>
						<td>
					
						    <div class="form-group">
						        <select class="form-control professor examiner1">		
						        	<c:if test="${ldf.examiner1 == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.examiner1.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</td>
						<td>
							<div class="form-group">
						    	<select class="form-control professor examiner2">	
						        	<c:if test="${ldf.examiner2 == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.examiner2.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</td>
						<td>
						
							<div class="form-group">						    
						        <select class="form-control professor secretary">		
						        	<c:if test="${ldf.secretary == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.secretary.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</td>
						<td>
						

						
						    <div class="form-group">
						        <select class="form-control professor additionalMember">		
						        	<c:if test="${ldf.additionalMember == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listProfessors}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.additionalMember.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</td>
						<td>
						    <div class="form-group">
						        <select class="form-control slot">		
						        	<c:if test="${ldf.slot == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listSlot}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.slot.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/><!--  --- Từ <c:out value="${ps.start}"/> đến <c:out value="${ps.end}"/> --></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/><!--  --- Từ <c:out value="${ps.start}"/> đến <c:out value="${ps.end}"/> --></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						    </div>
						</td>
						<td>
						
						    <div class="form-group">
						        <select class="form-control room">		
						        	<c:if test="${ldf.room == null}">
						        		<option value='' selected>-------</option>
						        	</c:if>				        	
							        <c:forEach items="${listRoom}" var="ps"> 									
										<c:choose>
									  		<c:when test="${ps.id == ldf.room.id}">
										       <option class="opt" selected value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										    </c:when>
										    <c:otherwise>
										    	<option class="opt" value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
											</c:otherwise>
										</c:choose>
									</c:forEach>	
								</select>
						   </div>
						</td>
						<td>
						
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-ok save" aria-hidden="true"></span>
						</button>
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-minus remove" aria-hidden="true"></span>
						</button>
					</td>
					
					
				</tr>
				</c:forEach>
				</table>
			</div>




</div><!-- End containner -->
 <button type="button" class="btn btn-default" id="backToTopBtn">
  <span class="glyphicon glyphicon-arrow-up"></span> Top
</button>
<script src="<c:url value="/assets/js/jquery-1.11.1.js"/>"></script>
<script src="<c:url value="/assets/js/jquery.mCustomScrollbar.concat.min.js"/>"></script>
<script src="<c:url value="/assets/js/jquery.mCustomScrollbar.js"/>"></script>
<%--  <script src="<c:url value="/assets/js/schedule.js"/>"></script> --%>
<script type="text/javascript">
	
	function Professor(id, name){
		this.name = name;
		this.id = id;
		this.indefense = false;
		this.htmlItemList = function(){
			return '<div class="checkbox list-group-item"><label><input type="checkbox" value="'+id+'">'+name+'</input></label></div>';
		};
	}
	var listProfessor = new Array();
	<c:forEach items="${listProfessors}" var="ps"> 
		var p = new Professor('<c:out value="${ps.id}"/>','<c:out value="${ps.name}"/>');
		listProfessor.push(p);	
		$("#list-teacher").append(p.htmlItemList);
	</c:forEach>	

	
	
	(function($){
        $(window).load(function(){
        	$("#box-list-jury-2").mCustomScrollbar({ 
				axis:"x",
				scrollbarPosition:"outside",
				theme:"dark-thin"
			});
           
        });
        $("#btn-shift-left").bind("click",function(event) {
		/* Act on the event */
			 $("#box-list-jury-2").mCustomScrollbar("scrollTo","left");
		});
		$("#btn-shift-right").bind("click",function(event) {
		/* Act on the event */
			 $("#box-list-jury-2").mCustomScrollbar("scrollTo","right");
		});
    })(jQuery);
</script>

