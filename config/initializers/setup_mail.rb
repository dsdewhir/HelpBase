ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "threetwelvecreative.com",
  :user_name            => "david.dewhirst@threetwelvecreative.com",
  :password             => "rsgqygskmygislvh",
  :authentication       => "plain",
  :enable_starttls_auto => true
}