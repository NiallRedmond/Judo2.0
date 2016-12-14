module StudentsHelper

  def matchWin
	@student = student.find(params[:student_id])
	Student.increment_counter(:score, @student.id)
  end


end
