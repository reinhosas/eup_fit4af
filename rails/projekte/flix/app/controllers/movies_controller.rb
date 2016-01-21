class MoviesController < ApplicationController
  

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def new
		@movie = Movie.new
	end

	def create
		permitted_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)
		@movies = Movie.create(permitted_params)
		redirect_to movies_url
	end

end
