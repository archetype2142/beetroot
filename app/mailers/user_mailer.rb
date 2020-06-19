class UserMailer < ApplicationMailer
  default from: 'inquiry@beetroot.studio'
 
  def inquiry_email(user_email, username, message)
    @email = user_email
    @name = username
    @message = message
    
    mails = ["malhotraritwick2011@gmail.com", "alina.szpilman@hotmail.de"]

    mails.each do |m|
      mail(
        to: m, 
        subject: 'Inquiry from Beetroot'
      )
    end
  end
end
