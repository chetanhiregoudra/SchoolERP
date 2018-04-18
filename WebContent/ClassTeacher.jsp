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
  
  /* Latest compiled and minified CSS included as External Resource*/

/* Optional theme */

/*@import url('//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css');*/
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
    filter: alpha(opacity=100) !important;*/
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
background:#333d8a59;}
  
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
	
	.multiselect-container {
	position: absolute;
	list-style-type: none;
	margin: 0;
	padding: 0
}

.multiselect-container .input-group {
	margin: 5px
}

.multiselect-container>li {
	padding: 0
}

.multiselect-container>li>a.multiselect-all label {
	font-weight: 700
}

.multiselect-container>li.multiselect-group label {
	margin: 0;
	padding: 3px 20px 3px 20px;
	height: 100%;
	font-weight: 700
}

.multiselect-container>li.multiselect-group-clickable label {
	cursor: pointer
}

.multiselect-container>li>a {
	padding: 0
}

.multiselect-container>li>a>label {
	margin: 0;
	height: 100%;
	cursor: pointer;
	font-weight: 400;
	padding: 3px 20px 3px 40px
}

.multiselect-container>li>a>label.radio,
.multiselect-container>li>a>label.checkbox {
	margin: 0
}

.multiselect-container>li>a>label>input[type=checkbox] {
	margin-bottom: 5px
}

.btn-group>.btn-group:nth-child(2)>.multiselect.btn {
	border-top-left-radius: 4px;
	border-bottom-left-radius: 4px
}

.form-inline .multiselect-container label.checkbox,
.form-inline .multiselect-container label.radio {
	padding: 3px 20px 3px 40px
}

.form-inline .multiselect-container li a label.checkbox input[type=checkbox],
.form-inline .multiselect-container li a label.radio input[type=radio] {
	margin-left: -20px;
	margin-right: 0
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
	               <li><a href="student.html"><i class="fa fa-user"></i> Student </a></li>	
                   <li><a href="staff.html"><i class="fa fa-user"></i> Staff </a></li>	
	               <li><a href="student.jsp"><i class="fa fa-user"></i>Classroom Management</a></li>
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
                  <h3 style="color: #7986CB;margin-right:90px;">STUDENT LIST</h3>
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
             <!--   <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12" href="#tab_3" data-toggle="tab">
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
              </div>-->
            </div>
	
	
	
	<div class="nav-tabs-custom">
           
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">	
              
			  </div>
         
	
	
	<div class="tab-pane " id="tab_2">	
        <div class="" role="main">
	       <div class="">
	   
	     <div class="clearfix"></div>

	     <div class="row " >
	       <div class="col-md-12 col-sm-12 col-xs-12">
	    <div class="x_panel">
	  <div class="x_title">
		<h2>Classroom Management</h2>
		<h5 class="pull-right"><span style="color:red">* </span>-Mandatory</h5>
		
		<div class="clearfix"></div>
	  </div>
	  <div class="x_content">
	    <div class="container">
    <div class="stepwizard">
        <div class="stepwizard-row setup-panel">
            <div class="stepwizard-step col-xs-4"> 
                <a href="#step-1" type="button" class="btn btn-success circle">1</a>
                <p><small>Create ClassTeacher</small></p>
            </div>
            <div class="stepwizard-step col-xs-4"> 
                <a href="#step-2" type="button" class="btn btn-default circle" disabled="disabled">2</a>
                <p><small>Assign Subject to Teacher</small></p>
            </div>
            <div class="stepwizard-step col-xs-4"> 
                <a href="#step-3" type="button" class="btn btn-default circle" disabled="disabled">3</a>
                <p><small>Create ClassTeacher</small></p>
            </div>
            
			
        </div>
    </div>
    
   	    <form  method="post" class="form-label-left" id="teacherAssignform" action="action">
        <div class="panel panel-primary setup-content" id="step-1" style="background-color:none;">
            
            <div class="panel-body" style="background-color:none;">
                <fieldset>
				    <div class="row">
						<div class="col-md-3">
							<label class="control-label col-md-8 col-sm-3 col-xs-12" for="classtId">Teacher ID<sup class="sup">*</sup></label>
							<div class="col-md-10 col-sm-8 col-xs-12">
								<select id="techId" class="form-control col-md-7 col-xs-12"  name="ctId"  required="required" >
									<option>--SELECT--</option>
									
								</select>
							</div>
					    </div>
						<div class="col-md-3">
							<label class="control-label col-md-12 col-sm-3 col-xs-12" for="classtName">Teacher Name</label>
							<div class="col-md-10 col-sm-8 col-xs-12">
								<input id="classtName" class="form-control col-md-7 col-xs-12"  name="ctName" placeholder="Teacher Name" type="text" >	
							</div>
						</div>
						<div class="col-md-3">
							<label class="control-label col-md-7 col-sm-3 col-xs-12" for="classtClass">Class</label>
							<div class="col-md-10 col-sm-8 col-xs-12">
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
						<div class="col-md-3">
							<label class="control-label col-md-7 col-sm-3 col-xs-12" for="classtSection">Section</label>
							<div class="col-md-10 col-sm-8 col-xs-12">
								 <select name="section" class="form-control" id="sec">
									<option>--Select Section--</option>
								</select>
							</div>
						</div>				
                    </div><br/>
                </fieldset>
               <button class="btn btn-success pull-right " type="submit" name="Action" value="assignTeacher" onclick="">Submit</button>
				
               
            </div>
        </div>
        
        <div class="panel panel-primary setup-content" id="step-2" style="background-color:none;">
            <div class="panel-body">
               
                <button class="btn btn-primary nextBtn pull-right" type="button">Next</button>
				<button class="btn  previousBtn pull-right" type="button" style="">Previous</button>
            </div>
        </div>
        
        <div class="panel panel-primary setup-content" id="step-3" style="background-color:none;">
            <div class="panel-body">
               
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
   
	<!--<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>-->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
	
    
    
<script>


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
	

    $(document).ready(function () {

    var navListItems = $('div.setup-panel div a'),
        allWells = $('.setup-content'),
        allNextBtn = $('.nextBtn');
        allPreviousBtn = $('.previousBtn');
    allWells.hide();

    navListItems.click(function (e) {
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

    allNextBtn.click(function () {
        var curStep = $(this).closest(".setup-content"),
            curStepBtn = curStep.attr("id"),
            nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
            curInputs = curStep.find("input[type='text'],input[type='url']"),
            isValid = true;

        $(".form-group").removeClass("has-error");
        
      if (isValid) nextStepWizard.removeAttr('disabled').trigger('click');
    });
	
	 allPreviousBtn.click(function () {
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


$("#teacherId").change(function () {
	var selectedValue = $(this).val();
    $("#teacherName").val($(this).find("option:selected").attr("value"))
	document.getElementById("teacherName").disabled = true;
});

$("#classtId").change(function () {
	var selectedValue = $(this).val();
    $("#classtName").val($(this).find("option:selected").attr("value"))
	document.getElementById("classtName").disabled = true;
});

$("#tId1").change(function () {
    var selectedValue1 = $(this).val();
	$("#tName1").val($(this).find("option:selected").attr("value"))
	document.getElementById("tName1").disabled = true;
   
});

	
  $(document).ready(function () {
    $("#teacherClass").change(function () {
	
        var val = $(this).val();
		$("#teacherSection").empty();
        if (val == "") 
		{ 
            $("#teacherSection").append('<option>Select Section</option>');
        } 
		else if (val == "c1sec") 
		{
		   $("#teacherSection").append('<option>A1 sec</option><option>B1 sec</option><option>C1 sec</option>');
        } 
		else if (val == "c2sec") 
		{
	       $("#teacherSection").append('<option>A2 sec</option><option>B2 sec</option><option>C2 sec</option>');
        } 
		else if (val == "c3sec") 
		{
		   $("#teacherSection").append('<option>A3 sec</option><option>B3 sec</option><option>C3 sec</option>');
        }
    });
});

$(document).ready(function () {
    $("#tId1").change(function () {
        var val = $(this).val();
		$("#tClass1").empty();
		if (val == "Shilpa")
		{ 
            $("#tClass1").append('<option>Class1 A1sec</option><option>Class2 B2sec</option><option>Class1 C1sec</option>');
        }
		else if (val == "Swapna")
		{
		   $("#tClass1").append('<option>Class1 A1sec</option><option>Class1 B1sec</option><option>Class3 C3sec</option>');
        }
		else if (val == "Sirish")
		{
		   $("#tClass1").append('<option>Class2 A2sec</option><option>Class3 B3sec</option><option>Class2 C2sec</option>');
        } 
		else if (val == "Girish") 
		{
		   $("#tClass1").append('<option>Class3 A3sec</option><option>Class3 B3sec</option><option>Class3 C3sec</option>');
        }
		else if (val == "Raghav") 
		{
		   $("#tClass1").append('<option>Class1 A1sec</option><option>Class3 A3sec</option><option>Class3 C3sec</option>');
        }
    });
});

$(document).ready(function () {
    $("#tClass1").change(function () {
        var val = $('#tClass1 :selected').text();
		
	    $("#subject").empty();
		if (val == "Class1 A1sec" || val == "Class1 B1sec" || val == "Class1 C1sec") 
		{ 
		$("#subject").append("<option >Social</option><option>Science</option><option>Maths</option>");
        } 
		else if (val == "Class2 A2sec" || val == "Class2 B2sec" || val == "Class2 C2sec")
		{
		   $("#subject").append('<option>English</option><option>Science</option><option>Kannada</option>');
        } 
		else if (val == "Class3 A3sec" || val == "Class3 B3sec" || val == "Class3 C3sec") 
		{
		   $("#subject").append('<option>English</option><option>Hindi</option><option>Maths</option>');
        } 
    });
});

$(document).ready(function () {
    $("#classtClass").change(function () {
        var val = $('#classtClass :selected').text();
		
	    $("#classtSection").empty();
		if (val == "Class 1")
		{ 
		  $("#classtSection").append("<option >A1 sec</option><option>B1 sec</option><option>C1 sec</option>");
        } 
		else if (val == "Class 2") 
		{
		   $("#classtSection").append('<option>A2 sec</option><option>B2 sec</option><option>C2 sec</option>');
        } 
		else if (val == "Class 3")
		{
		   $("#classtSection").append('<option>A3 sec</option><option>B3 sec</option><option>C3 sec</option>');
        } 
    });
});


$(document).ready(function() {
   var da;
        $.ajax({
            type: "POST",
            url: "action?Action=getTeacherDetails",
            dataType: "json",
            //if received a response from the server
            success: function(data, textStatus, jqXHR) {
                //displaying sections if found
                if (data.success) {
                	da=data.empList;
                    console.log(da);
                    
                    
                   for (var i = 0; i < data.empList.length; i++)
                	   {
                	  	 $("#techId").append("<option>" + data.empList[i].eid + "</option>");
                	   }

                       // 
                }
                else {
                	//$("#sec").append("<option>No Classes found</option>");
                }
            },
            //If there was no resonse from the server
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("Something really bad happened " + textStatus);
            }
        });
        
        $(document).on("change","#techId",function(e){
        	var val = $('#techId :selected').text();
        		for(var i=0;i<da.length;i++)
        		{
        			if(da[i].eid==val)
        			{
        				console.log(da[i].fname);
        				$("#classtName").val(da[i].fname);
        			}
        		}
        	
        	});
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
        	
    });

</script>
</body>
</html> 