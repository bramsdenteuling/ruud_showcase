class HomeController < ApplicationController
  def index
  end
  
  def contact
      @user = User.new
  end

  def send_mail
      ContactMailer.contact_email(params[:email]).deliver
      redirect_to(contact_path, :notice => 'Your message has been send!')
  end

end
