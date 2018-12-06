class UserNotifierMailer < ApplicationMailer
    default from: 'hello@amazon-clone.com'

    # send a signup email to the user
    def send_signup_email(subscriptor)
        @subscriptor = subscriptor
        @subject = "Thanks for subscribe to our amazing app"
        mail(to: @subscriptor.email, subject: @subject)
       # mail(to: , from:, subject:)
    end

  #  def cancel_account(user, admin, content)
  #  end
end
