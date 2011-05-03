Galleria.loadTheme('/javascripts/galleria/themes/fullscreen/galleria.fullscreen.js');


var flickr = new Galleria.Flickr('3ec6a244b24cea97d27b1a0c9c8cd143');

//flickr.getSet('
$('#gallery').galleria({
    //height: 600,
	//#width: 960,
	transitionInitial: 'fade',
	transition: 'slide',
	imageCrop: false,
	imagePan: false,
	autoplay: 5000
});

setTimeout(function() {
	$('.flash').fadeOut('slow', function(){
      });
      }, 3000);
//alert(data);
//flickr.search('sweden', function(data) { 
	//$('#gallery').galleria({ 
		//dataSource: data,
		//height: 600,
		//width: 960,
		//imageCrop: true
	//}); 
//});
//$('#gallery').galleria({
	//height: 600,
	//width: 960,
	//imageCrop: true
//});
