class InfoboxController < ApplicationController
	before_filter :authenticate_user!, :except => [:index]  

	def index
		@info = Info.where(infoid: 'info').first
		render :layout => 'clean'
	end
	
	def edit
		if Info.where(infoid: 'info').first == nil
				info = Info.new(infoid: 'info', title: 'Info',text: 'TEXTEXTEXT')
				info.save
		end
		@info = Info.where(infoid: 'info').first
		
		render :layout => 'clean'
	end
	
	def update
		if Info.where(infoid: 'info').first == nil
			info = Info.new(infoid: 'info', title: 'Info',text: 'TEXTEXTEXT')
			info.save
		else
			title = params[:info][:title]
			text = params[:info][:text]
			info = Info.where(infoid: 'info').first
			info.write_attributes(title: title, text: text)
			info.save
		end
		
		respond_to do |format|
			format.js {render :layout => 'clean'}
		end
		
	end
	
end
