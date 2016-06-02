class Movie < ActiveRecord::Base
	has_many :registrations, dependent: :destroy
	
	def flop?
		total_gross.blank? || total_gross < 51000000
	end
end
