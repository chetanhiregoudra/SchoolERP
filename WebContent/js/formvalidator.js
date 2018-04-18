$(document).on('keyup', '.form-control', function() {
  var valueField = $(this).attr('id');
   var msg="";
 
  if(valueField=="pname"){
	  var d = $(this).val();
	
	  var regex = new RegExp("^[a-zA-Z ]*$");
       // var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="") {
			
           
			$(this).css('border-color','red');
			$(this).parent().children('#sw').remove();
			var txt2 = $("<div id='sw' >Only Alphabets are allowed</div>");
			//$(this).parent.append(txt2);
			$(txt2).appendTo($(this).parent());
			$(this).parent().children('#sw').css('color','red');
			$(this).val("").focus();
        }
		else if(d.length>30)
		{
				$(this).css('border-color','red');
			var txt2 = $("<div id='sw' >Name length should be less than 30 characters</div>");
			//$(this).parent.append(txt2);
			$(txt2).appendTo($(this).parent());
			$(this).parent().children('#sw').css('color','red');
			
		}
		else if(d.length<3)
		{
			$(this).css('border-color','');
			$(this).parent().children('#sw').remove();
				$(this).css('border-color','red');
			var txt2 = $("<div id='sw' >At Least 3 characters</div>");
			//$(this).parent.append(txt2);
			$(txt2).appendTo($(this).parent());
			$(this).parent().children('#sw').css('color','red');
			$(this).focus();
		}
		else
		{
			$(this).css('border-color','');
			$(this).parent().children('#sw').remove();
		}
	 }
  else if(valueField=="email"){
	  var d = $(this).val();
	  
	  var regex = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
       // var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="") {
            
			$(this).css('border-color','red');
			$(this).parent().children('#sw').remove();
			var txt2 = $("<div id='sw' >Enter Valid Email</div>");
			$(txt2).appendTo($(this).parent());
			$(this).parent().children('#sw').css('color','red');
			
        }
		
		else
		{
			
			$(this).css('border-color','');
			
			$(this).parent().children('#sw').remove();
		}
	 }

	 else if(valueField=="phone") {
	  var d = $(this).val();
	   var len = $(this).val().length; 
	  var regex = new RegExp("^[0-9]+$");
       // var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="") {
            
			$(this).css('border-color','red');
			$(this).parent().parent().children('#sw').remove();
			var txt2 = $("<div id='sw' >Only Numbers are allowed</div>");
			$(txt2).appendTo($(this).parent().parent());
			
			$(this).parent().parent().children('#sw').css('color','red');
			$(this).val("");
        }
		else if(len<10)
		{
			
			$(this).css('border-color','red');
			$(this).parent().parent().children('#sw').remove();
			var txt2 = $("<div id='sw' >Enter 10 digit Mobile/Phone  No</div>");
			$(txt2).appendTo($(this).parent().parent());
			
			$(this).parent().parent().children('#sw').css('color','red');
		}
		else
		{
			
			$(this).css('border-color','');
			
			$(this).parent().parent().children('#sw').remove();
		}
	 }
	 
	 else if(valueField=="adhar") {
	  var d = $(this).val();
	  var len = $(this).val().length; 
	  var regex = new RegExp("^[0-9]+$");
       // var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (!regex.test(d) && d!="" ) {
            
			$(this).css('border-color','red');
			$(this).parent().parent().children('#sw').remove();
			var txt2 = $("<div id='sw' >Only Numbers are allowed</div>");
			$(txt2).appendTo($(this).parent().parent());
			
			$(this).parent().parent().children('#sw').css('color','red');
			$(this).val("");
        }
		else if(len<12)
		{
			
			$(this).css('border-color','red');
			$(this).parent().parent().children('#sw').remove();
			var txt2 = $("<div id='sw' >Enter 12 digit Adhar No</div>");
			$(txt2).appendTo($(this).parent().parent());
			
			$(this).parent().parent().children('#sw').css('color','red');
		}
		else
		{
			
			$(this).css('border-color','');
			
			$(this).parent().parent().children('#sw').remove();
		}
	 }
	 
});

$(document).ready( function() {
 $("#send").submit(function(e) {
return false;
});
});
