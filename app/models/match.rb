class Match < ActiveRecord::Base

	belongs_to :student
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	
	def opposition()
        @opponent = Student.find_by_id(self.opponent)                          
    end
	
end
