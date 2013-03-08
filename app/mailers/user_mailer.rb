class UserMailer < ActionMailer::Base
  default :from => "webmaster@designunited.com"

     def activation_needed_email(user)
     @user = user
     @url  = "http://designunited.tudelft.nl/users/#{user.activation_token}/activate"
     attachments.inline['bg.gif'] = File.read(Rails.root.join('app/assets/images/bg.gif'))
     attachments.inline['DUlogo_h.jpg'] = File.read(Rails.root.join('public/images/DUlogo_h.jpg'))
     mail(:to => user.email,
          :subject => "Welcome to Design United")
   end

   def activation_success_email(user)
     @user = user
     @url  = "http://designunited.tudelft.nl/login"
     attachments.inline['bg.gif'] = File.read(Rails.root.join('app/assets/images/bg.gif'))
     attachments.inline['DUlogo_h.jpg'] = File.read(Rails.root.join('public/images/DUlogo_h.jpg'))
     mail(:to => user.email,
          :subject => "Your account is now activated")
   end

   def reset_password_email(user)
     @user = user
     @url  = "http://designunited.tudelft.nl/passwordresets/#{user.reset_password_token}/edit"
     attachments.inline['bg.gif'] = File.read(Rails.root.join('app/assets/images/bg.gif'))
     attachments.inline['DUlogo_h.jpg'] = File.read(Rails.root.join('public/images/DUlogo_h.jpg'))     
     mail(:to => user.email,
          :subject => "Your password reset request")
   end
end
