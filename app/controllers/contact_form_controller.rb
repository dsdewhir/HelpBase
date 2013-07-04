class ContactFormController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    begin 
      @contact_form = ContactForm.new(params[:contact_form]) 
      @contact_form.request = request
      @contact_form.name = params[:contactform][:name]
      @contact_form.email = params[:contactform][:email]
      @contact_form.organization = params[:contactform][:organization]
      @contact_form.phone = params[:contactform][:phone]
      UserMailer.demo_email(@contact_form).deliver
      render :new, layout:false
      #redirect_to :controller => "home", :action => "index"
      #if @contact_form.deliver 
      #  flash.now[:notice] = 'Thank you for your message!' 
      #else 
      #  render :new 
      #end 
    rescue ScriptError 
      flash[:error] = 'Sorry, this message appears to be spam and was not delivered.' 
    end
  end
end
