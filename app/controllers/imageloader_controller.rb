class ImageloaderController < ApplicationController
  
  rescue_from FlickRaw::FailedResponse, :with => :failed_response
  rescue_from NoMethodError, :with => :failed_response

  def index
    @set = Photoset.where(doc_id: '1').first
    set_id = @set["set_id"]
    @photos = flickr.photosets.getPhotos(:photoset_id => set_id, :extras => 'original_format')
    @photos = @photos.to_hash()
    @photos = @photos["photo"]
  end
  
  def failed_response
    @photos = flickr.photos.search(:per_page => 10, :text => 'epic fail', :sort => 'relevance')
    flash[:notice] = "Unkown Flick set ID. Showing epic fail photos"
    render 'index'
  end
	
end
