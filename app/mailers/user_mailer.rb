class UserMailer < ActionMailer::Base
  default :from => "webmaster@designunited.com"

   def activation_needed_email(user)
     @user = user
     @url  = "http://www.designunited.nl/users/#{user.activation_token}/activate"
     mail(:to => user.email,
          :subject => "Welcome to Design United")
   end

   def activation_success_email(user)
     @user = user
     @url  = "http://www.designunited.nl/login"
     mail(:to => user.email,
          :subject => "Your account is now activated")
   end

   def reset_password_email(user)
     @user = user
     @url  = "http://www.designunited.nl/passwordresets/#{user.reset_password_token}/edit"
     mail(:to => user.email,
          :subject => "Your password reset request")
   end
end
