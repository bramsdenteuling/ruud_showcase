class PhotosetController < ApplicationController
	before_filter :authenticate_user!

	# def index
	# 	@set = Photoset.where(id: '1').first
	# 	render :layout => 'clean'
	# end
	
	def edit
		if Photoset.where(doc_id: '1').first == nil
        set = Photoset.new(doc_id: '1',set_id: '0')
				set.save
		end
		@set = Photoset.where(doc_id: '1').first
		
		render :layout => 'clean'
	end
	
	def update
    if Photoset.where(doc_id: '1').first == nil
      set = Photoset.new(doc_id: '1',set_id: '0')
			set.save
		else
			set_id = params[:set][:set_id]
      set = Photoset.where(doc_id: '1').first
      set.write_attributes(set_id: set_id)
			set.save
		end
		
		respond_to do |format|
			format.js {render :layout => 'clean'}
		end
		
	end
	
end
