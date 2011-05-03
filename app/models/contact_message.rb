class ContactMessage
  attr_accessor :email, :subject, :body, :name
  
  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value)
    end
  end
  
  def save
    ContactMailer.contact_me(self).deliver
  end
end
