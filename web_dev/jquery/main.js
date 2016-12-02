$(document).ready(function() {
	$(".ingredients li").click(function() {
		$(this).toggleClass("red_class");
	});
	$(".directions li").hover(function() {
		$(this).toggleClass("blue_class");
	});
});
