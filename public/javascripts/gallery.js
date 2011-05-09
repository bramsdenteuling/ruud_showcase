Galleria.loadTheme('/javascripts/galleria/themes/fullscreen/galleria.fullscreen.min.js');

//flickr.getSet('
$('#gallery').galleria({

	transitionInitial: 'fade',
	transition: 'slide',
	imageCrop: true,
	imagePan: true,
	showInfo: false,
	autoplay: 5000,
});

setTimeout(function() {
	$('.flash').fadeOut('slow', function(){
      });
      }, 3000);
