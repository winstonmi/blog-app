class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :user_logged_in?

  def current_user
    @c_user ||= User.find(session[:user_id]) if session[:user_id]

  end

  def user_logged_in?
    current_user.present?
  end

  def authenticate_user
    unless user_logged_in?
      flash[:error] = "You shall not pass"
      redirect_to sign_in_path
    end
  end
end
