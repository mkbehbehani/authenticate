class SessionController < ApplicationController
	# creates a session by comparing finding a user entered in login form, and 
	# checking whether the authenticate method passes back as "true"
	def create
		user = User.find_by_email(params[:email])
	if user && user.authenticate
		session[:user_id] = user.id
		redirect_to root_url
	else
		render 'new'
	end
	# by setting the user_id to nil, halts any controller reliant on the session
	def destroy
		session[:user_id] = nil
	end
end
