class ApplicationController < ActionController::Base
  protect_from_forgery
  # @current_user will only be valid if there is a session id other than nil
  @current_user = User.find(session[:user_id])

  # helper_method allows instance variable @current_user to be accessed from the view
  helper_method :current_user
  
end
