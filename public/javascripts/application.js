
//$('#gallery').galleria({
	//debug: true // debug is now on
//});

$(document).ready(function(){
	
	$("#header").textShadow({
			'xoffset': '-5px',
			'yoffset': '-5px',
			'color': '#999',
			'radius': '1px',
		});
		
		$("#user-navigation .nav-links").textShadow({
			'xoffset': '-5px',
			'yoffset': '-5px',
			'color': '#999',
			'radius': '1px',
		});
	
	$("a.fancybox").fancybox({
		'width': 500,
		'height': 400,
		'hideOnOverlayClick': true
	});
	
});
