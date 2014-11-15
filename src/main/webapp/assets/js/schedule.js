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