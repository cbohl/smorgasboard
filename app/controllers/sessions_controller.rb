class SessionsController < ApplicationController
	skip_before_filter :require_login

	def new
		@user = User.new
	end

	def create
		@user = User.find_by(username: params[:user][:username])
		if @user && @user.authenticate(params[:user][:password])
			log_in(@user)
			redirect_to user_path(@user)
		else
			@user = User.new
			@errors = 'invalid email and/or password'
			render 'new'
		end
	end	

	def destroy
		log_out
		redirect_to login_path
	end
end
