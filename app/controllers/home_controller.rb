class HomeController < ApplicationController
  def index
    unless params[:txtemail].nil?
      @email = params[:txtemail]
      UserMailer.demo_email(@email).deliver
    end
    
  end
  
end
