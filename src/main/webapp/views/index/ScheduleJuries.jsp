<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

  <div class="container">
  	<div class="row">
  		
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
			        <select class="form-control">
					  <c:forEach items="${listDefense}" var="defense">   
				        	<c:if test="${defense.active > 0}"> 					   
							  	<option value='<c:out value="${defense.id}"/>' >
							  		<c:out value="${defense.date}"/>
							  	</option>

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
	
<div id="detail-juries">
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

<div id="box-list-jury">
				<table id="list-jury" class="table table-hover">
				
				<tr>
					<!-- <td>
					    <input type="checkbox"> 
					</td> -->
					<td>
						<div class="panel panel-default">

						  <!-- List group -->
						  <ul class="list-group">
						    <li class="list-group-item"><label>Sinh vien:</label> Nguyen Anh Tan</li>
						    <li class="list-group-item">SHSV: 20092343</li>
						    <li class="list-group-item">De tai: Nghiên cứu triển khai chữ ký số điện tử</li>
						    
						    
						  </ul>
						</div>
						
						

						
					</td>
					<td>
						
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Chu tich</div>
						        <select class="form-control ">
							        <c:forEach items="${listProfessors}" var="ps"> 
										<option value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										
									</c:forEach>	
								</select>
						    </div>
						</div>

					
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Phan bien 1</div>
						        <select class="form-control ">
							        <c:forEach items="${listProfessors}" var="ps"> 
										<option value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										
									</c:forEach>	
								</select>
						    </div>
						</div>

						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Phan bien 2</div>
						        <select class="form-control ">
							        <c:forEach items="${listProfessors}" var="ps"> 
										<option value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										
									</c:forEach>	
								</select>
						    </div>
						</div>
						</td>
						<td>
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Thu ki</div>
						        <select class="form-control ">
							        <c:forEach items="${listProfessors}" var="ps"> 
										<option value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										
									</c:forEach>	
								</select>
						    </div>
						</div>

						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Uy vien</div>
						        <select class="form-control ">
							        <c:forEach items="${listProfessors}" var="ps"> 
										<option value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										
									</c:forEach>	
								</select>
						    </div>
						</div>
						
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">GVHD</div>
						        <select class="form-control ">
							        <c:forEach items="${listProfessors}" var="ps"> 
										<option value='<c:out value="${ps.id}"/>'><c:out value="${ps.name}"/></option>
										
									</c:forEach>	
								</select>
						    </div>
						</div>
					</td>
					
					<td>
						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Kip</div>
						        <select class="form-control ">
									<option value="1">1</option>
									<option value="1">2</option>
									<option value="1">4</option>
									<option value="1">5</option>
									<option value="1">6</option>
									
								</select>
						    </div>
						</div>

						<div class="form-group">
						    <div class="input-group">
						        <div class="input-group-addon">Phong</div>
						        <select class="form-control ">
									<option value="1">D3-101</option>
									<option value="1">D3-101</option>
									<option value="1">D3-101</option>
									<option value="1">D3-101</option>
									<option value="1">D3-101</option>
									
								</select>
						    </div>
						</div>
					</td>
					
					
				</tr>
				</table>
			</div>
</div><!-- End containner -->
 <button type="button" class="btn btn-default" id="backToTopBtn">
  <span class="glyphicon glyphicon-arrow-up"></span> Top
</button>
<script src="<c:url value="/assets/js/jquery-1.11.1.js"/>"></script>
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
</script>