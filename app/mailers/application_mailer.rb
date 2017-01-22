class ApplicationMailer < ActionMailer::Base
  default from: 'support@poly.gg'
  
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
