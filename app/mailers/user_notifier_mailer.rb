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

    #def new_post_notifying_user(email, title, id)
     # @email = email
      #@title = title
     # @id = id
      #@url = "https://amazon-cesar.herokuapp.com/posts/#{@id}"
      #mail(to: @email, subject: "#{@title} - New blog post on Amazon-Center")
    #end

    #def new_post_notifying_subscriptor(email, title, id)
      #@email = email
      #@title = title
      #@id = id
      #@url = "https://amazon-cesar.herokuapp.com/posts/#{@id}"
     # mail(to: @email, subject: "#{@title} - New blog post on Amazon-Center")
    #end
    def new_post_notifying(email, title, id, type_user)
      @email = email
      @title = title
      @id = id
      @type_user = type_user
      # @url = "http://localhost:3000/posts/#{@id}"
      @url = "https://amazon-cesar.herokuapp.com/posts/#{@id}"
      mail(to: @email, subject: "#{@title} - #{type_user} New blog post on Amazon-Clone")
  end

  def edit_post_notifying(email, title, id, type_user)
    @email = email
    @title = title
    @id = id
    @type_user = type_user
    @url = "https://amazon-cesar.herokuapp.com/posts/#{@id}"
    # @url = "https://amazon-blog1.herokuapp.com/posts/#{@id}"
    mail(to: @email, subject: "#{@title} - #{type_user} Blog post edited on Amazon-Clone")
end

end
