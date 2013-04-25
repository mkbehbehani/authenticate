class SessionController < ApplicationController
	def create
		user = User.find_by_email(params[:email])
	if user && user.authenticate
		session[:user_id] = user.user_id
		redirect_to root_url
	else
		render 'new'
	end

	def destroy

	end
end
