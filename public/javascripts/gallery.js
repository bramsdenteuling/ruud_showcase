Galleria.loadTheme('/javascripts/galleria/themes/fullscreen/galleria.fullscreen.min.js');

//flickr.getSet('
$('#gallery').galleria({

	transitionInitial: 'fade',
	transition: 'slide',
  transitionSpeed: 800,
	imageCrop: true,
	imagePan: true,
	showInfo: false,
	autoplay: 5000,
  carousel: false,
  _hideDock: true,
  thumbnails: false
});

setTimeout(function() {
	$('.flash').fadeOut('slow', function(){
      });
      }, 3000);
