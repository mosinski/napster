class PasswordResetMailer < ActionMailer::Base

 default :from => "mosinski.blog.newsletter@gmail.com"

  def password_reset_sender(user)

    @user = user 

    mail(:to => user.email, :subject => "Przypomnienie Hasla")  

  end
end
