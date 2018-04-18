<%@page import="com.erp.daoimpl.*"%>
<%@page import="com.erp.dao.*"%>
<%@page import="com.erp.bean.*"%>
<%@page import="com.erp.general.InsertXMLData"%>
<%@ page import="java.util.*"%>

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
  <%
		ConfigDaoImpl cd = ConfigDaoImpl.getInstance();
		School school = cd.getReady();
		Map<String,String> classList = school.getClassList();
		InsertXMLData insData = InsertXMLData.getInstance();
		
		//CreateSectionDao csd = CreateSectionDaoImpl.getInstance();
		List<XMLClasses> cslist = insData.getXMLDataValues();
		for(XMLClasses xls :cslist)
		{
			System.out.println("details of class: "+xls.getClassName());
		}
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
	                            <li><a href="student.jsp"><i class="fa fa-user"></i> Student </a></li>
	                            <li><a href="employee.jsp"><i class="fa fa-user"></i> Staff </a></li>
	                        </ul>
	                    </div>
	                </div>
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
	                            <a href="javascript:;" class="user-profile myhospital">School Name</a>
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
	                        <div class="count1">STUDENT LIST</div>
	                        <h3></h3>
	                        <p>&nbsp;</p>
	                    </div>
	                </div>
	                <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_2" data-toggle="tab">
	                    <div class="tile-stats">
	                        <div class="icon"><i class="fa fa-user-plus"></i></div>
	                        <h3></h3>
	                        <div class="count1">ADD STUDENT</div>
	                        <p>&nbsp;</p>
	                    </div>
	                </div>
	                <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_3" data-toggle="tab">
	                    <div class="tile-stats">
	                        <div class="icon"><i class="fa fa-user-times"></i></div>
	                        <h3></h3>
	                        <div class="count1">DELETE STUDENT</div>
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
																  <th>SID</th>
										    					  <th>NAME</th>							
						  										  <th>CLASS</th>
							 									  <th>SECTION</th>
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
	                                                <h2>ADD STUDENT DETAILS </h2>
	                                                <h5 class="pull-right"><span style="color:red">* </span>-Mandatory</h5>
	                                                <div class="clearfix"></div>
	                                            </div>
	                                            <div class="x_content">
	                                                <div class="container">
	                                                    <div class="stepwizard">
	                                                        <div class="stepwizard-row setup-panel">
	                                                            <div class="stepwizard-step col-xs-3">
	                                                                <a href="#step-1" type="button" class="btn btn-success circle">1</a>
	                                                                <p><small>Student Basic Details</small></p>
	                                                            </div>
	                                                            <div class="stepwizard-step col-xs-3">
	                                                                <a href="#step-2" type="button" class="btn btn-default circle" disabled="disabled">2</a>
	                                                                <p><small>Family Details</small></p>
	                                                            </div>
	                                                            <div class="stepwizard-step col-xs-3">
	                                                                <a href="#step-3" type="button" class="btn btn-default circle" disabled="disabled">3</a>
	                                                                <p><small>Contact Details</small></p>
	                                                            </div>
	                                                            <div class="stepwizard-step col-xs-3">
	                                                                <a href="#step-4" type="button" class="btn btn-default circle" disabled="disabled">4</a>
	                                                                <p><small>Medical Details</small></p>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	                                                    <form method="post" action="action" class="form-label-left" id="studentform" enctype="multipart/form-data">
	                                                        <div class="panel panel-primary setup-content" id="step-1" style="background-color:none;">
	                                                            <div class="panel-body" style="background-color:none;">
	                                                                <fieldset>
	                                                                    <div class="row">
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="name">First Name<sup class="sup">*</sup></label>
	                                                                            <div class=" ">
	                                                                                <input type="text" id="fname1" class="form-control" name="firstName" placeholder="First Name" required="required" title="User Id is required">
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="name">Middle Name</label>
	                                                                            <div class="">
	                                                                                <input id="mname" class="form-control" name="MiddleName" placeholder="Middle Name" type="text">
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="name">last Name</label>
	                                                                            <div class="">
	                                                                                <input id="lname1" class="form-control" name="lastName" placeholder="Last Name" type="text">
	                                                                            </div>
	                                                                        </div>
	                                                                    </div>
	                                                                    <br/>
	                                                                    <div class="row">
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="dob">Dob<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <!-- <input class="form-control" id="single_cal1"  type="text" placeholder="DOB" onblur="ageCount()" required>-->
	                                                                                <input type="date" class="form-control" id="dob1" value="" name="dob" onblur="ageCount()" required>
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="age">Age</label>
	                                                                            <div class="">
	                                                                                <input id="age1" class="form-control" name="age" placeholder="Age" type="text">
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="name">Gender<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <p>
	                                                                                   <label> <input type="radio" class="flat" name="gender" id="genderM" value="M" style="width:18px;height:18px;" required /> Male</label>
	                                                                                   <label> <input type="radio" class="flat" name="gender" id="genderF" value="F" style="width:18px;height:18px;" /> Female</label>
	                                                                                   <label> <input type="radio" class="flat" name="gender" id="genderF" value="O" style="width:18px;height:18px;" /> Other</label>
	                                                                                </p>
	                                                                            </div>
	                                                                        </div>
	                                                                    </div>
	                                                                    <br/>
	                                                                    <div class="row">
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="religion">Religion<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <select id="religion1" class="form-control" name="religion" placeholder="Religion" required="required">
	                                                                                    <option>--SELECT--</option>
	                                                                                    <option>HINDU</option>
	                                                                                    <option>MUSLIM</option>
	                                                                                    <option>CHRISTIAN</option>
	                                                                                    <option>JAIN</option>
	                                                                                    <option>SIKH</option>
	                                                                                </select>
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="caste">Caste<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <select id="caste1" class="form-control" name="caste" placeholder="Caste" required="required">
	                                                                                    <option>--SELECT--</option>
	                                                                                    <option>GENERAL</option>
	                                                                                    <option>OBC</option>
	                                                                                    <option>1A</option>
	                                                                                    <option>1B</option>
	                                                                                    <option>2A</option>
	                                                                                    <option>2B</option>
	                                                                                    <option>3A</option>
	                                                                                    <option>3B</option>
	                                                                                </select>
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="name">Category</label>
	                                                                            <div class="">
	                                                                                <p>
	                                                                                    <input type="radio" class="flat" name="category" id="rte" value="RTE" style="width:18px;height:18px;" /> RTE
	                                                                                    <input type="radio" class="flat" name="category" id="nonRte" value="NonRTE" style="width:18px;height:18px;" />Non-RTE
	                                                                                </p>
	                                                                            </div>
	                                                                        </div>
	
	                                                                    </div>
	                                                                    <br/>
	                                                                    <div class="row">
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="aadharNumber">Aadhar Number<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <input id="aadharNumber1" class="form-control" name="aadharNumber" placeholder="Aadhar Number" required="required" type="text" maxlength="12" pattern="\d{12,12}">
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="name">Nationality</label>
	                                                                            <div class="">
	                                                                                <p>
	                                                                                  <label>  <input type="radio" class="flat" name="nationality" id="indian" value="Ind" onclick="javascript:yesnoCheck();" style="width:18px;height:18px;" /> Indian </label>
	                                                                                   <label> <input type="radio" class="flat" name="nationality" id="nonIndian" value="NonInd" onclick="javascript:yesnoCheck();" style="width:18px;height:18px;" />Non-Indian</label>
	                                                                                </p>
	                                                                            </div>
	                                                                            <div class="col-md-4" id="txtbox" style="visibility:hidden;">
	                                                                                <label class="control-label" for="otherNationality" style="float:left;">Other</label>
	                                                                                <div class="">
	                                                                                    <input class="form-control" id="otherNationality" name="othernation" type="text" value="">
	                                                                                </div>
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="motherTongue">Mother Tongue<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <select id="motherTongue1" class="form-control" name="motherTongue" placeholder="MotherTongue" required="required">
	                                                                                    <option>--SELECT--</option>
	                                                                                    <option>Kannada</option>
	                                                                                    <option>Telugu</option>
	                                                                                    <option>Hindi</option>
	                                                                                    <option>Tamil</option>
	                                                                                    <option>Malayalam</option>
	                                                                                    <option>Tulu</option>
	                                                                                </select>
	                                                                            </div>
	                                                                        </div>
	                                                                    </div>
	                                                                    <div class="row">
	
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="studentId">Student ID<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <input id="studentId1" class="form-control" name="studentId" placeholder="Student ID" required="required" type="text">
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="class">Class<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <select name="class" class="form-control" id="className">
																						 <option>--Select Class--</option>
																						<%for(String str:st)
																						{%>
																						 	<option><%=str %></option>
																					   <% }
																					   	%>
																					</select>
	                                                                            </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="section">Section<sup class="sup">*</sup></label>
	                                                                            <div class="">
	                                                                                <select name="section" class="form-control" id="sec">
																						<option>--Select Section--</option>
																					</select>
	                                                                            </div>
	                                                                        </div>
	
	                                                                    </div>
	                                                                    <br/>
	                                                                    <div class="row">
	                                                                        <div class="col-md-4">
	                                                                            <label class="control-label" for="name">Spoken Languages</label>
	                                                                            <div class="">
	                                                                                <p style="padding: 5px;">
	                                                                                    <label><input type="checkbox" name="spokenLang[]" id="spokenLanguages1" value="Kannada" class="flat x" />&nbsp; Kannada</label>
	                                                                                    <label> <input type="checkbox" name="spokenLang[]" id="spokenLanguages2" value="English" class="flat x" />&nbsp; English</label>
	                                                                                    <label><input type="checkbox" name="spokenLang[]" id="spokenLanguages3" value="Hindi" class="flat x" />&nbsp; Hindi</label>
	                                                                                    <label><input type="checkbox" name="spokenLang[]" id="spokenLanguages4" value="Telagu" class="flat x" />&nbsp; Telagu</label>
	                                                                                    <label><input type="checkbox" name="spokenLang[]" id="spokenLanguages4" value="Tamil" class="flat x" />&nbsp;Tamil</label>
	                                                                                    </p>
	                                                                                    <label>Other Language </label>
	                                                                                         <div class="">
	                                                                                             <input class="form-control" id="otherLanguage" type="text" value="">
	                                                                                       	 </div>
	                                                                             </div>
	                                                                        </div>
	                                                                        <div class="col-md-4">
	                                                                        	<label>Photo</label>
																						<input type="file" name="simg" class="form-control" value="" id="simgid">
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
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="fatherName1">Father Name<sup class="sup">*</sup>
	                                                                                </label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <input id="fatherName1" class="form-control col-md-7 col-xs-12" name="fatherName" placeholder="Father Name" required="required" type="text">
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="fatherEducation1">Education<sup class="sup">*</sup></label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <select id="fatherEducation1" class="form-control col-md-7 col-xs-12" name="education" placeholder="Education" required="required">
	                                                                                        <option>--SELECT--</option>
	                                                                                        <option>No formal education</option>
	                                                                                        <option>Primary education</option>
	                                                                                        <option>Secondary education or high school</option>
	                                                                                        <option>Bachelor's degree</option>
	                                                                                        <option>Master's degree</option>
	                                                                                        <option>Doctorate or higher</option>
	                                                                                    </select>
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="foccupation1">Occupation<sup class="sup">*</sup></label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <select id="foccupation1" class="form-control col-md-7 col-xs-12" name="occupation" placeholder="Occupation" required="required">
	                                                                                        <option>--SELECT--</option>
	                                                                                        <option>Agriculturalist</option>
	                                                                                        <option>Engineer</option>
	                                                                                        <option>Doctor</option>
	                                                                                        <option>Teacher</option>
	                                                                                        <option>Lawyer</option>
	                                                                                        <option>Other</option>
	                                                                                    </select>
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="fatherIncome1">Income<sup class="sup">*</sup></label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <select id="fatherIncome1" class="form-control col-md-7 col-xs-12" name="income" placeholder="Income" required="required">
	                                                                                        <option>--SELECT--</option>
	                                                                                        <option>Upto 1Lakh</option>
	                                                                                        <option>>1Lakh</option>
	                                                                                        <option>1lakh-3Lakh</option>
	                                                                                        <option>3lakh-8Lakh</option>
	                                                                                        <option>>8Lakh</option>
	                                                                                    </select>
	                                                                                </div>
	                                                                            </div>
	                                                                        </div>
	                                                                        <br/>
	                                                                        <div class="row">
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="motherName1">Mother Name<sup class="sup">*</sup>
	                                                                                </label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <input id="motherName1" class="form-control col-md-7 col-xs-12" name="motherName" placeholder="Mother Name" required="required" type="text">
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="education1">Education</label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <select id="education1" class="form-control col-md-7 col-xs-12" name="meducation" placeholder="Education">
	                                                                                        <option>--SELECT--</option>
	                                                                                        <option>No formal education</option>
	                                                                                        <option>Primary education</option>
	                                                                                        <option>Secondary education or high school</option>
	                                                                                        <option>Bachelor's degree</option>
	                                                                                        <option>Master's degree</option>
	                                                                                        <option>Doctorate or higher</option>
	                                                                                    </select>
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="occupation1">Occupation</label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <select id="ocupation1" class="form-control col-md-7 col-xs-12" name="moccupation" placeholder="Occupation">
	                                                                                        <option>--SELECT--</option>
	                                                                                        <option>Home Maker</option>
	                                                                                        <option>Engineer</option>
	                                                                                        <option>Doctor</option>
	                                                                                        <option>Teacher</option>
	                                                                                        <option>Lawyer</option>
	                                                                                        <option>Other</option>
	                                                                                    </select>
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="income1">Income</label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <select id="income1" class="form-control col-md-7 col-xs-12" name="mincome" placeholder="Income">
	                                                                                        <option>--SELECT--</option>
	                                                                                        <option>Upto 1Lakh</option>
	                                                                                        <option>>1Lakh</option>
	                                                                                        <option>1lakh-3Lakh</option>
	                                                                                        <option>3lakh-8Lakh</option>
	                                                                                        <option>>8Lakh</option>
	                                                                                    </select>
	                                                                                </div>
	                                                                            </div>
	                                                                        </div>
	                                                                        <br/>
	                                                                        <div class="row">
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="siblingName1">Sibling Name
	                                                                                </label>
	                                                                                <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                    <input id="siblingName1" class="form-control col-md-7 col-xs-12" name="siblingName" placeholder="Sibling Name" type="text">
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-6 col-sm-3 col-xs-12" for="siblingDob1">Dob</label>
	                                                                                    <div class="col-md-10 col-sm-9 col-xs-12">
	                                                                                        <input type="date" class=" form-control col-md-7 col-xs-12" id="siblingDob1" name="siblingDob" value="" onblur="ageCount1()">
	                                                                                    </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-10 col-sm-3 col-xs-12" for="siblingAge1">Age
	                                                                                </label>
	                                                                                <div class="col-md-10 col-sm-4 col-xs-12">
	                                                                                    <input class="form-control col-md-7 col-xs-12" id="siblingAge1" name="siblingAge" type="text" value="" placeholder="Age">
	                                                                                </div>
	                                                                            </div>
	                                                                        </div>
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
	                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="address">Address<sup class="sup">*</sup>
	                                                                                </label>
	                                                                                <div class="col-md-12 col-sm-6 col-xs-12">
	                                                                                    <!--<input id="street" class="form-control col-md-7 col-xs-12"  name="street" placeholder="Present Address" required="required" type="text" >-->
	                                                                                    <textarea class="form-control rounded-0" id="address" name="addr" rows="3"></textarea>
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="city1">City<sup class="sup">*</sup>
	                                                                                </label>
	                                                                                <div class="col-md-11 col-sm-6 col-xs-12">
	                                                                                    <input id="city1" class="form-control col-md-7 col-xs-12" name="city" placeholder="City" required="required" type="text">
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="state1">State<sup class="sup">*</sup>
	                                                                                </label>
	                                                                                <div class="col-md-11 col-sm-6 col-xs-12">
	                                                                                    <input id="state1" class="form-control col-md-7 col-xs-12" name="state" placeholder="State" required="required" type="text">
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="pinCode1">PinCode<sup class="sup">*</sup>
	                                                                                </label>
	                                                                                <div class="col-md-11 col-sm-10 col-xs-12">
	                                                                                    <input id="pinCode1" class="form-control col-md-7 col-xs-12" name="pinCode" placeholder="Pincode" required="required" type="text" maxlength="6" pattern="\d{6,6}">
	                                                                                </div>
	                                                                            </div>
	                                                                        </div>
	                                                                        <br/>
	                                                                        <div class="row">
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="phoneNum1">Phone Number1<sup style="color:red">*</sup>
	                                                                                </label>
	                                                                                <div class="col-md-12 col-sm-8 col-xs-12">
	                                                                                    <div class=" input-group  ">
	                                                                                        <span class="input-group-addon">+91</span>
	                                                                                        <input type="text" id="phoneNum1" name="phoneNumber1" required="required" placeholder="PhoneNumber1" class="form-control col-md-7 col-xs-12" maxlength="10">
	                                                                                    </div>
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="phoneNum2">Phone Number2
	                                                                                </label>
	                                                                                <div class="col-md-11 col-sm-8 col-xs-12">
	                                                                                    <div class=" input-group  ">
	                                                                                        <span class="input-group-addon">+91</span>
	                                                                                        <input type="text" id="phoneNum2" name="phoneNumber2" placeholder="PhoneNumber2" class="form-control col-md-7 col-xs-12" maxlength="10">
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
	                                                                            <div class="col-md-2">
	                                                                                <label class="control-label col-md-7" for="height1">Height<sup class="sup">*</sup></label>
	                                                                                <div class="col-md-9 col-sm-6 col-xs-12">
	                                                                                    <input id="height1" class="form-control col-md-7 col-xs-12" name="height" placeholder="Height" required="required" type="text">
	                                                                                </div>
	                                                                                <div class="col-md-1 col-sm-1 col-xs-12">
	                                                                                    inch
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-2">
	                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="weight1">Weight<sup class="sup">*</sup></label>
	                                                                                <div class="col-md-9 col-sm-6 col-xs-12">
	                                                                                    <input id="weight1" class="form-control col-md-7 col-xs-12" name="weight" placeholder="Weight" required="required" type="text">
	                                                                                </div>
	                                                                                <div class="col-md-1 col-sm-1 col-xs-12">
	                                                                                    kg
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-2">
	                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="bmi1">BMI<sup class="sup">*</sup></label>
	                                                                                <div class="col-md-9 col-sm-6 col-xs-12">
	                                                                                    <input id="bmi1" class="form-control col-md-7 col-xs-12" name="bmi" placeholder="BMI" required="required" type="text">
	                                                                                </div>
	                                                                                <div class="col-md-1 col-sm-1 col-xs-12">
	                                                                                    kg/m2
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-2">
	                                                                                <label class="control-label col-md-7 col-sm-3 col-xs-12" for="bloodGroup1">Blood Group<sup class="sup">*</sup></label>
	                                                                                <div class="col-md-12 col-sm-6 col-xs-12">
	                                                                                    <select id="bloodGroup1" class="form-control col-md-7 col-xs-12" name="bloodGroup" placeholder="BloodGroup" required="required">
	                                                                                        <option>--SELECT--</option>
	                                                                                        <option>A+ve</option>
	                                                                                        <option>A-ve</option>
	                                                                                        <option>B+ve</option>
	                                                                                        <option>B-ve</option>
	                                                                                        <option>O+ve</option>
	                                                                                        <option>O-ve</option>
	                                                                                        <option>AB+ve</option>
	                                                                                        <option>AB-ve</option>
	                                                                                    </select>
	                                                                                </div>
	                                                                            </div>
	                                                                            <div class="col-md-3">
	                                                                                <label class="control-label col-md-8 col-sm-3 col-xs-12" for="physicallyHandicap">Physically Handicapped</label>
	                                                                                <div class="col-md-8 col-sm-6 col-xs-12">
	                                                                                    <p>
	                                                                                        <input type="radio" class="flat" name="physicallyHandicapped" id="notphyHand" value="M" style="width:18px;height:18px;" /> Yes
	                                                                                        <input type="radio" class="flat" name="physicallyHandicapped" id="phyHand" value="F" style="width:18px;height:18px;" />No
	                                                                                    </p>
	                                                                                </div>
	                                                                            </div>
	                                                                        </div>
	                                                                        <br/>
	                                                                    </fieldset>
	                                                                    <input type="hidden" name="Action" value="addstudent" >
	                                                                    <button class="btn btn-success pull-right studentsubmit" type="submit" onclick="">Submit</button>
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
	$(document).ready(function() {

	    $("#datatable-responsive").DataTable();
	});


	function yesnoCheck() {
	    if (document.getElementById('nonIndian').checked) {
	        document.getElementById('txtbox').style.visibility = 'visible';
	    } else document.getElementById('txtbox').style.visibility = 'hidden';
	}
	//Age calculation	
	function ageCount() {
	    var date1 = new Date();
	    var dob = document.getElementById("dob1").value;
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
	        document.getElementById("age1").value = age;
	        document.getElementById("age1").focus();
	        return true;
	    } else {
	        alert("Invalid date format. Please Input in (dd/mm/yyyy) format!");
	        return false;
	    }
	}
	//City Name validation
	$('#city1').keypress(function(e) {
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
	$('#state1').keypress(function(e) {
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

	//Validation of height

	$('#height1').keypress(function(event) {
	    var char1 = event.charCode;
	    if (!((char1 >= 48 && char1 <= 57)) && !this.value.length) {
	        //$('#fbSpan').css('display','block');
	        event.preventDefault();
	        //////////alert"special");
	    } else if (!((char1 >= 48 && char1 <= 57) || (char1 == 46)) && this.value.length) {

	        // $('#fbSpan').css('display','block');
	        event.preventDefault();


	    } else if (event.keyCode == 46 && this.value.split('.').length == 2) {
	        // $('#fbSpan').css('display','block');
	        event.preventDefault();

	    }


	});
	//Validation of weight

	$('#weight1').keypress(function(event) {
	    var char1 = event.charCode;
	    if (!((char1 >= 48 && char1 <= 57)) && !this.value.length) {
	        //$('#fbSpan').css('display','block');
	        event.preventDefault();
	        //////////alert"special");
	    } else if (!((char1 >= 48 && char1 <= 57) || (char1 == 46)) && this.value.length) {

	        // $('#fbSpan').css('display','block');
	        event.preventDefault();


	    } else if (event.keyCode == 46 && this.value.split('.').length == 2) {
	        // $('#fbSpan').css('display','block');
	        event.preventDefault();

	    }


	});
	//Validation of BMI

	$('#bmi1').keypress(function(event) {
	    var char1 = event.charCode;
	    if (!((char1 >= 48 && char1 <= 57)) && !this.value.length) {
	        //$('#fbSpan').css('display','block');
	        event.preventDefault();
	        //////////alert"special");
	    } else if (!((char1 >= 48 && char1 <= 57) || (char1 == 46)) && this.value.length) {

	        // $('#fbSpan').css('display','block');
	        event.preventDefault();


	    } else if (event.keyCode == 46 && this.value.split('.').length == 2) {
	        // $('#fbSpan').css('display','block');
	        event.preventDefault();

	    }


	});
	//First Name validation
	$('#fname1').keypress(function(e) {
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
	$('#mname').keypress(function(e) {
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
	$('#lname1').keypress(function(e) {
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
	$('#age1').keypress(function(e) {
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
	    $('#aadharNumber1').keypress(function(key) {
	        if (key.charCode < 48 || key.charCode > 57) {
	            //$('#cano').css('display','block');
	            return false;
	        }
	    });
	});
	//Father Name validation
	$('#fatherName1').keypress(function(e) {
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
	//Mother Name validation
	$('#motherName1').keypress(function(e) {
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
	//Sibling Name validation
	$('#siblingName1').keypress(function(e) {
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
	// Sibling Age validation
	$('#siblingAge1').keypress(function(e) {
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
	// Pincode validation
	$('#pinCode1').keypress(function(e) {
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
	// PhoneNumber1 validation
	$('#phoneNum1').keypress(function(e) {
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
	// PhoneNumber2 validation
	$('#phoneNum2').keypress(function(e) {
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

	function ageCount1() {
	    var date1 = new Date();
	    var dob = document.getElementById("siblingDob1").value;
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
	        document.getElementById("siblingAge1").value = age;
	        document.getElementById("siblingAge1").focus();
	        return true;
	    } else {
	        alert("Invalid date format. Please Input in (dd/mm/yyyy) format!");
	        return false;
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
	$(document).ready(function() {
	    $("#className").change(function(e) {
	        var str = $("#className").val();
	        dataString = "code=" + str;
	        $.ajax({
	            type: "POST",
	            url: "action?Action=getSection",
	            data: dataString,
	            dataType: "json",
	            //if received a response from the server
	            success: function(data, textStatus, jqXHR) {
	                //displaying sections if found
	                if (data.success) {
	                    $("#ajaxResponse").html("");
	                    console.log(data.sectionInfo.length);
	                    var cars = new Array(data.sectionInfo);
	                    $("#sec").html("");
	                    $("#sec").append("<option>--Select Section--</option>")
	                    for (var i = 0; i < data.sectionInfo.length; i++)

	                        $("#sec").append("<option>" + data.sectionInfo[i] + "</option>");
	                }
	                //display error message
	                else {
	                	$("#sec").append("<option>No Classes found</option>");
	                }
	            },
	            //If there was no resonse from the server
	            error: function(jqXHR, textStatus, errorThrown) {
	                console.log("Something really bad happened " + textStatus);
	            }
	        });
	    });
	
		var t = $('#datatable-responsive').DataTable();
	    $.ajax({
	        type: "POST",
	        url: "action?Action=getStudentList",
	        dataType: "json",
	        //if received a response from the server
	        success: function(data, textStatus, jqXHR) {
	            //our country code was correct so we have some information to display
	            if (data.success)
	            {
	                console.log(data.studList);
	                for (var i = 0; i < data.studList.length; i++)
	                {
	                	
	                	t.row.add( [
	                		data.studList[i].studentId,
	                		data.studList[i].firstName,
	                		data.studList[i].sClass,
	                		data.studList[i].section,
	                		"<button>edit</button>"
	                    ] ).draw( false );
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