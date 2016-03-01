class Review < ActiveRecord::Base
  belongs_to :movie
  STARS_OPTIONS = ['1', '2', '3', '4', '5']
	validates :stars, inclusion: { in: STARS_OPTIONS}
	validates :comment, presence: true
	validates :name, presence: true
end
