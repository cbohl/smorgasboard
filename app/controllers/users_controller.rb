class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
		render '/users/_form'
	end

	def create
		user = User.new(params[:user])
		if user.save
			session[:id] = user.id
			redirect user_path(user)
		else
			@error = 'Invalid'
			@errors = user.errors.full_messages
			render 'new'
		end 
	end

	def show
	end
end
