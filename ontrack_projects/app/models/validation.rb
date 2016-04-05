class Validation < ActiveRecord::Base
	belongs_to :project

	RANKING_ITEMS = { "sehr schlecht" => "1", "schlecht" => "2", "Okay" => "3", "gut" => "4", "sehr gut" => "5",}

	validates :comment, :username,:ranking, presence: true
	validates :comment, length: { minimum: 15}
end
