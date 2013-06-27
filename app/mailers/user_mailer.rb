class UserMailer < ActionMailer::Base
  default from: "HelpBase@threetwelvecreative.com"
  
  def demo_email(email)
    
    @email = email
    mail(to: 'david.dewhirst@threetwelvecreative.com', subject: 'HelpBase Demo Request')
  end
end
