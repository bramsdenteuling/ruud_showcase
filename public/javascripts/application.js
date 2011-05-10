
//$('#gallery').galleria({
	//debug: true // debug is now on
//});

$(document).ready(function(){
	
	$(".shadow").textShadow({
			'xoffset': '-6px',
			'yoffset': '-6px',
			'color': '#222222',
			'radius': '1px',
			'opacity': '80'
		});
	
	$("a.fancybox").fancybox({
		'width': 500,
		'height': 400,
		'hideOnOverlayClick': true
	});
	
});
