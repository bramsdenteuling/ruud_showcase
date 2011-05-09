class ImageloaderController < ApplicationController
  
  rescue_from FlickRaw::FailedResponse, :with => :failed_response

	def index
		#@photos = flickr.photos.search(:per_page => 20, :extras => 'original_format, o_dims', :user_id => '56210880@N07')
    @set = Photoset.where(doc_id: '1').first;
    set_id = @set["set_id"]
    if @photos = flickr.photosets.getPhotos(:photoset_id => set_id, :extras => 'original_format')
    end
		@photos = @photos.to_hash()
		@photos = @photos["photo"]
	end
  
  def failed_response
    @photos = flickr.photos.search(:per_page => 10, :text => 'epic fail', :sort => 'relevance')
    flash[:notice] = "Unkown Flick set ID. Showing epic fail photos"
    render 'index'
  end
	
end
