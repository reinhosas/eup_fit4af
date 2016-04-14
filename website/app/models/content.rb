class Content < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	validates :title, length: { minimum: 5, message: "Der Titel muss mindestens 5 Zeichen enthalten!" }
	validate :date_cannot_be_in_the_past
		def date_cannot_be_in_the_past
			errors.add(:date, "Das Datum darf nicht in der Vergangenheit liegen!") if !date.blank? && date <= Date.today
		end
end
