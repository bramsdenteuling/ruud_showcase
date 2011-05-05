
//$('#gallery').galleria({
	//debug: true // debug is now on
//});

$(document).ready(function(){
	
	$("h1").textShadow({
		color: "#666",
		x: "2px",
		y: "2px",
		radius: "1px"
	});
	
	$("user-navigation").textShadow({
		color: "#666",
		x: "2px",
		y: "2px",
		radius: "1px"
	});
	
	$("a.fancybox").fancybox({
		'width': 500,
		'height': 400,
		'hideOnOverlayClick': true
	});
	
});
