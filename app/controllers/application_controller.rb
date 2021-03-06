class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include ApplicationHelper
  

  
    def admin
	if admin?
		store_location
		redirect_to root_path, :notice => "You must be an admin to access this page."
	end
  end
    def authorise
	unless signed_in?
		store_location
		redirect_to login_path, :notice => "Please sign in to access this page."
	end
  end

  


  
 private
	def store_location
		session[:return_to] = request.fullpath
	end
	
end
