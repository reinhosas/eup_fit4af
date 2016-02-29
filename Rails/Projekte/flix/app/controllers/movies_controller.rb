class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	before_action :set_sidebar_movies
	def index
		@movies = Movie.all
	end

	def show
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to movies_url, notice: "Hinzufügen war erfolgreich!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		@movie.update(movie_params)
		if @movie.save
			redirect_to movies_url, notice: "Update war erfolgreich!"
		else
			render :edit
		end
	end

	def destroy
		@movie.destroy
		redirect_to movies_url, alert: "Stirb, Stirb, Stirb!!!"
	end

	private
		def movie_params
			params.require(:movie).permit(:poster_image_file, :director, :cast, :duration, :title, :description, :total_gross, :rating, :released_on)
		end

		def set_sidebar_movies
			@sidebar_movies = Movie.total_gross
		end

		def set_movie
			@movie = Movie.find(params[:id])
		end

end
