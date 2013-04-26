class PasswordResetsController < ApplicationController
  def index

  end

  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	user.send_password_reset if user
  	redirect_to root_url

  end

  def edit
  	@user = User.find.by.password_reset_token!(params[:id])
  	#routes to the correct edit page, using the token passed into the url from the email
  end
end
