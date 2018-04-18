
<%@page import="java.util.ArrayList"%>
<%@page import="com.erp.daoimpl.*"%>
<%@page import="com.erp.dao.*"%>
<%@page import="com.erp.bean.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>

     <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	
<link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
<body>
<div class="cc">
 <div class="error1"></div>
 
    <input type='text' class='username' id='username_1' placeholder='Enter username'>
    
  
 <br>
 <input type='button' value='Search' class='getdet'>
</div>
<div id="tlist"></div>
 <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>

 <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
</body>
<!-- jQuery -->
	
   

<script type="text/javascript">
$(document).ready(function() {
	$('.getdet').on('click',function(e){
		
		 var pid = $(".username").val();
		 dataString = "term=" + pid;
	        $.ajax({
	            type: "POST",
	            url: "action?Action=autocomplete_both",
	            data: dataString,
	            dataType: "json",
                success: function(data, textStatus, jqXHR) {
                    	if (data.success) {
                    		
                    		console.log(data.studentInfo);
                    		console.log(data.studentInfo[0].studentId);
                    		var div = document.getElementById('tlist');
                    		div.innerHTML +='<table id="datatable-responsive" class="table  dt-responsive nowrap empdetails" cellspacing="0" width="100%" >'
								+'<thead>'
								+'<tr>'
								+'  <th>SID</th>'
		    					 +' <th>NAME</th>'							
								+'	  <th>CLASS</th>'
								+	'  <th>SECTION</th>'
								+	 '<th>EDIT</th>'
								+'</tr>'
								+'</thead>'
								+'<tbody>'
								+'</tbody>'
							+'</table>';
							var t = $('#datatable-responsive').DataTable();	
							
        	                	t.row.add( [
        	                		data.studentInfo[0].studentId,
        	                		data.studentInfo[0].firstName,
        	                		data.studentInfo[0].sClass,
        	                		data.studentInfo[0].section,
        	                		"<button>edit</button>"
        	                    ] ).draw( false );
        	             	
						}
						else
						{
							
							$(".error1").css({'color':'red'}); 
							$(".error1").html("No such Teacher Id exist");
							$(".error1").show().delay(2000).fadeOut();
							//setTimeout(function() {
								
								$("#username_1").val("");
								//}, 2000);
							
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
</html>