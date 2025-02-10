class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email_address: params[:email_address])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully!"
    else
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "Logged out successfully!"
  end
end
