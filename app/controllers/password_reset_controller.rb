class PasswordResetController < ApplicationController

  def new
  end

  def reset
    @user = User.find_by(email: params[:email])
    if user
      flash.now[:danger] = 'Password emailed to account'
      #the postmark email method
      # Create an instance of Postmark::ApiClient
      client = Postmark::ApiClient.new(ENV['POSTMARK'])
      client.deliver_with_template(from: 'support@poly.gg',
                               to: @user.name + ' <' + @user.email + '>',
                               template_id: 1258543,
                               template_model: {
                                 name: @user.name,
                                 password: @user.email
                               })
       redirect_to_root_path
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid Email'
    end
  end

end
