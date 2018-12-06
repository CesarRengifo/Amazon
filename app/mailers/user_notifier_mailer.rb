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

    def new_post_notifying_user(email, title, id)
      @email = email
      @title = title
      @id = id
      @url = "https://amazon-cesar.herokuapp.com/posts/#{@id}"
      mail(to: @email, subject: "#{@title} - New blog post on Amazon-Center")
    end

    def new_post_notifying_subscriptor(email, title, id)
      @email = email
      @title = title
      @id = id
      @url = "https://amazon-cesar.herokuapp.com/posts/#{@id}"
      mail(to: @email, subject: "#{@title} - New blog post on Amazon-Center")
    end
end
