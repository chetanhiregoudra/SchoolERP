	  
	  


	

	  
$(document).ready(function()
{
	$("#weight").keyup(function()
	{
		$("#weightDiv").children('#fail').remove();
		if($(this).val() == "")
		{
			$("#bmi").val("0");
			$("#weightDiv").children('#fail').remove();
		}
		else
		{
			if(!isNaN($(this).val()) && parseFloat($(this).val())< parseFloat(200))
			{
				if($("#height").val()!="" && $(this).val() != "")
				{
					var weight = $(this).val();
					var height = $("#height").val()/100;
					$("#bmi").val((weight/(height)/(height)).toFixed(2));
				}
				else
				{
					$('<div id="fail" style="color:red;">please enter the height</div>').appendTo($("#weightDiv"));
				}
			}
			else
			{
				$('<div id="fail" style="color:red;">please enter a valid number</div>').appendTo($("#weightDiv"));
			}
		}
});
				
			});
	  
	  
$(document).ready(function()
{	
	/*$("#temperature").keyup(function()
	{
		var xDot = 0;
		$("#dataListTemp").find('option').remove().end();
		$("#xcv").children('#fail').remove();
		var temp = $(this).val();
		if(temp == "")
		{
			$(this).css("border-color","");
			$("#dataListTemp").find('option').remove().end();
		}
		else
		{
			for(var x=0;x<temp.length;x++)
			{
				if( temp[x] == ".")
				{
					xDot++;
				}
			}
			if(!isNaN(temp) && parseFloat(temp) < parseFloat(105) && xDot<=1 )
			{
				$(this).css("border-color","");
				for(var i=0;i<10;i++)
				{
					if( temp.indexOf(".") >= 0)
					{
						$("#dataListTemp").append('<option>'+temp+i+'</option>');
					}
					else
					{
						$("#dataListTemp").append('<option>'+temp+"."+i+'</option>');
					}
								
				}
							
			}
			else
			{
				$(this).css("border-color","red");
				$('<div id="fail" style="color:red;">please enter valid temperature</div>').appendTo($("#xcv"));
			}
		}
	});
			*/	
});
	  
	    
$("#smoking").keyup(function()
{
	$("#cig").find('option').remove().end();
	$("#cigDiv").children('#fail').remove();
	var cigCount = $(this).val();
	if(cigCount == "")
	{
		$(this).css("border-color","");
		$("#cig").find('option').remove().end();
		$("#cigDiv").children('#fail').remove();
	}
	else
	{
		if(parseInt(cigCount) < 30 && !isNaN(cigCount) && cigCount.indexOf(".") <= 0)
		{
			$(this).css("border-color","");
			for(var i = 0 ; i < 10 ; i++)
			{
				if(parseInt(cigCount+i) < 30)
				{
					$("#cig").append('<option>'+cigCount+i+'</option>');
				}
			}
		}
		else
		{
			$(this).css("border-color","red");
			$('<div id="fail" style="color:red;">please enter valid number</div>').appendTo($("#cigDiv"));
		}
	}
});



		
$("#heartRate").keyup(function()
{
	$(this).css("border-color","");
	
	$("#heartDiv").children('#fail').remove();
	if(isNaN($(this).val()) || parseInt($(this).val()) > 100)
	{
		
		$(this).css("border-color","red");
		
	 
		$('<div id="fail" style="color:red;">please enter valid number</div>').appendTo($("#heartDiv"));
	}
	
		
	
});
		
		
$("#height").keyup(function()
{
	$(this).css("border-color","");
	$("#heightDiv").children('#fail').remove();
	if(isNaN($(this).val()) || parseFloat($(this).val())> parseFloat(300))
	{
		$(this).css("border-color","red");
		$('<div id="fail" style="color:red;">please enter valid number</div>').appendTo($("#heightDiv"));
	}
	if($("#weight").val() != "" && $(this).val() != "")
	{
		var height = $(this).val()/100;
		$("#bmi").val((($("#weight").val())/(height)/(height)).toFixed(2));
	}
	else
	{
		$("#bmi").val(0);
	}
});
		
		
$("#closeM").click(function()
{
	location.reload("<%=request.getRequestURI()%>");
});
$("#cancelM").click(function()
{
	location.reload("<%=request.getRequestURI()%>");
});
		