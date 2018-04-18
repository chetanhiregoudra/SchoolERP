<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	
    
	<link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
   
</head>
<body>
<form action="action" method="post" enctype="multipart/form-data">
<div class="row">
<div class="col-md-4"><label>Doc_type</label></div>
<div class="col-md-4"><label>Choose File</label></div>
<div class="col-md-4"><label>Add More</label></div>
</div>
	<div id="newrow">
	<div class="row">
		<div class="col-md-4">
			
			<select class="form-control" name="doctype[]">
				<option>Adhar</option>
				<option>T C</option>
				<option>Marks Sheet</option>
				<option>other</option>
			</select>
		</div>
		<div class="col-md-4">
			
			<input type="file" name="docs[]" class="form-control">
		</div>
		<div class="col-md-2">
			<button id="add" type="button" class="btn btn-success">+</button>
		</div>
	</div>
	</div>
	<div class="col-md-4">
		<br>
		<input type="submit" name="Action" value="addDocs" >
	</div>

</form>

<!-- jQuery -->
	
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
$(document).on('click','#add',function(e){
	
	$( this ).replaceWith( '<button id="remove" type="button" class="btn btn-danger">-</button>' );
	$('#newrow').prepend($('<div class="row"><div class="col-md-4">'
			+'<select class="form-control" name="doctype[]"><option>Adhar</option><option>T C</option><option>Marks Sheet</option><option>other</option></select>'
			+'</div>'	
			+'<div class="col-md-4">'	
			+'<input type="file" name="docs[]" class="form-control"></div>'	
			+'<div class="col-md-2"><button id="add" type="button" class="btn btn-success">+</button></div></div><br>'));
});

$(document).on('click','#remove',function(e){
	$(this).parent('div').parent('div').remove();
});

</script>
</body>
</html>