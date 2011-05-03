
//$('#gallery').galleria({
	//debug: true // debug is now on
//});

$(document).ready(function(){
	
	$("h1").textShadow({
		color: "#999",
		xoffset: "1px",
		yoffset: "1px",
		radius: "1px"
	});
	
	$("a.fancybox").fancybox({
		'width': 500,
		'height': 400,
		'hideOnOverlayClick': false
	});
	
});
