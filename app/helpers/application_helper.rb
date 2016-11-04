module ApplicationHelper

	def signed_in?
		if session[:student_id].nil?
			return
		else
			@current_student = Student.find_by_id(session[:student_id])
		end
	end
end

