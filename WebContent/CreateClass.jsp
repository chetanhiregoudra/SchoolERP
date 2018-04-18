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
<form action="action" method="POST" id="classDetails">
<label>ClassId</label>
<input type="text" name="cId" id="cid">
<label>ClassName</label>
<input type="text" name="cName" id="cName">
<input type="hidden" name="Action" value="addclass" >
<input type="submit" value="Submit" >
</form>
<script type="text/javascript">
	$(document).on("click",".sbt",function(){
		alert();
		// Get form
		var cId = $("#cid").val();
		var cName = $("#cName").val();
        alert(cName);
		
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "action?Action=createClass",
            data: {
            	cId:cId,
            	cName:cName
            },
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {
					alert("alert");
            }
           
        });
	});
</script>
</body>
</html>