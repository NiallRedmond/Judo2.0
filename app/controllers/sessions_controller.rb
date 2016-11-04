class SessionsController < ApplicationController
  def new
  end

def create
	  student = Student.find_by_student_name(params[:student_name])
	  
	 if student && student.authenticate(params[:password])
		session[:student_id] = student.id
		redirect_to student
	else
		render'new'
		flash.now[:error] = "Invalid user name/password."
end
  end

  def destroy
	 if signed_in?
		session[:student_id] = nil
	else
		flash[:notice] = "You need to log in first."
	end
		redirect_to login_path
	  end
end
