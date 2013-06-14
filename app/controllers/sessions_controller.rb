class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:email],params[:password])
    if user
      session[:user_id] = user.id
      cookies[:auth_token] = user.auth_token
      redirect_to root_url
    else
      flash.now.alert = "Login failed."
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out."
  end
end
