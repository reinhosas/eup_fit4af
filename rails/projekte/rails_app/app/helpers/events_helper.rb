module EventsHelper
	def image_for(event)
		if event.image_file.blank?
			image_tag("dummy.JPG")
		else
			image_tag(event.image_file)
		end
	end
end
