# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  
  def inquiry_email
    UserMailer.inquiry_email("Ritwick", "test@test.com", "this is a message")
  end
end
