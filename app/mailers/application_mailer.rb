class ApplicationMailer < ActionMailer::Base
  default from: 'amiibo.amiigo2020@gmail.com'
  
  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end 


end
