$(document).ready(function(){
	$(".nav_m>ul>li").hover(
		function(){
			$(this).addClass("on");
			$(this).find(".nav-sub").stop(1,1).slideDown(100);
		},function(){
			$(this).removeClass("on");
			$(this).find(".nav-sub").slideUp(100);
		}
	);
});
(function($) {
	$(document).ready(function() {
		var $slider = $('#slider1').bxSlider({
			pause: '10000',
			auto: true,
			pager: true,
			speed: 1000,
			controls: false
		});
		$(window).resize(function(){
			$slider.reloadShow();
		});
	});
})(jQuery);