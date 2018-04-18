<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SchoolERP</title>
</head>
<body>
	<form action="action" method="post"  enctype="multipart/form-data"  enctype="multipart/form-data">
		<input type="hidden" value="empadds" name="Action"/> 
		<input type="text"  name="empid"/> 
		<br><br>First name:<input type="text" name="firstname">
		Middle name:<input type="text" name="middlename">
		Last name:<input type="text" name="lastname"/>
		DOB:<input type="date"  name="dob"><br>
		Gender:
		<br>
		<input type="radio" name="gender" value="male"> Male 
		<input type="radio" name="gender" value="female"> Female<br>
		<br>
		Employee Type: 
		<select id="type" name="etype">
				<option value="Teacher">Teacher</option>
				<option value="Driver">Driver</option>
				<option value="Attender">Attender</option>
				<option value="Librarian">Librarian</option>
				<option value="Accountant">Accountant</option>
				<option value="Clerk">Clerk</option>
		</select> <br> 
		Photo: <input type="file" name="file" /> <br>
		Address :<textarea  name="address"></textarea> 
		Qualification:<input type="text" name="qualification">
		Mobile No#:<input type="text" name="mobileno">
		Email:<input type="text" name="email">
		<br>Experience:<br>
		<input type="radio" name="exp" value="yes">yes
		<input type="radio" name="exp" value="no">no <br>if yes<br>
		exp yers:<input type="text" name="expyrs">
		pre Comp:<input type="text" name="precomp">
		exp in:<input type="text" name="expin">
		<br>
		<br>BankName:<input type="text" name="bnkname">
		Branch:<input type="text" name="branch">
		Account No:<input type="text" name="accno">
		IFSC Code:<input type="text" name="ifsc">
		<input type="submit" value="SUBMIT">
	</form>
</body>
<script type="text/javascript">
$(document).ready(function() {
		
       $.ajax({
         type: "POST",
         url: "action?Action=getEmployeeList",
         dataType: "json",
        
         //if received a response from the server
         success: function( data, textStatus, jqXHR) {
             //our country code was correct so we have some information to display
              if(data.success){
           	   
           	   console.log(data.empList.length);
           	   
           	   			for(var i=0;i < data.empList.length; i++)
           	   				{
           	   			console.log(data.empList[0]);
           	   				}
                           //$("#sec").append("<option>" + data.empList.[i] + "</option>");
                
                          
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
</script>


</html>