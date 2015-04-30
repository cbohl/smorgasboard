class UsersController < ApplicationController
	skip_before_filter :require_login, :only => [:new, :create]

	def index
		@users = User.all
	end

	def new
		@user = User.new
		render 'new'
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			@errors = @user.errors.full_messages
			render 'new'
		end 
	end

	def show
		@user = User.find_by(id: params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:name, :username, :password, :email)
		end
end
