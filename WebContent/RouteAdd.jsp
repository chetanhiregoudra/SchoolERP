<%@page import="com.erp.bean.Vechile"%>
<%@page import="com.erp.bean.Route"%>
<%@page import="java.util.List"%>
<%@page import="com.erp.daoimpl.VechileDetailsDaoImpl"%>
<%@page import="com.erp.dao.VechileDetailsDao"%>
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
<%



VechileDetailsDao vdao = VechileDetailsDaoImpl.getInstance();
List<Vechile>vechilelist= vdao.getVechiledetailsList();
List<Route>routelist= vdao.getRoutedetailsList();

%>
<form action="action" method="post">
	<label>Route Name</label><input type="text"  name="routename"><br><br>
 	
 	<input type="submit" name="Action" value="addRoute">
</form>
<table id="datatable-responsive" class="table  dt-responsive nowrap empdetails" cellspacing="0" width="100%" >
	<thead>
      <tr>
		<th>Route No</th>
		<th>Route Name</th>
		<th>EDIT</th>
	  </tr>
     </thead>
     <tbody>
     </tbody>
 </table>													
<table class="table">
	<tr>
		<th>Reg No</th>
		<th>Vehicle Name</th>
	</tr>
	<% for (Vechile v : vechilelist) {%>
	<tr>
		<td><%=v.getVechileRegno()%></td>
		<td><%=v.getVechileName()%></td>
	</tr>
	<%
	}
	%>
</table>


   <script type="text/javascript">
   $(document).ready(function() {
   var t = $('#datatable-responsive').DataTable();
   $.ajax({
       type: "POST",
       url: "action?Action=getRouteList",
       dataType: "json",
       //if received a response from the server
       success: function(data, textStatus, jqXHR) {
           //our country code was correct so we have some information to display
           if (data.success)
           {
               console.log(data.routeList);
               for (var i = 0; i < data.routeList.length; i++)
               {
               	
               	t.row.add( [
               		data.routeList[i].routeId,
               		data.routeList[i].routename,
               		
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