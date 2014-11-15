$(".glyphicon-remove-circle").click(function(){

});
$("#add-institute").click(function(){
	insname = $("#ins-name").val();
	insdes = $("#ins-des").val();
	insdata = {"name":insname, "des":insdes};
	$.ajax({
		url:'addInstitute.json',
		data:insdata,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You added success institute!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus);
		}
	});
});
$(".add-department").click(function(){
	idInstitute = $(this).siblings(".id-institute").val();
	nameInstitute = $(this).children(".name-institute").val();
	$("#dep-id-institute").val(idInstitute);
	$("#title-add-department").text("Them khoa/vien - "+nameInstitute);
});
$("#add-department").click(function(){
	insname = $("#dep-name").val();
	insdes = $("#dep-des").val();
	idIns = $("#dep-id-institute").val();
	insdata = {"name":insname, "des":insdes, "idIns":idIns};
	$.ajax({
		url:'addDepartment.json',
		data:insdata,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You added success department!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus+" "+ jqXHR);
		}
	});
});
$(".remove-institute").click(function(){
	id= $(this).siblings(".id-institute").val();
	insdata = {"id":id};
	rmins = $(this).parents(".panel-institute");
	$.ajax({
		url:'removeInstitute.json',
		data:insdata,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You remove success institute!");
			rmins.slideUp(300);
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus+" "+ jqXHR);
		}
	});
});
$(".list-depart-item").click(function(){
	//alert($(this).text());
	$("#panel-department").find("#title-department").text($(this).text());
	$("#panel-department").find("#id-department").val($(this).children(".id-department").val());
	$("#list-class").empty();
	$.ajax({
		url:'getClassByDepartment.json',
		data:{"idDpm": $(this).children(".id-department").val()},
		dataType: "json",
		success:function(data,x){	
			htmlx = "";
			for(var x in data)
			{				
				htmlx += '<li class="list-group-item list-class-item">'+data[x].name+'<input type="hidden" class="cl-id" value="'+data[x].id+'"/><span onclick="rmClass(this)" class="glyphicon glyphicon-remove-circle pull-right rm-class" title="Remove class"></span><span class="glyphicon glyphicon-pencil pull-right"></span></li>	';	
		  	}
		  	$("#list-class").html(htmlx);

		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus+" "+ jqXHR);
		}
	});
});

$("#add-class").click(function(){
	//alert($(this).text());
	idDpm= $("#id-department").val();
	name = $("#cl-name").val();
	des = $("#cl-des").val();
	dta = {"idDpm":idDpm, "name":name, "des": des};
	$.ajax({
		url:'addClass.json',
		data:dta,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You add success class!");			
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus+" "+ jqXHR);
		}
	});
});

$(".remove-department").click(function(){
	idDpm= $(this).siblings(".id-department").val();
	listDpm = $(this).parents(".list-depart-item");
	dta = {"idDpm":idDpm};
	$.ajax({
		url:'removeDepartment.json',
		data:dta,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You remove success department!");
			listDpm.slideUp(300);
			offListClass();			
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus+" "+ jqXHR);
		}
	});
});


function rmClass(x){
	idDpm= $(x).siblings(".cl-id").val();
	listcls = $(x).parents(".list-class-item");
	dta = {"idCls":idDpm};
	$.ajax({
		url:'removeClass.json',
		data:dta,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You remove success class!");
			listcls.slideUp(300);		
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus+" "+ jqXHR);
		}
	});	
}
function offListClass()
{
	$("#list-class").empty();
	$("#title-department").text("Danh sach lop hoc");
}