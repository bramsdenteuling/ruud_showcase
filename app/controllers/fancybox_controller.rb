class FancyboxController < ApplicationController
  layout 'clean'
  
  def contact
    @contact_form = ContactForm.new
  end
  
end
