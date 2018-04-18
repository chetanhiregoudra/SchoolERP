<%@page import="com.erp.bean.*"%>
<%@page import="com.erp.daoimpl.*"%>
<%@page import="com.erp.dao.*"%>
<%@page import="java.util.*"%>
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
	ConfigDaoImpl cd = ConfigDaoImpl.getInstance();
	School school = cd.getReady();
	Map<String,String> classList = school.getClassList();
%>
<form action="action" method="post">
<label>Exam Type</label>
	<select class="selectpicker etype" data-live-search="true">
	  
	</select><br><br>
	<label>Class</label>
	<select class="selectpicker ctype" data-live-search="true">
	  	 <option>--Select Class and Section--</option>
			<%for (Map.Entry<String,String> entry : classList.entrySet()) 
			{%>
			 	<option><%=entry.getValue()+" "+entry.getKey() %></option>
		   <% }
		   	%>
	</select><br><br>
<label>Subject</label>
	<select class="sType">
	  
	</select><br><br>
 	<input type="submit" name="Action" value="addExam">
</form>

<script type="text/javascript">
   $(document).ready(function() {
  
   $.ajax({
       type: "POST",
       url: "action?Action=getExamDetails",
       dataType: "json",
       //if received a response from the server
       success: function(data, textStatus, jqXHR) {
           //our country code was correct so we have some information to display
           if (data.success)
           {
               console.log(data.examList);
               for (var i = 0; i < data.examList.length; i++)
               {
               	
               		$(".etype").append("<option>"+ data.examList[i].examType +"</option>");
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
   
   $(document).change(".ctype",function(){
	   var str = $(this).val();
       dataString = "classname=" + str;
	   $.ajax({
	       type: "POST",
	       url: "action?Action=getsubDetails",
	       data: dataString,
	       dataType: "json",
	       //if received a response from the server
	       success: function(data, textStatus, jqXHR) {
	           //our country code was correct so we have some information to display
	           if (data.success)
	           {
	               console.log(data.list);
	               for (var i = 0; i < data.list.length; i++)
	               {
	               	
	               		$(".sType").append("<option>"+ data.list[i] +"</option>");
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
   
});
   </script>
</body>
</html>