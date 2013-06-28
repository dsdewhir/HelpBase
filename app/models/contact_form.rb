class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :organization, :validate => true
  attribute :phone, :validate => true

  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "HelpBase Demo Request",
      :to => "david.dewhirst@threetwelvecreative.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end