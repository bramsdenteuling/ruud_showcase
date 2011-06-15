class ContactForm < MailForm::Base
    attribute :name,      :validate => true
    attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
    #evt subject nog toevoegen

    attribute :message
    attribute :nickname,  :captcha  => true
    #validatie van nickname als honeypot?

    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
  def headers
      {
      :subject => "My Contact Form",
      :to => "bramdenteuling@gmail.com",
      :from => %("#{name}" <#{email}>)
      }
    end
end