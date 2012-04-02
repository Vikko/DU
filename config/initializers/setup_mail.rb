ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "DU.nl",
  :user_name => "vjsmit",
  :password => "",
  :authentication => "plain",
  :enable_starttls_auto => true
}