class Registration < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

	HOW_HEARD_OPTIONS = ['Newsletter', 'Blog Post', 'Twitter', 'Websearch', 'Other']
	validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS}
	#validates :email, format: {with: /(\S+)@(\S+)/}
	#validates :name, presence: true
end