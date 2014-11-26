class SessionsController < ApplicationController

  def new
  end

  def create
    if !env["omniauth.auth"].nil?
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to root_path
    else
      user = User.find_by_email(params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        sign_in user
        session[:user_id] = user.id
        redirect_back_or user
      else
        flash.now[:error] = "Invalid email/password combination"
        render 'new'
      end 

    end
  end

  def destroy
    session["user_id"] = nil
    sign_out
    redirect_to root_path
  end
end
