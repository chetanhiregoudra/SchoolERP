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
<title>SUBJECTS</title>
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
<%
	ConfigDaoImpl cd = ConfigDaoImpl.getInstance();
	School school = cd.getReady();
	Map<String,String> classList = school.getClassList();
	
	Map<String,String> subList = school.getSubjectList();
	//CreateSectionDao csd = CreateSectionDaoImpl.getInstance();
	//List<CreateSection> cslist = csd.getSectionList();
	
	Set<String> st =new TreeSet<String>();
	for (Map.Entry<String,String> entry : classList.entrySet())  
	{
		  st.add(entry.getValue());
	}
%>
<body>
<form action="action" method="post">
		<input type="hidden" value="subject" name="Action" />
		 <label>Section</label>
		<select name="subject" class="form-control" id="sub">
			<option>--Select Section--</option>
			<%for (Map.Entry<String,String> entry : subList.entrySet()) 
			{%>
			 	<option><%=entry.getKey() %></option>
		   <% }
		   	%>
		</select><br>
		<label>Class</label>
		<select class="selectpicker" name="sClass" id="className" multiple>
		
			 <option>--Select Class and Section--</option>
			<%for (Map.Entry<String,String> entry : classList.entrySet()) 
			{%>
			 	<option><%=entry.getValue()+" "+entry.getKey() %></option>
		   <% }
		   	%>
		</select>
		<br><br>
		
		
		 <input type="submit" value="SUBMIT" name="Action">
		 </form>
		 			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>SL #</th>
                          <th>Subject</th>
						  <th>Class</th>
						  <th>Edit</th>
						  
                        </tr>
                      </thead>
                      <tbody>
					  </tbody>
                    </table>

<script>
$(document).ready(function() {
	var t = $('#datatable-responsive').DataTable();
    $.ajax({
        type: "POST",
        url: "action?Action=getSubjectList",
        dataType: "json",
        //if received a response from the server
        success: function(data, textStatus, jqXHR) {
            //our country code was correct so we have some information to display
            if (data.success)
            {
                console.log(data.subList);
                for (var i = 0; i < data.subList.length; i++)
                {
                	var ar = data.subList[i].classSec.split(",");
                	console.log( ar );
                	t.row.add( [
                		i+1,
                		data.subList[i].subName,
                		data.subList[i].classSec,
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