module MoviesHelper
	def format_total_gross(movie)
		if movie.flop?
			content_tag(:strong, "FLOP")
		else
			number_to_currency(movie.total_gross)
		end
	end

	def image_for(movie)
		if movie.poster_image_file.blank?
			image_tag ("default.jpeg"), :width => 150, :height => 250
		else
			image_tag (movie.poster_image_file), :width => 150, :height => 250
		end
	end
end
