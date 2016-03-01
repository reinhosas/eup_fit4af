class ReviewsController < ApplicationController
	before_action :set_movie
	def index
		@reviews = @movie.reviews
	end
private
		def review_params
			params.require(:review).permit(:name, :stars, :comment, :movie_id)
		end
		def set_movie
			@movie = Movie.find(params[:movie_id])
		end
end
