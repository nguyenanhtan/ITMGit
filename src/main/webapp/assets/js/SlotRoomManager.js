$("#add-slot").click(function(){
	st = $("#st-time").val();
	en = $("#end-time").val();
	name = $("#slot-name").val();
	insdata = {"start":st, "end":en, "name":name};

	$.ajax({
		url:'addSlot.json',
		data:insdata,
		dataType: "json",
		success:function(s,x){	
			str = "<tr><td>"+s.name+"</td><td>"+s.start+"</td><td>"+s.end+"</td><td><span class='glyphicon glyphicon-remove-circle  pull-right rm-slot'></span><span class='glyphicon glyphicon-pencil pull-right edit-slot'></span><input type='hidden' class='id-slot' value='"+s.id+"'/></td></tr>";				
			$("#tab-slot").append(str);	
			alertSuccess("You added success slot!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus);
		}
	});
});
$("#add-room").click(function(){
	
	name = $("#room").val();
	insdata = {"name":name,"capacity":$("#cap-room").val()};

	$.ajax({
		url:'addRoom.json',
		data:insdata,
		dataType: "json",
		success:function(s,x){	
			str = "<tr><td></td><td>"+s.name+"</td><td>"+s.capacity+"</td><td><span class='glyphicon glyphicon-remove-circle  pull-right rm-room'></span><span class='glyphicon glyphicon-pencil pull-right edit-room'></span><input type='hidden' class='id-room' value='"+s.id+"'/></td></tr>"	;		
			$("#tab-room").append(str);
			alertSuccess("You added success room!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus);
		}
	});
});
$(".rm-room").click(function(){
	
	id = $(this).siblings(".id-room").val();
	insdata = {"id":id};
	sthis = $(this);
	$.ajax({
		url:'rmRoom.json',
		data:insdata,
		dataType: "json",
		success:function(s,x){	
			sthis.parents("tr").fadeOut();
			alertSuccess("You remove success room!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus);
		}
	});
});
$(".rm-slot").click(function(){
	
	id = $(this).siblings(".id-slot").val();
	insdata = {"id":id};
	sthis = $(this);
	$.ajax({
		url:'rmSlot.json',
		data:insdata,
		dataType: "json",
		success:function(s,x){	
			sthis.parents("tr").fadeOut();
			alertSuccess("You remove success slot!");
		},
		error:function(data, textStatus, jqXHR){
			alertWarning(textStatus);
		}
	});
});