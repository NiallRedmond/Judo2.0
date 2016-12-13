module ApplicationHelper

	def signed_in?
		if session[:student_id].nil?
			return
		else
			@current_student = Student.find_by_id(session[:student_id])
		end
	end
	
		# def admin?
		# if session[:student_name] != 'admin'
			# return
		# else
			# @current_student = Student.find_by_id(session[:student_id])
		# end
	# end

	# def admin?
	# if session[:customer_id].nil?
		# return
	# else
    # signed_in? == true
	# @current_student == Student.find_by_student_name('admin')
	# end
	# end
	
		# def adminTest
		# if session[:student_name] == 'admin'
			
		# else
		   # return 
		# end
	# end

	def admin?
	if session[:student_id].nil?
		return
	else
    signed_in? == true
	@current_student == Student.find_by_id(24)
	end
end
	
end

