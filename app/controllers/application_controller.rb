class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def current_user
  # @current_user will only be valid if there is an auth token
  	@current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  # helper_method allows instance variable @current_user to be accessed from the view
  helper_method :current_user
  def authorize
    redirect_to login_url if current_user.nil?
  end
end
