<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
 <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
</head>
<body>
<form action="action" method="post">
	<label>Register No</label><input type="text"  name="vregno"><br><br>
 	<label>Vehicle Name</label><input type="text"  name="vname"><br><br>
 	<input type="submit" name="Action" value="addVehicle">
</form>

<table id="datatable-responsive" class="table  dt-responsive nowrap empdetails" cellspacing="0" width="100%" >
	<thead>
      <tr>
		<th>Register No</th>
		<th class="no-sort">Vehicle Name</th>
		<th class="no-sort">EDIT</th>
	  </tr>
     </thead>
     <tbody>
     </tbody>
 </table>	
 <script type="text/javascript">
 $(document).ready(function() {
	   var t = $('#datatable-responsive').DataTable();
	   $.ajax({
	       type: "POST",
	       url: "action?Action=getVehicleList",
	       dataType: "json",
	       //if received a response from the server
	       success: function(data, textStatus, jqXHR) {
	           //our country code was correct so we have some information to display
	           if (data.success)
	           {
	               console.log(data.vehicleList);
	               for (var i = 0; i < data.vehicleList.length; i++)
	               {
	               	
	               	t.row.add( [
	               		data.vehicleList[i].vechileRegno,
	               		data.vehicleList[i].vechileName,
	               		
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