class UserMailer < ApplicationMailer
  default from: 'support@poly.gg'

  def welcome_email(user)
    @user = user
    @url  = 'http://poly.gg/login'
    mail(to: @user.email, subject: 'Welcome to Poly.gg')
  end
end
