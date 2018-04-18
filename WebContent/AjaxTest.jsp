<%@page import="com.erp.daoimpl.*"%>
<%@page import="com.erp.dao.*"%>
<%@page import="com.erp.bean.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
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
  <div class="form-group">
    <label for="sClass">class</label>
    	<select name="sClass" class="form-control" id="className">
			 
			<%for(String str:st)
			{%>
			 	<option><%=str %></option>
		   <%}
		   %>
		</select>
  </div>
   <div class="form-group">
    	<select name="sSection" class="form-control" id="sec">
			<option>--Select Section--</option>
		</select>
  </div>
  <div class="form-group">
    <label for="inputlg">Large input</label>
    <input class="form-control input-lg" id="inputlg" type="text">
  </div>
  <div id="ajaxResponse"></div>
  <script type="text/javascript">
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