class Movie < ActiveRecord::Base
	def flop?
		total_gross.blank? || total_gross < 51000000
	end

	def self.release
		where("released_on <= ?", Time.now).order("released_on") #order sortiert nach dem Datum
	end

end
