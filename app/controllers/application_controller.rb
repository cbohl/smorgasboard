class ApplicationController < ActionController::Base

  include SessionsHelper
  protect_from_forgery with: :exception
  before_filter :require_login


	private

	  def require_login
	    unless current_user
	      redirect_to root_path
	    end
	  end
end
