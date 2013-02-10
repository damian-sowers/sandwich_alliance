$(document).ready(function() {
	$(".circle").addClass('animated fadeInDownBig');
	$(".patrons").addClass('animated fadeInRight');

	$(".patrons").hover(
	 function(){ $(this).stop(true).addClass('blue_bg') },
   function(){ $(this).stop(true).removeClass('blue_bg') }
  );
});