$("#select-institute").change(function(){
	id = $(this).val();
	stdata={"id":id};
	$.ajax({
		url:'listDepartmentInstitute.json',
		data:stdata,
		dataType: "json",
		success:function(s,x){
		k = ""					;
			for(d in s)
			{
				k += "<option value='"+s[d].id+"'>"+s[d].name+"</option>";
				
			}
			$("#select-depart").html(k);
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(jqXHR);
		}
	});
});
$("#add-teacher").click(function(){
	$("#panel-add-teacher").fadeToggle();
});
$("#ps-save").click(function(){
	name = $("#ps-name").val();
	institute = $("#select-institute").val();
	depart = $("#select-depart").val();
	degree = $("#select-degree").val();
	expert = $("#level-expert").val();
	mark = new Array();
	$(".mark-subject").each(function(){
		id = $(this).find(".id-sc").val();
		mval = $(this).find(".mark").val();
		mark.push({"id":id,"val":mval});
	});
	jdata = {"name":name, "institute":institute, "department":depart, "degree":degree, "levelexpert":expert,"mark":JSON.stringify(mark)};
	$.ajax({
		url:'addProfessor.json',
		data:jdata,
		dataType: "json",
		success:function(s,x){
			alertSuccess("Add success!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(jqXHR);
		}
	});
});