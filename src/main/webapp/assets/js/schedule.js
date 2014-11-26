(function($){
	$(".juries-heading").click(function(){
	  $(this).siblings(".list-item-jury").slideToggle(300);
	});

	$("#btn-view-detail").click(function(){
		$(".list-item-jury").slideDown();
	});
	$("#btn-view-less").click(function(){
		$(".list-item-jury").slideUp();
	});

	$('#backToTopBtn').click(function(){
	    $('html,body').animate({scrollTop:0},'slow');return false;
	});
	$("#btn-save").click(function(){
		alert(listProfessor.length);
	});
	
	$(window).mousemove(function(event) {
		/* Act on the event */
		btn_top = 200;
		btn = $("#btn-shift-left");
		btn2 = $("#btn-shift-right");
		
		tab = $("#box-list-jury-2");
		if(btn_top > coordinateY(tab)){
			btn.fadeIn('slow');
			btn2.fadeIn('slow');
			
		}else{
			btn.fadeOut('300');
			btn2.fadeOut('300');
			
		}
		$("#outtext").text(btn_top+"/"+ coordinateY(tab))
	});
	function coordinateY(ele){
		var w = $(window);
		var x = $(ele).offset();
		return x.top-w.scrollTop();
	}
	$(".professor").change(function(event) {
		/* Act on the event */
		//$(this).parent("div.form-group").addClass('has-error');
		var elechange = $(this);
		$(this).parent(".form-group").removeClass('has-error');
		$(this).parents("td").siblings('td').find('.professor').each(function() {		
			/*if(!$(this).is(elechange))
			{*/
				if(!constraint1(elechange,$(this))){
					addError(elechange.parent(".form-group"));
					addError($(this).parent(".form-group"));
					$(this).siblings('.glyphicon-warning-sign').fadeIn();
					elechange.siblings('.glyphicon-warning-sign').fadeIn();
				}
			// }
		});
	});
	function addError(ele){
		ele.addClass('has-error');
	}
	function constraint1(ele1,ele2){
		
		if(ele1.val() == ele2.val()){
			return false;
		}
		return true;
	}
	$("#select-defense").change(function(event) {
		/* Act on the event */
		window.open("/webapp/schedulejuries.html?def="+$(this).val(),"_parent");
	});

	function saveDefense(dat){
		$.ajax({
			url:'updateDefenseStudent.json',
			data:dat,
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
	function getParameter(trtag){
		defense = trtag.find('.defenseId').val();
		president = trtag.find('.president').val();
		examiner1 = trtag.find('.examiner1').val();
		examiner2 = trtag.find('.examiner2').val();
		secretary = trtag.find('.secretary').val();
		additionalMember = trtag.find('.additionalMember').val();
		slot = trtag.find('.slot').val();
		room = trtag.find('.room').val();
		//alert("defenseId: "+defense+" president: "+president+" examiner1: "+examiner1+" examiner2: "+examiner2+" secretary: "+secretary+" additionalMember: "+additionalMember+" slot: "+slot+" room: "+room);
		return {"defenseId":defense,"president":president,"examiner1":examiner1,"examiner2":examiner2,"secretary":secretary,"additionalMember":additionalMember,"slot":slot,"room":room};
	}
	$(".save").click(function(event) {
		/* Act on the event */

		data = getParameter($(this).parents("tr"));
		
		saveDefense(data);
	});
})(jQuery);