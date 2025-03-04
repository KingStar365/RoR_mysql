class SignupController < ApplicationController
  allow_unauthenticated_access only: %i[ new create ]
  def new

  end

  def create
    signupuser = params.permit(:email_address, :password, :password_confirmation)
    if signupuser[:password] != signupuser[:password_confirmation] || signupuser[:password].blank?
      redirect_to new_signup_path, alert: "Password is blank."
    end
    user = User.new(params.permit(:email_address, :password))
    if user.save
      start_new_session_for user
      redirect_to after_authentication_url
    else
      redirect_to new_signup_path, alert: "Try another email address or password."
    end
  end
end
