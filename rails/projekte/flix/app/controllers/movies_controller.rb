class MoviesController < ApplicationController
	def index
		@movies = %w(IronMan SuperMan SpiderMan)
	end
end
