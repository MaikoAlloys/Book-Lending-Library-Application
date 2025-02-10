class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate_user!

  private

  def authenticate_user!
    unless current_user
      redirect_to new_session_path, alert: "Please log in to access this page."
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user
end

