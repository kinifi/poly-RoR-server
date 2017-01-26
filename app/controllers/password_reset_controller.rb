class PasswordResetController < ApplicationController

  def reset
    user = User.find_by(email: params[:email].downcase)
    if user
      flash.now[:danger] = 'Password emailed to account' + user.email
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid Email'
    end
  end

end
