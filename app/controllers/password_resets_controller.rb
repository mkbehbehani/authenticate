class PasswordResetsController < ApplicationController
  def index

  end

  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	user.send if user
  	redirect_to root_url

  end
end
