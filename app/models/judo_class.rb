class JudoClass < ActiveRecord::Base

	has_many :comments, dependent: :destroy
	has_many :students
	
	validates :belt_level, presence: true
	validates :day, presence: true
	validates :time, presence: true
	
	def self.search(search)
	where("belt_level LIKE ?", "%#{search}%") 
	end
	

end
