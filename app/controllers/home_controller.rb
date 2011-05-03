class HomeController < ApplicationController

  def index
	#render :template => 'imageloader/index'
  end
  
  def contact
      @user = User.new
  end

  #def send_mail
  #    ContactMailer.contact_email(params[:email]).deliver
      #redirect_to("", :notice => 'Your message has been send!')
  #    render :notice => 'Your message has been send!'
  #end
  
  def info
	render :layout => 'clean'
  end

end
