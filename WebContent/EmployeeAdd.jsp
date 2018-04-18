<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<style>
  		/* Latest compiled and minified CSS included as External Resource*/
		/* Optional theme */
		/*@import url('//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css');
		*/
		 body {
		     margin-top:30px;
		}
		 .stepwizard-step p {
		     margin-top: 0px;
		     color:#666;
		}
		 .stepwizard-row {
		     display: table-row;
		}
		 .stepwizard {
		     display: table;
		     width: 100%;
		     position: relative;
		}
		 .stepwizard-step button[disabled] {
		    /*opacity: 1 !important;
		     filter: alpha(opacity=100) !important;
		    */
		}
		 .stepwizard .btn.disabled, .stepwizard .btn[disabled], .stepwizard fieldset[disabled] .btn {
		     opacity:1 !important;
		     color:#bbb;
		}
		 .stepwizard-row:before {
		     top: 14px;
		     bottom: 0;
		     position: absolute;
		     content:" ";
		     width: 100%;
		     height: 1px;
		     background-color: #ccc;
		     z-index: 0;
		}
		 .stepwizard-step {
		     display: table-cell;
		     text-align: center;
		     position: relative;
		}
		 .circle {
		     width: 30px;
		     height: 30px;
		     text-align: center;
		     padding: 6px 0;
		     font-size: 12px;
		     line-height: 1.428571429;
		     border-radius: 15px;
		}
		 .panel-body {
		     background:#333d8a59;
		}
		 .x{
		     width: 18px;
		     height: 18px;
		}
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
		 .box{
		     color: black;
		     padding: 20px;
		     display: none;
		     margin-top: 20px;
		}
 
  	</style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SchoolERP</title>
     <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
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
                                <li><a href="student.jsp"><i class="fa fa-user"></i> Student </a></li>
                                <li><a href="EmployeeAdd.jsp"><i class="fa fa-user"></i> Staff </a></li>
                            </ul>
                       </div>
                    </div>
                    <!-- /sidebar menu -->
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
                                <a href="javascript:;" class="user-profile myhospital">School Name </a>
							</li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right ">
                            <li class="">
                                <a href="index.jsp" data-toggle="tooltip" data-placement="bottom" title="LOGOUT" data-original-title="Logout">
                                    <span class="glyphicon glyphicon-off" style="color:red;text-align:center;" aria-hidden="true"><br>LOGOUT</span>
                                </a>
                            </li>
                            <li class="">
                                <div id="wrapper">
                                    <div id="inner1" class="mymonth"></div>
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
                            <div class="icon"><i class="fa fa-group"></i></div>
                            <div class="count1">EMPLOYEE LIST</div>
                            <h3></h3>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_2" data-toggle="tab">
                        <div class="tile-stats">
                            <div class="icon"><i class="fa fa-user-plus"></i></div>
                            <h3></h3>
                            <div class="count1">ADD EMPLOYEE</div>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_3" data-toggle="tab">
                        <div class="tile-stats">
                            <div class="icon"><i class="fa fa-user-times"></i></div>
                            <h3></h3>
                            <div class="count1">DELETE EMPLOYEE</div>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_4" data-toggle="tab">
                        <div class="tile-stats">
                            <div class="icon"><i class="fa fa-key"></i></div>
                            <h3></h3>
                            <div class="count1">RESET PASSWORD</div>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
                <div class="nav-tabs-custom">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
							<div class="" role="main">
                                <div class="">
                                    <div class="clearfix"></div>
                                    <div class="row ">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="x_panel">
                                                <div class="x_title">
                                                    <h2>EMPLOYEES DETAILS </h2>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="x_content">
                                                    <div class="container">
                                                    	<table id="datatable-responsive" class="table  dt-responsive nowrap empdetails" cellspacing="0" width="100%" >
					   										<thead>
                        										<tr>
																  <th>EID</th>
										    					  <th>NAME</th>							
						  										  <th>JOINED ON</th>
							 									  <th>EMP TYPE</th>
																  <th>GENDER</th>
																  <th>QUALIFICATION</th>
																  <th>MOBILE NO#</th>
																  <th>CITY</th>
																  <th>EDIT</th>
																</tr>
                      										</thead>
                      										<tbody>
                      										</tbody>
                      									</table>
                                                    </div>
                                                </div>
                                            </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                        </div>

                        <div class="tab-pane " id="tab_2">
                            <div class="" role="main">
                                <div class="">
                                    <div class="clearfix"></div>
                                    <div class="row ">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="x_panel">
                                                <div class="x_title">
                                                    <h2>ADD EMPLOYEE DETAILS </h2>
                                                    <h5 class="pull-right"><span style="color:red">* </span>-Mandatory</h5>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="x_content">
                                                    <div class="container">
                                                        <div class="stepwizard">
                                                            <div class="stepwizard-row setup-panel">
                                                                <div class="stepwizard-step col-xs-3">
                                                                    <a href="#step-1" type="button" class="btn btn-success circle">1</a>
                                                                    <p><small>Employee Basic Details</small></p>
                                                                </div>
                                                                <div class="stepwizard-step col-xs-3">
                                                                    <a href="#step-2" type="button" class="btn btn-default circle" disabled="disabled">2</a>
                                                                    <p><small>Experience Details</small></p>
                                                                </div>
                                                                <div class="stepwizard-step col-xs-3">
                                                                    <a href="#step-3" type="button" class="btn btn-default circle" disabled="disabled">3</a>
                                                                    <p><small>Contact Details</small></p>
                                                                </div>
                                                                <div class="stepwizard-step col-xs-3">
                                                                    <a href="#step-4" type="button" class="btn btn-default circle" disabled="disabled">4</a>
                                                                    <p><small>Bank Details</small></p>
                                                                </div>

                                                            </div>
                                                        </div>

                                                        <form action="action" method="POST" enctype="multipart/form-data" >
                                                        	<input type="hidden" value="empadds" name="Action"/> 
                                                            <div class="panel panel-primary setup-content" id="step-1" style="background-color:none;">
                                                                <div class="panel-body" style="background-color:none;">
                                                                    <fieldset>
                                                                        <div class="row">
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-4 col-sm-3 col-xs-12" for="empFname">First Name<sup class="sup">*</sup></label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12 ">
                                                                                
                                                                                    <input type="text" id="empFname1" class="form-control col-md-7 col-xs-12" name="empFname" placeholder="First Name" required="required" title="User Id is required">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-4 col-sm-3 col-xs-12" for="empMname">Middle Name</label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <input id="empMname1" class="form-control col-md-7 col-xs-12" name="empMname" placeholder="Middle Name" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-4 col-sm-3 col-xs-12" for="empLname">last Name</label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <input id="empLname1" class="form-control col-md-7 col-xs-12" name="empLname" placeholder="Last Name" type="text">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br/>
                                                                        <div class="row">
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="empDob">Dob<sup class="sup">*</sup></label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <input type="date" class="form-control col-md-7 col-xs-12" id="empDob1" name="empDob" value="" onblur="ageCount2()" required="required">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-10 col-sm-3 col-xs-12" for="empAge">Age</label>
                                                                                <div class="col-md-10 col-sm-6 col-xs-12">
                                                                                    <input id="empAge1" class="form-control col-md-7 col-xs-12" name="empAge" placeholder="Age" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="empGender">Gender</label>
                                                                                <div class="col-md-9 col-sm-6 col-xs-12">
                                                                                    <p>
                                                                                        <input type="radio" class="flat" name="empGender" id="genderM" value="M" style="width:18px;height:18px;" /> Male
                                                                                        <input type="radio" class="flat" name="empGender" id="genderF" value="F" style="width:18px;height:18px;" /> Female
                                                                                        <input type="radio" class="flat" name="empGender" id="genderF" value="O" style="width:18px;height:18px;" /> Other
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br/>
                                                                        <div class="row">
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-4 col-sm-3 col-xs-12" for="qualification">Qualification<sup class="sup">*</sup></label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <select id="qualification1" class="form-control col-md-7 col-xs-12" name="qualification" placeholder="Qualification" required="required">
                                                                                        <option>--SELECT--</option>
                                                                                        <option>High School Diploma</option>
                                                                                        <option>Degree</option>
                                                                                        <option>Graduate</option>
                                                                                        <option></option>
                                                                                        <option></option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="emptype">Employee Type<sup class="sup">*</sup></label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <select id="emptype1" class="form-control col-md-7 col-xs-12" name="emptype" placeholder="Employee Type" required="required">
                                                                                        <option>--SELECT--</option>
                                                                                        <option>Teacher</option>
                                                                                        <option value="driver">Driver</option>
                                                                                        <option>Attender</option>
                                                                                        <option>Librarian</option>
                                                                                        <option>Accountant</option>
                                                                                        <option>Clerk</option>
                                                                                        <option>Other</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="joinDate">Joining Date<sup class="sup">*</sup></label>
                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
                                                                                    <input type="date" class=" form-control col-md-7 col-xs-12" id="joinDate" name="joiningDate" value="" required="required">
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                        <br/>
                                                                        <div class="row">
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-5 col-sm-3 col-xs-12" for="empAadharNumber">Aadhar Number<sup class="sup">*</sup></label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <input id="empAadharNumber1" class="form-control col-md-7 col-xs-12" name="empAadharNumber" placeholder="Aadhar Number" type="text" maxlength="12" pattern="\d{12,12}" required="required">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-5 col-sm-3 col-xs-12" for="panNumber">PAN Number</label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <input  class="form-control col-md-7 col-xs-12" name="panNumber" placeholder="PAN Number" type="text" maxlength="12" pattern="\d{12,12}">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-5 col-sm-3 col-xs-12" for="empId">Employee ID</label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <input id="empId1" class="form-control col-md-7 col-xs-12" name="empId" placeholder="Employee ID" type="text">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-4">
                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="empPhoto">Upload Photo <sup class="sup">*</sup>
                                                                                </label>
                                                                                <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                    <input id="empPhoto1" class="form-control col-md-7 col-xs-12" name="empPhoto" placeholder="image" accept="image/x-png,image/gif,image/jpeg" type="file" required="required">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                     </fieldset>
                                                                    <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                                                </div>
                                                            </div>

                                                            <div class="panel panel-primary setup-content" id="step-2" style="background-color:none;">
                                                                <div class="panel-body">
                                                                    <fieldset>
                                                                        <div class="row">
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-9 col-sm-3 col-xs-12" for="experience">Total Experience<sup class="sup">*</sup></label>
                                                                                <div class="col-md-11 col-sm-9 col-xs-12">
                                                                                    <input id="experience1" class="form-control col-md-7 col-xs-12" name="experience" placeholder="Total Experience" required="required" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-12 col-sm-3 col-xs-12" for="orgName">Organization Name<sup class="sup">*</sup></label>
                                                                                <div class="col-md-11 col-sm-9 col-xs-12">
                                                                                    <input id="orgName1" class="form-control col-md-7 col-xs-12" name="orgName" placeholder="Organization Name" required="required" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="fromDate">From<sup class="sup">*</sup></label>
                                                                                <div class="col-md-11 col-sm-9 col-xs-12">
                                                                                    <input id="fromDate1" class="form-control col-md-7 col-xs-12" name="fromDate" placeholder="From Date" required="required" type="date">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="toDate">To<sup class="sup">*</sup></label>
                                                                                <div class="col-md-11 col-sm-9 col-xs-12">
                                                                                    <input id="toDate1" class="form-control col-md-7 col-xs-12" name="toDate" placeholder="To Date" required="required" type="date">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br/>
                                                                        <div class="row">
                                                                            <div class="driver box1">
                                                                                <div class="col-md-4">
                                                                                    <label class="control-label col-md-8 col-sm-3 col-xs-12" for="vehicleType">Vehicle Type</label>
                                                                                    <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                        <select id="vehicleType1" class="form-control col-md-7 col-xs-12" name="vehicleType" placeholder="Vehicle Type">
                                                                                            <option>--SELECT--</option>
                                                                                            <option>4 Wheeler</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <label class="control-label col-md-8 col-sm-3 col-xs-12" for="dlNo">D.L Number</label>
                                                                                    <div class="col-md-6 col-sm-8 col-xs-12">
                                                                                        <input id="dlNo1" class="form-control col-md-7 col-xs-12" name="dlNo" placeholder="D.L Number" type="text" maxlength="6" pattern="\d{6,6}">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-11 col-sm-3 col-xs-12" for="subTaught">Subjects Taught<sup class="sup">*</sup></label>
                                                                                <div class="col-md-11 col-sm-9 col-xs-12">
                                                                                    <input id="subTaught1" class="form-control col-md-7 col-xs-12" name="subTaught" placeholder="subjects Taught" required="required" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-11 col-sm-3 col-xs-12" for="classTaught">Class Taught<sup class="sup">*</sup></label>
                                                                                <div class="col-md-11 col-sm-9 col-xs-12">
                                                                                    <input id="classTaught1" class="form-control col-md-7 col-xs-12" name="classTaught" placeholder="class Taught" required="required" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-9 col-sm-3 col-xs-12" for="preDesignation">Previous Designation<sup class="sup">*</sup></label>
                                                                                <div class="col-md-11 col-sm-9 col-xs-12">
                                                                                    <input id="preDesignation1" class="form-control col-md-7 col-xs-12" name="preDesignation" placeholder="Previous Designation" required="required" type="text">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br/>

                                                                    </fieldset>
                                                                    <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                                                    <button class="btn  previousBtn pull-right" type="button" style="">Previous</button>
                                                                </div>
                                                            </div>

                                                            <div class="panel panel-primary setup-content" id="step-3" style="background-color:none;">

                                                                <div class="panel-body">
                                                                    <fieldset>
                                                                        <div class="row">
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="presentAddress">Current Address<sup class="sup">*</sup>
                                                                                </label>
                                                                                <div class="col-md-12 col-sm-6 col-xs-12">
                                                                                    <!--<input id="street" class="form-control col-md-7 col-xs-12"  name="street" placeholder="Present Address" required="required" type="text" >-->
                                                                                    <textarea class="form-control rounded-0" id="presentAddress" name="curAddress" rows="3" required="required"></textarea>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="empPinCode">PinCode
                                                                                </label>
                                                                                <div class="col-md-10 col-sm-6 col-xs-12">
                                                                                    <input id="empPinCode1" class="form-control col-md-7 col-xs-12" name="empPinCode" placeholder="Pincode" type="text" maxlength="6" pattern="\d{6,6}">
                                                                                </div>
                                                                            </div>

                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="empCity">City<sup class="sup">*</sup>
                                                                                </label>
                                                                                <div class="col-md-12 col-sm-6 col-xs-12">
                                                                                    <input id="empCity1" class="form-control col-md-7 col-xs-12" name="empCity" placeholder="City" type="text" required="required">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="empState">State
                                                                                </label>
                                                                                <div class="col-md-12 col-sm-6 col-xs-12">
                                                                                    <input id="empState1" class="form-control col-md-7 col-xs-12" name="empState" placeholder="State" type="text">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <br/>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <input type="checkbox" id="same" name="same" onchange="addressFunction()" />
                                                                                <label for="same">If same permanent address select this box.</label>
                                                                            </div>
                                                                        </div>
                                                                        <br/>
                                                                        <div class="row">
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="permanentAddress">Permanent Address<sup class="sup">*</sup>
                                                                                </label>
                                                                                <div class="col-md-12 col-sm-6 col-xs-12">
                                                                                    <!--<input id="area" class="form-control col-md-7 col-xs-12"  name="area" placeholder="Permanent Address" required="required" type="text" >-->
                                                                                    <textarea class="form-control rounded-0" id="permanentAddress1" name="pAddress" rows="3" required="required"></textarea>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="email">Email
                                                                                </label>
                                                                                <div class="col-md-12 col-sm-8 col-xs-12">
                                                                                    <input type="text" id="email1" name="email" placeholder="Email" class="form-control col-md-7 col-xs-12">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="empMobile">Phone Number1<sup style="color:red">*</sup>
                                                                                </label>
                                                                                <div class="col-md-12 col-sm-8 col-xs-12">
                                                                                    <div class=" input-group  ">
                                                                                        <span class="input-group-addon">+91</span>
                                                                                        <input type="text" id="empMobile" name="empMobile" placeholder="Mobile" class="form-control col-md-7 col-xs-12" maxlength="10" required="required">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="phone">Phone Number2
                                                                                </label>
                                                                                <div class="col-md-12 col-sm-8 col-xs-12">
                                                                                    <div class=" input-group  ">
                                                                                        <span class="input-group-addon">+91</span>
                                                                                        <input type="text" id="phone1" name="empMobile1" placeholder="Phone" class="form-control col-md-7 col-xs-12" maxlength="10">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </fieldset>
                                                                    <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
                                                                    <button class="btn  previousBtn pull-right" type="button" style="">Previous</button>
                                                                </div>
                                                            </div>
                                                            <div class="panel panel-primary setup-content" id="step-4" style="background-color:none;">
                                                                <div class="panel-body">
                                                                    <fieldset>
                                                                        <div class="row">
                                                                                <div class="col-md-3">
                                                                                    <label class="control-label col-md-5 col-sm-3 col-xs-12" for="bankName">Bank Name<sup style="color:red;">*</sup></label>
                                                                                    <div class="col-md-11 col-sm-6 col-xs-12">
                                                                                        <input id="bankName1" class="form-control col-md-7 col-xs-12" name="bankName" placeholder="Bank Name" type="text" required="required">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="branch">Branch<sup style="color:red;">*</sup></label>
                                                                                    <div class="col-md-11 col-sm-6 col-xs-12">
                                                                                        <input id="branch1" class="form-control col-md-7 col-xs-12" name="branch" placeholder="Branch" type="text" required="required">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <label class="control-label col-md-5 col-sm-3 col-xs-12" for="ifscCode">IFSC Code<sup style="color:red;">*</sup>
                                                                                    </label>
                                                                                    <div class="col-md-11 col-sm-8 col-xs-12">
                                                                                        <input type="text" id="ifscCode1" name="ifscCode" placeholder="IFSC Code" class="form-control col-md-7 col-xs-12" required="required">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-3">
                                                                                    <label class="control-label col-md-7 col-sm-3 col-xs-12" for="accNo">Account Number<sup style="color:red;">*</sup>
                                                                                    </label>
                                                                                    <div class="col-md-10 col-sm-8 col-xs-12">
                                                                                        <input type="text" id="accNo1" name="accNo" placeholder="Account Number" class="form-control col-md-7 col-xs-12" required="required">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <br/>
                                                                    </fieldset>
                                                                    <input  type="submit"  value="SUBMIT">
                                                                    <button class="btn  previousBtn pull-right" type="button" style="">Previous</button>
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
                            </div>
                            <div class="tab-pane " id="tab_3">

                            </div>

                            <div class="tab-pane " id="tab_4">

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
	
	 <!-- Custom Theme Scripts -->
   
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
   
   	<script>
	//custom scripts
			function test() {
			    var fullDate = new Date();
			
			    var twoDigitMonth = fullDate.getMonth() + 1;
			    if (twoDigitMonth.length == 1) twoDigitMonth = "0" + twoDigitMonth;
			
			    var twoDigitDate = fullDate.getDate() + "";
			    if (twoDigitDate.length == 1) twoDigitDate = "0" + twoDigitDate;
			    var curHour = fullDate.getHours();
			    var curMin = fullDate.getMinutes();
			    var ampm = curHour >= 12 ? 'PM' : 'AM';
			    curHour = curHour % 12;
			    curHour = curHour ? curHour : 12; // the hour '0' should be '12'
			    //if(curMin.length==1)curMin = "0" + curMin;
			    curMin = curMin < 10 ? '0' + curMin : curMin;
			    //var currentTime = curHour + ":" + curMin; 
			    var currentTime = curHour + ':' + curMin + ' ' + ampm;
			    var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
			    var months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEPT', 'OCT', 'NAV', 'DEC'];
			    var month = months[fullDate.getMonth()];
			    //alert(month);
			    var dayName = days[fullDate.getDay()];
			    var currentDate = twoDigitDate + "  " + month;
			    $(".myspan").html(currentTime + "&nbsp;&nbsp;");
			    $(".mymonth").html(dayName);
			    $("#inner2").html(currentDate);
			    //document.getElementById(".myspan").innerHTML=currentDate + " " + currentTime ;
			    //document.getElementById("dt1").innerHTML= ;
			
			    setTimeout(test, 5);
			}
			$(document).ready(function() {
			    test();
			});
			
			//Age calculation	
			function ageCount2() {
			    var date1 = new Date();
			    var dob = document.getElementById("empDob1").value;
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
			        document.getElementById("empAge1").value = age;
			        document.getElementById("empAge1").focus();
			        return true;
			    } else {
			        alert("Invalid date format. Please Input in (dd/mm/yyyy) format!");
			        return false;
			    }
			}
			//City Name validation
			$('#empCity1').keypress(function(e) {
			    var regex = new RegExp("^[a-zA-Z ]*$");
			    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			    if (regex.test(str)) {
			        return true;
			    } else {
			        e.preventDefault();
			        // //////////////alert'Please Enter Alphabate');
			        return false;
			    }
			});
			//State Name validation
			$('#empState1').keypress(function(e) {
			    var regex = new RegExp("^[a-zA-Z ]*$");
			    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			    if (regex.test(str)) {
			        return true;
			    } else {
			        e.preventDefault();
			        // //////////////alert'Please Enter Alphabate');
			        return false;
			    }
			});
			
			
			//First Name validation
			$('#empFName1').keypress(function(e) {
			    var regex = new RegExp("^[a-zA-Z ]*$");
			    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			    if (regex.test(str)) {
			        return true;
			    } else {
			        e.preventDefault();
			        // //////////////alert'Please Enter Alphabate');
			        return false;
			    }
			});
			
			//Last Name validation
			$('#empLName1').keypress(function(e) {
			    var regex = new RegExp("^[a-zA-Z ]*$");
			    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			    if (regex.test(str)) {
			        return true;
			    } else {
			        e.preventDefault();
			        // //////////////alert'Please Enter Alphabate');
			        return false;
			    }
			});
			
			//Age validation
			$('#empAge1').keypress(function(e) {
			    var regex = new RegExp("^[0-9 ]*$");
			    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			    if (regex.test(str)) {
			        return true;
			    } else {
			        e.preventDefault();
			        // //////////////alert'Please Enter Alphabate');
			        return false;
			    }
			});
			
			//Aadhar Number Validation
			$(document).ready(function() {
			    jQuery('#empAadharNumber1').keypress(function(key) {
			    	 if (key.charCode < 48 || key.charCode > 57) {
			            //$('#cano').css('display','block');
			            return false;
			        }
			    });
			});
			
			// Pincode validation
			$('#empPinCode1').keypress(function(e) {
			    var regex = new RegExp("^[0-9 ]*$");
			    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
			    if (regex.test(str)) {
			        return true;
			    } else {
			        e.preventDefault();
			        // //////////////alert'Please Enter Alphabate');
			        return false;
			    }
			});
			$(document).ready(function() {
			    $("#emptype1").change(function() {
			        $(this).find("option:selected").each(function() {
			            var optionValue = $(this).attr("value");
			            if (optionValue) {
			                $(".box1").not("." + optionValue).hide();
			                $("." + optionValue).show();
			
			            } else {
			                $(".box1").hide();
			
			            }
			        });
			    }).change();
			});
			
			$(document).on('click', '#empId1', function(e) {
			
			    var fname = $('#empFname1').val();
			    var mname = $('#empMname1').val();
			    var lname = $('#empLname1').val();
			    var adar = $('#empAadharNumber1').val();
			
			    var empid = fname.substring(0, 2) + mname.substring(0, 2) + lname.substring(0, 2) + "-" + adar.substring(8);
			    $('#empId1').val(empid);
			});
			
			
			function addressFunction() {
			    var same_addr = document.getElementById("same").checked;
			    var resaddr = document.getElementById("presentAddress").value;
			    if (same_addr) {
			        if ((resaddr == '' || resaddr == null)) {
			            document.getElementById("same").checked = false;
			        } else {
			            document.getElementById("permanentAddress1").value = resaddr;
			        }
			    } else {
			        document.getElementById("permanentAddress1").value = '';
			    }
			}
			
			$(document).ready(function() {
			
			    var navListItems = $('div.setup-panel div a'),
			        allWells = $('.setup-content'),
			        allNextBtn = $('.nextBtn');
			    allPreviousBtn = $('.previousBtn');
			    allWells.hide();
			
			    navListItems.click(function(e) {
			        e.preventDefault();
			        var $target = $($(this).attr('href')),
			            $item = $(this);
			
			        if (!$item.hasClass('disabled')) {
			            navListItems.removeClass('btn-success').addClass('btn-default');
			            $item.addClass('btn-success');
			            allWells.hide();
			            $target.show();
			            $target.find('input:eq(0)').focus();
			        }
			    });
			
			    allNextBtn.click(function() {
			        var curStep = $(this).closest(".setup-content"),
			            curStepBtn = curStep.attr("id"),
			            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
			            curInputs = curStep.find("input[type='text'],input[type='url']"),
			            isValid = true;
			
			        $(".form-group").removeClass("has-error");
			
			        if (isValid) nextStepWizard.removeAttr('disabled').trigger('click');
			    });
			
			    allPreviousBtn.click(function() {
			        var curStep = $(this).closest(".setup-content"),
			            curStepBtn = curStep.attr("id"),
			            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().prev().children("a"),
			            curInputs = curStep.find("input[type='text'],input[type='url']"),
			            isValid = true;
			        $(".form-group").removeClass("has-error");
			        if (isValid) nextStepWizard.removeAttr('disabled').trigger('click');
			    });
			
			    $('div.setup-panel div a.btn-success').trigger('click');
			});
			
			//Employee Details
			$(document).ready(function() {
				var t = $('#datatable-responsive').DataTable();
			    $.ajax({
			        type: "POST",
			        url: "action?Action=getEmployeeList",
			        dataType: "json",
			        //if received a response from the server
			        success: function(data, textStatus, jqXHR) {
			            //our country code was correct so we have some information to display
			            if (data.success)
			            {
			                console.log(data.empList.length);
			                for (var i = 0; i < data.empList.length; i++)
			                {
			                	t.row.add( [
			                		data.empList[i].eid,
			                		data.empList[i].fname,
			                		data.empList[i].joinDate,
			                		data.empList[i].etype,
			                		data.empList[i].gender,
			                		data.empList[i].qualification,
			                		data.empList[i].mobile1,
			                		data.empList[i].city,
			                		"<button>edit</button>"
			                    ] ).draw( false );
			             
			                    
			               
			                	/*$(".empdetails").append("<tr>");
			                	$(".empdetails").append("<td>" + data.empList[i].eid + "</td>");
			                    $(".empdetails").append("<td>" + data.empList[i].fname + "</td>");
			                    $(".empdetails").append("<td>" + data.empList[i].joinDate + "</td>");
			                    $(".empdetails").append("<td>" + data.empList[i].etype + "</td>");
			                    $(".empdetails").append("<td>" + data.empList[i].gender + "</td>");
			                    $(".empdetails").append("<td>" + data.empList[i].qualification + "</td>");
			                    $(".empdetails").append("<td>" + data.empList[i].mobile1 + "</td>");
			                    $(".empdetails").append("<td>" + data.empList[i].city + "</td>");
			                    $(".empdetails").append("</tr>");*/
			                	
			                    console.log(data.empList[i].fname);
			                }
			                
			           }
			            //display error message
			            else {
			
			            }
			        },
			        //If there was no resonse from the server
			        error: function(jqXHR, textStatus, errorThrown) {
			            console.log("Something really bad happened " + textStatus);
			        }
			    });
			});

	</script>
 </body>
</html>