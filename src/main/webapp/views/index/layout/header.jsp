<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/webapp/home.html">ITrainManager</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-left">
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            
            <li>
              <a  href="/webapp/schedulejuries.html"><!-- ScheduleJuries.jsp --> Xếp lịch</a>
            </li>
            <li>
              <a href='/webapp/SlotRoomManager.html'>Kíp/Phong</a>
            </li>
            <li>
              <a href="/webapp/DefenseSessionsManager.html">Các đợt bảo vệ</a>
            </li>
           
            <li class="divider"></li>
            <li>
              <a href="/webapp/StructureManager.html">Truong/Khoa/Lop</a>
            </li>
            <li class="divider"></li>
            
            <li>
              <a href='/webapp/TeacherManager.html'>Giảng viên</a>
            </li>
            <li>
              <a href="/webapp/StudentManager.html">Học viên</a>
            </li>
            <li>
              <a href="/webapp/SubjectCategoriesManager.html">Các nhóm đề tài</a>
            </li>
            <li>
              <a href="/webapp/AssignmentSubject.html">Giao đề tài</a>
            </li>
            <li class="divider"></li>
            <li>
              <a  href=ViewDefenseTimeTabling.jsp>Hội đồng bảo vệ</a>
            </li>
          </ul>
        </li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
       <!--  </li>      
            <div class="input-group col-md-2">
              <input type="text" class="form-control" id="btn-search"> 
              <span class="input-group-addon">Tim kiem</span>                 
            </div>
      </li> -->
      </ul>
      <!-- <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" id="str-search">
        </div>
        <input type="button" class="btn btn-default">Submit</input>
      </form> -->

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">My Acount</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Option <span class="glyphicon glyphicon-cog"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Dang xuat</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->

</nav>
