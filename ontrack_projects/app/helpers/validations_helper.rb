module ValidationsHelper
	def create_text(validation)
		Validation::RANKING_ITEMS.key(validation.ranking.to_s)
	end

	def create_ranking(project)
		str = ""
		for i in 1..5
			if i <= project.get_average_ranking
				str += image_tag "fstern.png", size: "15x15"
			else
				rest = i - project.get_average_ranking
				if rest < 1 && rest > 0.25 && rest < 0.75
					str += image_tag "hstern.png", size: "15x15"
				else
				str += image_tag "lstern.png", size: "15x15"
				end
			end
		end
		str.html_safe
	end

	def show_stars(validation)
		str = ""
		for i in 1..5
			if i <= validation.ranking
				str += image_tag "fstern.png", size: "15x15"
			else
				str += image_tag "lstern.png", size: "15x15"
			end
		end
		# validation.ranking.times do
		# 	str += image_tag "fstern.png", size: "15x15"
		# end
		# (5 - validation.ranking).times do
		# 	str += image_tag "lstern.png", size: "15x15"
		# end
		str.html_safe
	end
end
