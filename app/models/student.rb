class Student < ActiveRecord::Base

	belongs_to :judo_class

	has_many :matches
	has_many :comments
	
	validates :student_name, presence: true
	# validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	validates :dob, presence: true
	validates :password ,:length => {:within => 4..40}
	
	has_secure_password
	
	
	def age
		d = Date.new(Date.today.year, dob.month, dob.day)
		d.year - dob.year - (d > Date.today ? 1 : 0)
	end
	
	def gen
		if @student.gender == false 
			gen = 'male'
			gen 
		else 
			gen = 'female'
			gen 
		end
	end
	
end
