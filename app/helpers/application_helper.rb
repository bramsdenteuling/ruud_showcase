module ApplicationHelper

	def make_flickr_url(r, size)
		if size == 'o'
			"http://farm#{r.farm}.static.flickr.com/" <<
			"#{r.server}/#{r.id}_#{r.originalsecret}_#{size}.jpg"
		else
			"http://farm#{r.farm}.static.flickr.com/" <<
			"#{r.server}/#{r.id}_#{r.secret}_#{size}.jpg"
		end
	end

end
