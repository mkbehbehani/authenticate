class SessionsController < ApplicationController
	# creates a session by comparing finding a user entered in login form, and 
	# checking whether the authenticate method passes back as "true"
	def create
	user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			cookies.permanent[:auth_token] = user.auth_token
			redirect_to root_url
		else
			render 'new'
		end
	end
	# by setting the user_id to nil, halts any controller reliant on the session
	def destroy
		cookies.delete(:auth_token)
		redirect_to root_url
	end
	# def reset_password
	# 	user = User.find_by_email(params[:email])
	# 	if user && user.authenticate(params[:password])
	# 		session[:user_id] = user.id
	# 		redirect_to root_url
	# 	else
	# 		render 'new'
	# 	end
	# end
end

