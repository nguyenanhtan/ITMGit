$("#btn-save").click(function(){

	$(".sub-name").each(function(){
		flag = $(this).siblings(".flag-change").val();
		if(flag == 1){
			sub = $(this).val();
			id = $(this).siblings(".id-def").val();
			spv = $(this).parent("td").next("td").children('.spv-name').val();
			def = $(this).parents("tr").find(".session-defense").val();
			$.ajax({
				url:'updateSubject.json',
				data:{"sub":sub,"id":id,"spv":spv,"def":def},
				dataType: "html",
				success:function(s,x){	
					if(!$("#alert-mes").children(".alert").is(":visible"))
					{
						alertSuccess("Update success! ");
					}
				},
				error:function(data, textStatus, jqXHR){
					alertWarning(textStatus);
				}
			});
		}
	});
});
$(".row-st input, .row-st select").change(function(event) {
	/* Act on the event */
	$(this).parents(".row-st").find('.flag-change').val(1);
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
