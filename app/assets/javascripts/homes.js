$(document).ready(function(){
	$('.parallax').parallax();
	$('.modal-trigger').leanModal();
	$('.carousel').carousel();
	$('.button-collapse').sideNav();

	$('.navbar-fixed li a').click(function(e){
		e.preventDefault();
		var id = $(this).attr('href');

		if (id === "#aboutme") {
			$('html, body').animate({
				scrollTop: 0
			}, 1000);
		}else {
			$('html, body').animate({
				scrollTop: $(id).offset().top - 60
			}, 1000);
		}
	});

});
