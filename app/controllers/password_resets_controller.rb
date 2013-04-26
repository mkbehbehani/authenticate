class PasswordResetsController < ApplicationController
  def new
  end

  def create
  	u = User.find_by_email(params[:email])
  	u.send if u
  	redirect_to root_url
  	
  end
end
