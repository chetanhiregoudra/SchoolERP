<%@page import="com.erp.daoimpl.*"%>
<%@page import="com.erp.dao.*"%>
<%@page import="com.erp.bean.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <style>
  .tile-stats .count1 {
    font-size: 17px;
    font-weight: 70;
    line-height: 1.65857;
	margin: 40px 0 15px 10px;
    color: #7986CB;
}
.sup{
	color:red;
}


  </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

     <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
	<link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
 <%
	ConfigDaoImpl cd = ConfigDaoImpl.getInstance();
	School school = cd.getReady();
	Map<String,String> classList = school.getClassList();
	
	
	//CreateSectionDao csd = CreateSectionDaoImpl.getInstance();
	//List<CreateSection> cslist = csd.getSectionList();
	
	Set<String> st =new TreeSet<String>();
	for (Map.Entry<String,String> entry : classList.entrySet())  
	{
		  st.add(entry.getValue());
	}
%>
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col ">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><img src="images/admin.png" alt="..." class="img-circle " width="45" height="45"> <span>Admin</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
	 
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
	
	
              </div>
              <div class="profile_info">
                <br>
                <h2>Jhon Kennedy</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->
<hr>

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                
                <ul class="nav side-menu">
	  <li><a href="admin.html"><i class="fa fa-dashboard"></i> Dashboard </a></li>	
                  
	  
                  
                  
                </ul>
              </div>
              

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
             <!-- <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
             <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span> 
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="#">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
	<ul class="nav navbar-nav navbar-left">
                <li class="">
                  <a href="javascript:;" class="user-profile myhospital">
                  School Name
                    
                  </a>
                  
                </li>

               
              </ul>
                  <ul class="nav navbar-nav navbar-right ">
                <li class="">
	   <a href="index.jsp" data-toggle="tooltip" data-placement="bottom" title="LOGOUT"  data-original-title="Logout">
                <span class="glyphicon glyphicon-off" style="color:red;text-align:center;" aria-hidden="true"><br>LOGOUT</span>
              </a>
	  
	</li>
	<li class="">
	<div id="wrapper">
	<div id="inner1" class="mymonth" ></div>
	<div id="inner2"></div>
	</div>
	</li>
	<li class="">
	
	<div class="mytime">
	
	<div id="inner2" class="myspan "></div>
	
	
	</div>
                </li>
               
	
	
	
               
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          
            <div class="row top_tiles">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_1" data-toggle="tab">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-group"  ></i></div>
                  <div class="count">2</div>
                  <h3 style="color: #7986CB;margin-right:90px;">STUDENTS LIST</h3>
                 <p>&nbsp;</p>
                </div>
              </div>
	  
               <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_2" data-toggle="tab">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-user-plus" ></i></div>
	   <h3></h3>
                  <div class="count1">ADD STUDENT</div>
                 
                  <p>&nbsp;</p>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_3" data-toggle="tab">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-user-times" ></i></div>
				   <h3></h3>
                  <div class="count1">DELETE STUDENT</div>
                 
                 <p>&nbsp;</p> 
                </div>
              </div>
	 
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_4" data-toggle="tab">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-key" ></i></div>
                 <h3></h3>
                  <div class="count1">RESET PASSWORD</div>
                 
                 <p>&nbsp;</p> 
                </div>
              </div>
            </div>
	
	
	
	<div class="nav-tabs-custom">
           
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">	
           
             
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Students List <small></small></h2>
                   <!-- <div class="filter">
                      <div class="pull-right" >
                        <div class="btn-group">
                  <button type="button" class="btn btn-primary btn-flat btn-my-size dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user-plus"></i>&nbsp;Add Patient</button>
                  
                  <ul class="dropdown-menu drop" role="menu">
	 
                    <li><a class="btn my-button btn-flat drop-my-way" style="margin-bottom:10px" data-toggle="modal" data-target="#myModal" data-backdrop="static" data-keyboard="false"><i class="fa fa-user-plus">  </i>&nbsp;&nbsp;New </a></li>
	
                    <li><a class="btn my-button btn-flat" data-toggle="modal" data-target="#myModal1" data-backdrop="static" data-keyboard="false"><i class="fa  fa-refresh">  </i>&nbsp;&nbsp;Repeat </a></li>
                    
                  </ul>
                </div>
                      </div>
                    </div>-->
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>SL #</th>
                          <th>Student Id</th>
	  <th>First Name</th>
	  <th>Last Name</th>
		  <th>Class</th>
	      <th>Section</th>
	      <th>Registration #</th>
	  <th>Phone #</th>
                        </tr>
                      </thead>
                      <tbody>
	
                
	<tr>
	<td></td>
	<td> </td>
	<td> </td>
	<td> </td>
		<td></td>
	
	
	<td></td>
	
	<td></td>
	<td></td>
	</tr>
	
	  </tbody>
                       
                    </table>

                  </div>
                </div>
              </div>
         
	
	
	<div class="tab-pane " id="tab_2">	
	
        <div class="" role="main">
	       <div class="">
	   
	     <div class="clearfix"></div>

	     <div class="row " >
	       <div class="col-md-12 col-sm-12 col-xs-12">
	    <div class="x_panel">
	    <form  action="action" method="post" class="form-horizontal form-label-left" id="nameform">
	  <div class="x_title">
		<h2>ADD STUDENT DETAILS </h2>
		<h5 class="pull-right"><span style="color:red">* </span>-Mandatory</h5>
		
		<div class="clearfix"></div>
	  </div>
	  <div class="x_content">
	  
	     <div id="wizard" class="form_wizard wizard_horizontal">
		
		     <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                                Student Details<br />
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                                Family Details<br />
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                                Address<br />
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                            <span class="step_descr">
                                Medical Details<br />
                            </span>
                          </a>
                        </li>
                      </ul>
					   
					<div id="step-1">
						<!--<form class="form-horizontal form-label-left">--->
							<fieldset>
								<div class="col-md-3 col-xs-4">
		<label>Student FName</label>
		<input type="text" name="sFname" class="form-control">
	</div>

	<div class="col-md-3 col-xs-4">
		<label>Student MName</label>
		<input type="text" name="sMname" class="form-control">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Student LName</label>
		<input type="text" name="sLname" class="form-control">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Student Id</label>
		<input type="text" name="sid" class="form-control">
	</div> 
	<div class="col-md-3 col-xs-4">
		<label>Class</label>
		<select name="sClass" class="form-control" id="className">
			 <option>--Select Class--</option>
			<%for(String str:st)
			{%>
			 	<option><%=str %></option>
		   <% }
		   	%>
		</select>
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Section</label>
		<select name="sSection" class="form-control" id="sec">
			<option>--Select Section--</option>
		</select>
	</div>
	<!--  <input type="text" class="form-control" name="sSection">-->
	<div class="col-md-3 col-xs-4">
		<label>DoB</label>
		<input type="date" class="form-control" name="sdob" id="bdate">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Age</label>
		<input type="text" class="form-control" name="sage" id="age" disabled>
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Gender</label><br>
		<label class="checkbox-inline">
			<input type="radio" class="form-control" name="sgender" value="MALE"> MALE
		</label>
		<label class="checkbox-inline">
			<input type="radio" name="sgender" class="form-control" value="FEMALE"> FEMALE
		</label>
		
		<label class="checkbox-inline">
			<input type="radio" name="sgender" class="form-control" value="OTHERS"> OTHERS
		</label>
	
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Photo</label>
		<input type="file" name="simg" class="form-control" value="" id="simgid">
		<input type="hidden" name="Action" value="addstudent" >
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Caste</label>
		<input type="text" class="form-control" name="scaste">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Religion</label>
		<input type="text" class="form-control" name="sreligion">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Category</label><br>
		<label class="checkbox-inline">
			<input type="radio" class="form-control" name="category" value="RTE">&nbsp;RTE &nbsp;
		</label>
		<label class="checkbox-inline">
			<input type="radio" class="form-control" name="category" value="Non RTE"> Non RTE
		</label>
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Reserved Category</label><br>
		<select class="form-control" name="rcategory">
			<option>SC/ST</option>
			<option>OBC</option>
			<option>Category-1</option>
			<option>2A</option>
			<option>2B</option>
			<option>3A</option>
			<option>3B</option>
			<option>General</option>
		</select>
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Nationality</label>
		<input type="text" class="form-control" name="snatinality">
	</div>
							</fieldset>
						<!--</form>-->
                    
                    </div>
	        <div id="step-2">
                       <!--  <form class="form-horizontal form-label-left">-->
                            <fieldset>
                           <div class="col-md-3 col-xs-4">
		<label>Father FullName</label>
		<input type="text" class="form-control" name="fname">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Father Education</label>
		<select  class="form-control" name="fedu">
			<option>Post Graduate</option>
			<option>Under Graduate </option>
			<option>PUC</option>
			<option>SSLC</option>
			<option>Less than SSLC</option>
		</select>
		
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Father Occupation</label>
		<input type="text" class="form-control" name="foccptn">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Father Income</label>
		<input type="text" class="form-control" name="fincme">
	</div>

	<div class="col-md-3 col-xs-4">
		<label>Mother FullName</label>
		<input type="text" class="form-control" name="mname">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Mother Education</label>
		<select  class="form-control" name="medu">
			<option>Post Graduate</option>
			<option>Under Graduate </option>
			<option>PUC</option>
			<option>SSLC</option>
			<option>Less than SSLC</option>
		</select>
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Mother Occupation</label>
		<input type="text" class="form-control" name="moccptn">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Mother Income</label>
		<input type="text" class="form-control" name="mincme">
	</div>   
	<div class="col-md-3 col-xs-4">
		<label>SiblingName <sup class="sup">*</sup></label>
		 <input id="siblingName" class="form-control"  name="siblingName" placeholder="Sibling Name" required="required" type="text" >
	</div>   					
			<div class="col-md-3 col-xs-4">
		<label>Dob <sup class="sup">*</sup></label>
		<input type="date" class=" form-control" id="siblingDob" value=""  onblur="ageCount1()" required>
	</div>  									
			<div class="col-md-3 col-xs-4">
		<label>Age</label>
		 <input class="form-control" id="siblingAge" type="text" value="" placeholder="Age">
	</div>  									
							
											
					</fieldset>
            <!--</form>-->
             </div>
	  <div id="step-3">
         <!-- <form class="form-horizontal form-label-left">-->
              <fieldset>
              
	<div class="col-md-3 col-xs-4">
		<label>Zip code </label>
		<input type="text" class="form-control" name="zipcode" id="zipcode">
	</div>
	
	<div class="col-md-3 col-xs-4">
		<label>City</label>
		<input type="text" class="form-control" name="scity" id="city">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>State</label>
		<input type="text" class="form-control" name="sstate" id="state">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Address </label>
		<textarea  class="form-control" name="address"></textarea>
	</div>
	<div class="col-md-3 col-xs-4">
		<label >PhoneNumber1<sup style="color:red">*</sup></label>
		<div class=" input-group">
			<span class="input-group-addon" >+91</span>
			<input type="text" id="phoneNumber1" name="phoneNumber1" required="required" placeholder="PhoneNumber1" class="form-control" maxlength="10" >
		</div>
	</div>
	<div class="col-md-3 col-xs-4">
		<label >PhoneNumber2</label>
		<div class=" input-group">
			<span class="input-group-addon" >+91</span>
			<input type="text" id="phoneNumber2" name="phoneNumber2"  placeholder="PhoneNumber2" class="form-control" maxlength="10" >
		</div>
	</div>
			  							
				                         
					</fieldset>
              <!--</form>-->
                      </div>
	    <div id="step-4">
            <!--<form class="form-horizontal form-label-left">-->              
                <fieldset>
                    <div class="col-md-3 col-xs-4">
		<label>Blood Group</label>
		<input type="text" class="form-control" name="bloodgrp">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>BMI</label>
		<input type="text" class="form-control" name="bmi">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Height</label>
		<input type="text" class="form-control" name="height">
	</div>
	<div class="col-md-3 col-xs-4">
		<label>Weight</label>
		<input type="text" class="form-control" name="weight">
	</div>
	
	<!--  <div class="col-md-3 col-xs-4">
		<input type="submit" class="btn btn-primary" value="submit" class="sbt1">
	</div>-->
                </fieldset>
            <!--</form>-->
        </div>
		
	     </div>
	
	  </div>
	 <!-- <div class="form-group">
	<div class="col-md-6 col-md-offset-5">
	  <button type="button" class="btn btn-primary">Cancel</button>
	  <button id="send2" type="submit" name="Action" value="insertUser" onclick="" class="btn btn-success">Submit</button>
	</div>
	  </div>-->
	</div>
	  </div>
	</div>
	</form>
	</div>
	</div>
	
	</div>
	<div class="tab-pane " id="tab_3">	
            
                <div class="x_panel">
                  <div class="x_title">
                    <h2>DELETE USER <small></small></h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
	  <form action="action" class="form-horizontal form-label-left " method="post" id="deleteForm" novalidate>
	   <div class="form-group pull-right">
                        <div class="col-md-6 ">
                          
                          <button id="delete" type="button"   class="btn btn-danger">Delete User</button>
	
                        </div>
                      </div>
	  	  <div class="modal fade" id="confirmDialog" role="dialog">
	  <div class="modal-dialog modal-sm">
	<div class="modal-content  ">
	  <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
	<h4 id="header"class="modal-title">Remove Users</h4>
	  </div>
	  <div class="modal-body">
	<p id="msg"></p>
	  </div>
	  <div class="modal-footer">
	<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
	<button type="submit" id="deleteConfirm" class="btn btn-primary pull-right" name="Action" value="deleteUser">Delete</button>
	  </div>
	</div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
                    <table id="datatable-responsive1" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
	 <tr>
	  <th>SL #</th>
	  <th>Student Id</th>
	  <th>First Name</th>
	  <th>Last Name</th>
	  <th>Class</th>
	  <th>Section</th>
	   <th>Phone #</th>
	
	  <th>Select </th>
	 
	</tr>
                      </thead>
                      <tbody>
	
              
	<tr>
	<td></td>
	<td> </td>
	<td> </td>
	<td> </td>
	<td></td>
	
	
	<td></td>
	<td></td>
	<td> <input type="checkbox" id="select_all" name="userIdList" value=""/></td>
	 
	</tr>
	
	</tbody>
                       
                    </table>
	</form>
                  </div>
                </div>
              </div>
            
	   <div class="tab-pane " id="tab_4">	
         
                <div class="x_panel">
                  <div class="x_title">
                    <h2>RESET PASSWORD <small></small></h2>
                   <div class="filter">
                      <div class="pull-right" >
                        <div class="btn-group">
                  <button type="button" class="btn btn-primary btn-flat btn-my-size dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user-plus"></i>&nbsp;Add Student</button>
                  
                  <ul class="dropdown-menu drop" role="menu">
	 
                    <li><a class="btn my-button btn-flat drop-my-way" style="margin-bottom:10px" data-toggle="modal" data-target="#myModal" data-backdrop="static" data-keyboard="false"><i class="fa fa-user-plus">  </i>&nbsp;&nbsp;New </a></li>
	
                    <li><a class="btn my-button btn-flat" data-toggle="modal" data-target="#myModal1" data-backdrop="static" data-keyboard="false"><i class="fa  fa-refresh">  </i>&nbsp;&nbsp;Repeat </a></li>
                    
                  </ul>
                </div>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                  </div>
           <div class="x_content">
             <form class="form-horizontal" action="action" method="POST" id="softwareform">
	<div class="item form-group" >
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">User Id <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12 c">
	<input type="text" class="form-control"  name="userId" id="userId" placeholder="User Id" required title="User Id is required">
	</div>
	</div>
               
	
	           
              <!-- /.box-footer -->
	  <div class="ln_solid"></div>
              <div class="form-group">
                  <div class="col-md-6 col-md-offset-5">
                      <button type="button" class="btn btn-primary">Cancel</button>
                      <button id="reset" type="submit" value="reSetPassword" name="Action" class="btn btn-success">Reset Password</button>
                  </div>
              </div>
            </form>
	  </div>
               </div>
                
            </div>
	
	</div>
	</div>
	
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Powered By <a href="#">RaRo</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    <!--</div>-->

    <!-- jQuery -->
	
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
	<!-- jQuery Smart Wizard -->
    <script src="vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
	 <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <!-- DateJS -->
    <script src="vendors/DateJS/build/date.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    
	
	 
    
    
    
    
   
	<script>
	
	//pincode
	function is_int(value) {
	  if ((parseFloat(value) == parseInt(value)) && !isNaN(value)) {
	    return true;
	  } else {
	    return false;
	  }
	}



	$("#zipcode").keyup(function() {

	  // Cache
	  var el = $(this);

	  // Did they type five integers?
	  if ((el.val().length == 6) && (is_int(el.val()))) {

	    // Call Ziptastic for information
	    $.ajax({
	      url: "https://zip.getziptastic.com/v2/IN/" + el.val(),
	      cache: false,
	      dataType: "json",
	      type: "GET",
	      success: function(result, success) {

	       console.log(success);
	        $("#city").val(result.county);

	        $("#state").val(result.state);

	       

	        $("#zipcode").blur();
	       

	      },
	      error: function(result, success) {

	        

	      }

	    });

	  } else if (el.val().length < 6) {

	    

	  };

	});

	//pincode ends

$(document).ready(function(){
	    $("#bdate").change(function(){
	        var mdate = $("#bdate").val().toString();
	        var yearThen = parseInt(mdate.substring(0,4), 10);
	        var monthThen = parseInt(mdate.substring(5,7), 10);
	        var dayThen = parseInt(mdate.substring(8,10), 10);
	        
	        var today = new Date();
	        var birthday = new Date(yearThen, monthThen-1, dayThen);
	        
	        var differenceInMilisecond = today.valueOf() - birthday.valueOf();
	        
	        var year_age = Math.floor(differenceInMilisecond / 31536000000);
	        var day_age = Math.floor((differenceInMilisecond % 31536000000) / 86400000);
	        
	        if ((today.getMonth() == birthday.getMonth()) && (today.getDate() == birthday.getDate())) {
	            alert("Happy B'day!!!");
	        }
	        
	        var month_age = Math.floor(day_age/30);
	        
	        day_age = day_age % 30;
	        
	        if (isNaN(year_age) || isNaN(month_age) || isNaN(day_age)) {
	            $("#exact_age").text("Invalid birthday - Please try again!");
	        }
	        else {
	        	
	        	$("#age").val(year_age + " years " + month_age + " months ");
	            //$("#exact_age").html("You are<br/><span id=\"age\">" + year_age + " years " + month_age + " months " + day_age + " days</span> old");
	        }
	    });
	});	
	$('#datatable-responsive').dataTable( {
	 "searching": false,
	"bLengthChange": false,
	 "ordering": false,
		});
		$('#datatable-responsive1').dataTable( {
	 "searching": false,
	"bLengthChange": false,
	 "ordering": false,
		});
	
$(document).on('keyup', '.form-control', function() {
	var valueField = $(this).attr('id');
	var msg="";
 
	if(valueField=="fname")
	{
	var d = $(this).val();
	var regex = new RegExp("^[a-zA-Z]+$");
	// var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="")
	{
	$(this).css('border-color','red');
	$(this).parent().children('#sw').remove();
	var txt2 = $("<div id='sw' >Only Alphabets are allowed</div>");
	$(txt2).appendTo($(this).parent());
	$(this).parent().children('#sw').css('color','red');
        }
	else if(d.length>30)
	{
	$(this).css('border-color','red');
	var txt2 = $("<div id='sw' >Name length should be less than 256 characters</div>");
	//$(this).parent.append(txt2);
	$(txt2).appendTo($(this).parent());
	$(this).parent().children('#sw').css('color','red');
	
	}
	else
	{
	$(this).css('border-color','');
	$(this).parent().children('#sw').remove();
	}
	 }
	else if(valueField=="lname")
	{
	var d = $(this).val();
	var regex = new RegExp("^[a-zA-Z]+$");
	// var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="") 
	{
            $(this).css('border-color','red');
	$(this).parent().children('#sw').remove();
	var txt2 = $("<div id='sw' >Only Alphabets are allowed</div>");
	$(txt2).appendTo($(this).parent());
	$(this).parent().children('#sw').css('color','red');
	
        }
	else if(d.length>30)
	{
	$(this).css('border-color','red');
	var txt2 = $("<div id='sw' >Last Name length should be less than 256 characters</div>");
	//$(this).parent.append(txt2);
	$(txt2).appendTo($(this).parent());
	$(this).parent().children('#sw').css('color','red');
	
	}
	else
	{
	
	$(this).css('border-color','');
	
	$(this).parent().children('#sw').remove();
	}
	 }
	 
	 
	 
	 else if(valueField=="regNo")
	 {
		var d = $(this).val();
		var regex = new RegExp("^[0-9]+$");
		// var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="")
		{
            $(this).css('border-color','red');
			$(this).parent().children('#sw').remove();
			var txt2 = $("<div id='sw' class='errorM' >Only Numbers are allowed</div>");
			$(txt2).appendTo($(this).parent());
			
			$(this).parent().children('#sw').css('color','red');
			
        }
		else
		{
			
			$(this).css('border-color','');
			
			$(this).parent().children('#sw').remove();
		}
	 }

	 else if(valueField=="phone")
	 {
	var d = $(this).val();
	var regex = new RegExp("^[0-9]+$");
	// var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="")
	{
            $(this).css('border-color','red');
	$(this).parent().parent().children('#sw').remove();
	var txt2 = $("<div id='sw' >Only Numbers are allowed</div>");
	$(txt2).appendTo($(this).parent().parent());
	
	$(this).parent().parent().children('#sw').css('color','red');
	
        }
	else
	{
	
	$(this).css('border-color','');
	
	$(this).parent().parent().children('#sw').remove();
	}
	 }
	 else if(valueField=="confirm"){
	var d = $(this).val();
	var password=$("#password").val();
	// var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!password.match(d) && d!="") 
	{
            
	$(this).css('border-color','red');
	$(this).parent().children('#sw').remove();
	var txt2 = $("<div id='sw' >Confirm password should match the Password</div>");
	$(txt2).appendTo($(this).parent());
	$(this).parent().children('#sw').css('color','red');
	
        }
	else if(d.length>12)
	{
	$(this).css('border-color','red');
	var txt2 = $("<div id='sw' >Name length should be less than 256 characters</div>");
	//$(this).parent.append(txt2);
	$(txt2).appendTo($(this).parent());
	$(this).parent().children('#sw').css('color','red');
	
	}
	else
	{
	
	$(this).css('border-color','');
	
	$(this).parent().children('#sw').remove();
	}
	 }
	 else if(valueField=="password")
	 {
	  var password=$(this).val();
	  //alert(password);
	
        var password_strength = document.getElementById("password_strength");
	var divcol=document.getElementById("color1");
 
        //TextBox left blank.
        if (password.length == 0)
	{
            password_strength.innerHTML = "";
	divcol.style.backgroundColor="";
            return;
        }
	/*if (document.getElementById("oldpassword").value==password) {
            password_strength.innerHTML = "Old and new password should not be same";
	divcol.style.backgroundColor="";
            return;
        }
 */
        //Regular Expressions.
        var regex = new Array();
        regex.push("[A-Z]"); //Uppercase Alphabet.
        regex.push("[a-z]"); //Lowercase Alphabet.
        regex.push("[0-9]"); //Digit.
        regex.push("[$@$!%*#?&]"); //Special Character.
 
        var passed = 0;
 
        //Validate for each Regular Expression.
        for (var i = 0; i < regex.length; i++)
	{
	//alert(passed);
            if (new RegExp(regex[i]).test(password)) 
	{
                passed++;
            }
        }
 
        //Validate for length of Password.
        if (passed > 2 && password.length > 8)
	{
            passed++;
	//alert(passed);
        }
 
        //Display status.
        var color = "";
        var strength = "";
	var width="";
        switch (passed)
	{
            case 0:
            case 1:
                strength = "Weak";
                color = "red";
	width="75px";
                break;
            case 2:
                strength = "Good";
                color = "orange";
	width="150px";
                break;
            case 3:
            case 4:
                strength = "Strong";
                color = "lightgreen";
	width="200px";
                break;
            case 5:
                strength = "Very Strong";
                color = "green";
	width="220px";
                break;
        }
        password_strength.innerHTML = strength;
        password_strength.style.color = color;
	divcol.style.width=width;
	divcol.style.height="10px";
	divcol.style.backgroundColor=color;
	 }
	 
	 
});

$(document).ready(function() {
	$("#datatable-responsive").DataTable();
	$("#datatable-responsive1").DataTable();
} );
/*$(document).ready(function()
{
	$("#send").click(function()
	{
	if($("#fname").val()=="")
	{
	alert();
	}
	});
});*/


 
	
	
 function test(){
    var fullDate = new Date();
   
var twoDigitMonth = fullDate.getMonth()+1; if(twoDigitMonth.length==1)	twoDigitMonth="0" +twoDigitMonth;

var twoDigitDate = fullDate.getDate()+"";if(twoDigitDate.length==1)	twoDigitDate="0" +twoDigitDate;
var curHour = fullDate.getHours();
var curMin = fullDate.getMinutes();
var ampm = curHour >= 12 ? 'PM' : 'AM';
curHour = curHour % 12;
curHour = curHour ? curHour : 12; // the hour '0' should be '12'
//if(curMin.length==1)curMin = "0" + curMin;
 curMin = curMin < 10 ? '0'+curMin : curMin;
//var currentTime = curHour + ":" + curMin; 
var currentTime = curHour + ':' + curMin + ' ' + ampm;
var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
var months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL','AUG','SEPT','OCT','NAV','DEC'];
var month =months[fullDate.getMonth()];
//alert(month);
var dayName = days[fullDate.getDay()];
var currentDate = twoDigitDate + "  " + month ;
$(".myspan").html(currentTime+"&nbsp;&nbsp;");
$(".mymonth").html(dayName);
$("#inner2").html(currentDate);
//document.getElementById(".myspan").innerHTML=currentDate + " " + currentTime ;
//document.getElementById("dt1").innerHTML= ;

    setTimeout(test, 5);
}	
	$( document ).ready(function() {
	   test();
	});
	$(document).ready(function() {
	
	$("#datatable-responsive").DataTable();
} );	

/*$(document).ready(function()
{
if($('#role').val()=="Admin")
{
	 $('#regNoDiv').hide(); 
}
else
{
	 $('#regNoDiv').show(); 
}
    $('#role').change(function(){
        if($(this).val() == 'Doctor' || $(this).val()=="Nurse" ) {
            $('#regNoDiv').show(); 
        } else {
	alert();
            $('#regNoDiv').hide(); 
        } 
    });
	
	
});*/
$("#delete").click(function(){
	if ($("#deleteForm input:checkbox:checked").length > 0)
	{
	//alert("checked");
	$("#confirmDialog").modal('show');
	$("#header").css("font-size","18px");
	$("#msg").html("Delete ?");
	$("#msg").css({"color":"red","font-size":"12pt"});
	$("#deleteConfirm").show();
	}
	else
	{
	$("#confirmDialog").modal('show');
	$("#header").css("font-size","18px");
	$("#msg").html(" please select any user ");
	$("#msg").css({"color":"red","font-size":"12pt"});
	$("#deleteConfirm").hide();
	}
	
});
</script>

<script>
	
	
	
	function yesnoCheck() 
	{
		if (document.getElementById('nonIndian').checked) 
		{
			document.getElementById('txtbox').style.visibility = 'visible';
		}
		else document.getElementById('txtbox').style.visibility = 'hidden';
    }	
 //Age calculation	
	function ageCount() 
	{
		var date1 = new Date();
		var dob = document.getElementById("dob").value;
		var date2 = new Date(dob);
		//var pattern = /^\d{1,2}\-\d{1,2}\-\d{4}$/;
		var pattern = /^\d{4}\-\d{1,2}\-\d{1,2}$/;
		//Regex to validate date format (dd/mm/yyyy)       
		if (pattern.test(dob)) {
			var y1 = date1.getFullYear();
			//getting current year            
			var y2 = date2.getFullYear();
			//getting dob year            
			var age = y1 - y2;
			//calculating age                       
			document.getElementById("age").value = age;
			document.getElementById("age").focus ();
			return true;
		} 
		else 
		{
			alert("Invalid date format. Please Input in (dd/mm/yyyy) format!");
			return false;
		}
    }
	//City Name validation
     $('#city').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });	
	//State Name validation
     $('#state').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });	
	
	//Validation of height

$('#height').keypress(function (event) {
	var char1 = event.charCode;
	if(!((char1>=48 && char1<=57) )&& !this.value.length)
	 {
		 //$('#fbSpan').css('display','block');
		 event.preventDefault();
		 //////////alert"special");
	 }
	 
	  else if(!( (char1>=48 && char1<=57) || (char1==46) ) && this.value.length)
	 {
		 
		// $('#fbSpan').css('display','block');
		 event.preventDefault();
		 
		
	 }
	 
	 else if (event.keyCode == 46 && this.value.split('.').length == 2) 
	 {
		// $('#fbSpan').css('display','block');
		 event.preventDefault();
		 
	 }
	
        
    });
	//Validation of weight

$('#weight').keypress(function (event) {
	var char1 = event.charCode;
	if(!((char1>=48 && char1<=57) )&& !this.value.length)
	 {
		 //$('#fbSpan').css('display','block');
		 event.preventDefault();
		 //////////alert"special");
	 }
	 
	  else if(!( (char1>=48 && char1<=57) || (char1==46) ) && this.value.length)
	 {
		 
		// $('#fbSpan').css('display','block');
		 event.preventDefault();
		 
		
	 }
	 
	 else if (event.keyCode == 46 && this.value.split('.').length == 2) 
	 {
		// $('#fbSpan').css('display','block');
		 event.preventDefault();
		 
	 }
	
        
    });
	//Validation of BMI

$('#bmi').keypress(function (event) {
	var char1 = event.charCode;
	if(!((char1>=48 && char1<=57) )&& !this.value.length)
	 {
		 //$('#fbSpan').css('display','block');
		 event.preventDefault();
		 //////////alert"special");
	 }
	 
	  else if(!( (char1>=48 && char1<=57) || (char1==46) ) && this.value.length)
	 {
		 
		// $('#fbSpan').css('display','block');
		 event.preventDefault();
		 
		
	 }
	 
	 else if (event.keyCode == 46 && this.value.split('.').length == 2) 
	 {
		// $('#fbSpan').css('display','block');
		 event.preventDefault();
		 
	 }
	
        
    });
	//First Name validation
     $('#firstName').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });
	
	//Last Name validation
     $('#lastName').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });
	
	//Age validation
     $('#age').keypress(function (e) {
        var regex = new RegExp("^[0-9 ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });
	
	 //Aadhar Number Validation
      $(document).ready(function() {
        $('#aadharNumber').keypress(function(key) {
         if (key.charCode < 48 || key.charCode > 57) 
		 {
		    //$('#cano').css('display','block');
			return false;
		 }
		});
        });
	//Father Name validation
     $('#fatherName').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });			
	//Mother Name validation
     $('#motherName').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });			
	//Sibling Name validation
     $('#siblingName').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });	
// Sibling Age validation
     $('#siblingAge').keypress(function (e) {
        var regex = new RegExp("^[0-9 ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });	
	// Pincode validation
     $('#pinCode').keypress(function (e) {
        var regex = new RegExp("^[0-9 ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });	
	// PhoneNumber1 validation
     $('#phoneNumber1').keypress(function (e) {
        var regex = new RegExp("^[0-9 ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });	
	// PhoneNumber2 validation
     $('#phoneNumber2').keypress(function (e) {
        var regex = new RegExp("^[0-9 ]*$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }
        else
        {
        e.preventDefault();
       // //////////////alert'Please Enter Alphabate');
        return false;
        }
    });	
	function ageCount1() 
	{
		var date1 = new Date();
		var dob = document.getElementById("siblingDob").value;
		var date2 = new Date(dob);
		//var pattern = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
		var pattern = /^\d{4}\-\d{1,2}\-\d{1,2}$/;
		//Regex to validate date format (dd/mm/yyyy)       
		if (pattern.test(dob)) {
			var y1 = date1.getFullYear();
			//getting current year            
			var y2 = date2.getFullYear();
			//getting dob year            
			var age = y1 - y2;
			//calculating age                       
			document.getElementById("siblingAge").value = age;
			document.getElementById("siblingAge").focus ();
			return true;
		} 
		else 
		{
			alert("Invalid date format. Please Input in (dd/mm/yyyy) format!");
			return false;
		}
    }
	
	$(document).on('click','.submitvalue',function()
	{
	alert("clicked");
	});
	$(document).ready(function() {
			 $("#className").change(function(e){
				var str = $("#className").val();
				
	            dataString = "code=" + str;
	          $.ajax({
             type: "POST",
             url: "action?Action=getSection",
             data: dataString,
             dataType: "json",
            
             //if received a response from the server
             success: function( data, textStatus, jqXHR) {
                 //our country code was correct so we have some information to display
                  if(data.success){
               	   $("#ajaxResponse").html("");
               	   console.log(data.sectionInfo.length);
               	   var cars = new Array(data.sectionInfo);
               		$("#sec").html("");
               		$("#sec").append("<option>--Select Section--</option>")
               	   			for(var i=0;i < data.sectionInfo.length; i++)
               	   				
                               $("#sec").append("<option>" + data.sectionInfo[i] + "</option>");
                    
                              
                                  } 
                  //display error message
                  else {
                      
                  }
             },
            
             //If there was no resonse from the server
             error: function(jqXHR, textStatus, errorThrown){
                  console.log("Something really bad happened " + textStatus);
                  
             }
            
            
  
         });  
			 });
		});
	</script>
  </body>
</html>