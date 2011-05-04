class ImageloaderController < ApplicationController

	def index
		#@photos = flickr.photos.search(:per_page => 20, :extras => 'original_format, o_dims', :user_id => '56210880@N07')
		@photos = flickr.photosets.getPhotos(:photoset_id => '72157625465226438')
		@photos = @photos.to_hash()
		@photos = @photos["photo"]
	end
	
end
