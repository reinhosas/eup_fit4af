class Playlist
	def initialize(name)
		@name = name #Hier stehen alle Playlists drin
		@movies = [] #erzeugt ein Array
	end
	def add_movie(movie)
		@movies << movie
	end
	def play
		puts "Playlist heisst: #{@name.capitalize}"
		@movies.each do |movie|
			movie.thumbs_up
			puts movie.to_s
		end
	end
end	

class Movie
	attr_accessor :title, :rank

	def initialize(ptitle, prank=50)
		@title = ptitle.capitalize
		@rank = prank
	end

	def normalized_rank #Name spielt keine Rolle
		@rank / 10
	end
	def thumbs_up
		@rank = @rank+10
	end

	def thumbs_down
		@rank =-10
	end

	def to_s
		"Der Film #{@title} hat den Rank: #{normalized_rank}"
	end
end

	movie1 = Movie.new("batman")
	movie2 = Movie.new("hero")
	playlist = Playlist.new("Horrorfilme")
	playlist.add_movie(movie1)
	playlist.add_movie(movie2)

	playlist.play

# movie1 = Movie.new("batman,40")
# movie2 = Movie.new("Spiderman")
# movie3 = Movie.new("Superman")
# movies = [movie1, movie2, movie3] #erstellt ein arry
# movies.each do |movie| #gibt alle movies aus die im array stehen
# 	puts movie
#end