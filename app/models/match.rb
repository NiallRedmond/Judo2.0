class Match < ActiveRecord::Base

	belongs_to :student
	
	def opposition()
        @opponent = Student.find_by_id(self.opponent)                          
    end
	
end
