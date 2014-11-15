$("#add-subject-category").click(function(){
	name = $("#sc-name").val();
	des = $("#sc-des").val();
	stdata={"name":name,"des": des};
	

	$.ajax({
		url:'addSubjectCategory.json',
		data:stdata,
		dataType: "json",
		success:function(s,x){					
			alertSuccess("You add success subject category!");
			row = '<tr style="display:none"><td>'+$("#tab-subject tr").length+'</td><td>'+s.name+'<span onclick="rmRow(this)" class="glyphicon glyphicon-remove pull-right rm-subcategory"></span><input type="hidden" class="id-sc" value='+s.id+'></td></tr>';
			$("#tab-subject").append(row);
			$("#tab-subject tr").last().fadeIn();
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(jqXHR);
		}
	});
});
function rmRow(r)
{
	stdata={"id":$(r).siblings(".id-sc").val()};
	xthis = $(r);
	$.ajax({
		url:'removeSubjectCategory.json',
		data:stdata,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You remove success subject category!");
			xthis.parents("tr").animate({opacity:'0.5'});
			xthis.remove();
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(jqXHR);
		}
	});
}