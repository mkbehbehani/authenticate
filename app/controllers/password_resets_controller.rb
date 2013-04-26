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
  	@user = User.find_by_password_reset_token!(params[:id])
  	#routes to the correct edit page, using the token passed into the url from the email
  end

  def update
  	#standard rails CRUD method
  	@user = User.find_by_password_reset_token!(params[:id])
  	if @user.update_attributes(params[:user])

  	redirect_to root_url, :notice => "Password Updated!"
  	end
  end
end
