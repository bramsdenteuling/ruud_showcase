class ContactMailer < ActionMailer::Base
  #default :from => "from@example.com"
  
  #def contact_email(email_params)
      ## You only need to customize @recipients.
      #@recipients = "bramdenteuling@gmail.com"
      #@from = email_params[:name] + " <" + email_params[:address] + ">"
      #@subject = email_params[:subject]
      #@sent_on = Time.now
      #@body["email_body"] = email_params[:body]
      #@body["email_name"] = email_params[:name]
      #content_type "text/html"
      #mail(:to => @recipients, :subject => @subject)
  #end
  
  def contact_me(contact_message)
    @contact_message = contact_message

    mail(:to => App.email.address,
         :from => contact_message.email,
         :subject => contact_message.subject)
  end

  
  
end
