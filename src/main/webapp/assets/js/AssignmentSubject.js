$("#btn-save").click(function(){

	$(".sub-name").each(function(){
		sub = $(this).val();
		id = $(this).siblings(".id-st").val();
		$.ajax({
			url:'updateSubject.json',
			data:{"sub":sub,"id":id},
			dataType: "json",
			success:function(s,x){	
				if(!$("#alert-mes").children(".alert").is(":visible"))
				{
					alertSuccess("Update success!")
				}
			},
			error:function(data, textStatus, jqXHR){
				alertWarning(textStatus);
			}
		});
	});
});
$("#st-name").on("input",function(){
	$.ajax({
		url:'searchStudentByName.json',
		data:{"name":$("#st-name").val()},
		dataType: "json",
		success:function(s,x){	
			$(".row-st").remove();
			for(i in s){
				shsv = s[i].studentID;
				name = s[i].name;
				id = s[i].id;
				title = s[i].title;
				row = '<tr class="row-st"><td>'+shsv+'</td><td>'+name+'</td><td><input class="form-control sub-name" placeholder="Subject" value="'+title+'"><input type="hidden" class="id-st" value="'+id+'""></td></tr>';
				$("#tab-student").append(row);
			}
		},
		error:function(data, textStatus, jqXHR){
			
		}
	});
});