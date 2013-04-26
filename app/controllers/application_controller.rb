class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def current_user
  # @current_user will only be valid if there is a session id other than nil
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  # helper_method allows instance variable @current_user to be accessed from the view
  helper_method :current_user
  def authorize
    redirect_to login_url if current_user.nil?
  end
end
