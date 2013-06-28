class UserMailer < ActionMailer::Base
  default from: "HelpBase@threetwelvecreative.com"
  
  def demo_email(contact_form)
    
    @contact = contact_form
    mail(to: 'david.dewhirst@threetwelvecreative.com', subject: 'HelpBase Demo Request')
    
  end
end
