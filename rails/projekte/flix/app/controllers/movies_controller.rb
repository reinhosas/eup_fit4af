class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.release
  end

  def show
    # @movie = Movie.find(params[:id])
  end

  def new
		@movie = Movie.new
	end

	def create
		@movies = Movie.create(movie_params)
		redirect_to movies_url
	end

  def edit
    # @movie = Movie.find(params[:id])
  end

  def update
    # @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movies_url
  end
  def destroy
    @movie.destroy
    redirect_to movies_url
  end

  private
    def movie_params
      permitted_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)
    end

    def set_movie
      @movie = Movie.find(params[:id])
    end

end
