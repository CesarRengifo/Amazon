class SubscriptorsController < ApplicationController
  
  layout "signin"

  def new
    @subscriptor = Subscriptor.new
  end

  def create
    @subscriptor = Subscriptor.new(suscriptor_params)
    if @subscriptor.save
      #send mail
      UserNotifierMailer.send_signup_email(@subscriptor).deliver_now
      redirect_to posts_path, notice: "Te has subscrito exitosamente"
    else
      flash[:alert] = "La subscripcion ha fallado"
      render :new
    end
  end


private
  def suscriptor_params
    params.require(:subscriptor).permit(:name, :email)
  end

end
