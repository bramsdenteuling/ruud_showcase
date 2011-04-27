class FancyboxController < ApplicationController
  layout 'contact'
  
  def index
  end
  
  def contact
      @user = User.new
  end
  
end
