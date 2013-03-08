ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "designunited.nl",
  :user_name => "designunitedTU",
  :password => "Kamer4b-18",
  :authentication => "plain",
  :enable_starttls_auto => true
}
