class InfoboxController < ApplicationController
	before_filter :authenticate_user!, :except => [:index]  

	def index
		@info = Info.find_by_id('info')
		render :layout => 'clean'
	end
	
	def edit
		if Info.find_by_id('info') == nil
				info = Info.new(:'id' => 'info', :title => 'Info',:text => 'TEXTEXTEXT');
				info.save
		end
		@info = Info.find_by_id('info')
		render :layout => 'clean'
	end
	
	def update
		if Info.find_by_id('info') == nil
			info = Info.new(:'id' => 'info', :title => 'Info',:text => 'TEXTEXTEXT');
			info.save
		else
			title = params[:info][:title]
			text = params[:info][:text]
			RAILS_DEFAULT_LOGGER.debug title
			info = Info.first
			info.update_attributes('title' => title, 'text' => text)
			info.save
		end
		render :layout => 'clean'
	end
	
end
