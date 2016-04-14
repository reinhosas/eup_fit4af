class Employee < ActiveRecord::Base
  belongs_to :project
  validates :nachname, presence: true
  # validates :name
  # def name
  # 	:name = :vorname + :nachname
  # end
  # Auskommentiert da nicht funktionsfähig
end
