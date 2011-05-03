class ContactMessagesController < ApplicationController
  def create
    @contact_message = ContactMessage.new(params[:contact_message])
    @contact_message.save
    #format.js{ flash[:notice] = 'Your message has been send!'}
    respond_to do |format|
        format.js {render}
    end

  end
end
