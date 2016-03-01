class Movie < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	
	validates :title, :released_on, :duration, presence:true
	validates :description, length: { minimum: 25 }
	validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
	validates :poster_image_file, allow_blank: true, format: 
						{with: /\w+.(gif|jpg|png)\z/i, message: "soll ein GIF, JPG oder PNG Bild sein"}
	validates :rating, inclusion: { in: %w(G PG PG-13 R NC-17)}

	def flop?
		total_gross < 10000000 unless total_gross.blank?
	end

	def self.shown
		where("released_on <= ?", Time.now).order("released_on")
	end

	def self.total_gross
		where("total_gross >= 100000000")
	end
end
