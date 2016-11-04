class Comment < ActiveRecord::Base

	belongs_to :judo_class
	belongs_to :student

	validates :content, presence: true
end
