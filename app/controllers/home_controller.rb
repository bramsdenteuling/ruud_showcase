class HomeController < ApplicationController

  def index
	#render :template => 'imageloader/index'
  end
  
  def contact
    @contact_form = ContactForm.new
  end

  def create 
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.deliver
      respond_to do |format|
        format.html { redirect_to root_url, :notice => "Your message was successfully sent."}
        format.js {render :layout => 'clean'}
      end
    else
      render :action => "contact"
    end
  end
  
  def info
	  render :layout => 'clean'
  end

end
