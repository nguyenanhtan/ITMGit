$(document).ready(function(){

});
$('#st-add').click(function(){
	stname = $('#st-name').val();
	stid = $('#st-id').val();
	stmail = $('#st-email').val();
	sttel = $('#st-tel').val();

	sttype = $('#select-type').val();
	stclass = $('#select-class').val();
	stpromotion = $('#select-promotion').val();
	ststatus = $('#select-status').val();

	stdata={"name":stname,"id":stid, "mail":stmail, "tel":sttel, "type":sttype, "class":stclass, "promotion":stpromotion, "status": ststatus};
	$.ajax({
		url:'addStudent.json',
		data:stdata,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You add success student!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(jqXHR);
		}
	});
});

/*$(".st-item-list").click(function(){
	id_item = $(this).siblings(".st-id-item-list").val();
	$(this).parents(".list-group-item").find(".val-select").val($.trim($(this).text()));
	$(this).parents(".list-group-item").find(".st-id-item-select").val(id_item);
});*/
$(".rm-spv-st").click(function(){
	id = $(this).siblings(".id-spv-st").val();
	row = $(this).parents(".st-row");
	stdata={"id":id};
	$.ajax({
		url:'removeStudent.json',
		data:stdata,
		dataType: "html",
		success:function(s,x){					
			alertSuccess("You remove success student!");
			row.slideUp("300");
			row.attr("class","deactive");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(jqXHR);
		}
	});
});
$("#filter-class,#filter-status").change(function(){
	filterRow();
});
function filterRow()
{
	stRow = $(".st-row");
	fltClasss = $.trim($("#filter-class :selected").text());
	fltStatus = $.trim($("#filter-status :selected").text());
	stRow.fadeOut();
	if(fltClasss != "All" && fltStatus != "All"){
		stRow.each(function(){
			cls = $(this).children(".class-name").text();
			stt = $(this).children(".status-name").text();	
			//$(this).fadeOut(300);
			if($.trim(cls) == $.trim(fltClasss) && $.trim(stt) == $.trim(fltStatus))
			{
				$(this).fadeIn();
			}/*else{
				$(this).slideUp(300);
			}*/
		});
	}else if(fltClasss != "All" && fltStatus == "All"){
		stRow.each(function(){
			cls = $(this).children(".class-name").text();
			cls = $.trim(cls);	
			//$(this).fadeOut(300);		
			if(cls == fltClasss)
			{
				$(this).fadeIn();
			}/*else{
				$(this).slideUp(300);
			}*/
		});
	}else if(fltClasss == "All" && fltStatus != "All"){
		stRow.each(function(){
			
			stt = $(this).children(".status-name").text();
			stt = $.trim(stt);
			//$(this).fadeOut(300);
			if(stt == fltStatus)
			{
				$(this).fadeIn();
			}/*else{
				$(this).slideUp(300);
			}*/
		});
	}else{
		stRow.each(function(){
			$(this).fadeIn();
		});
	}
}
$("#test").click(function(){
	alertSuccess($("#filter-class").val());
});