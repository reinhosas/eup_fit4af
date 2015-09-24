class Movie
	attr_reader :title, :rank

	def initalize(ptitle,prank=50)
		@title = ptitle.capitalize
		@rank = prank
	end
	def title=(titel) #Auf dies art lässt sich mit "capitalize" der title groß schreiben. Mit "accessor" oder "write" gehts nicht.
		@title = title.capitalize
	end
	def normalized_rank #Name spielt keine Rolle
		@rank / 100
	end
	def thumbs_up
		@rank = @rank+10
	end

	def thumbs_down
		@rank = -10
	end

	def to_s
		"Der Film #{@title} hat den Rank: #{normalized_rank}"
	end
end

	movie1 = Movie.new("batman, 40")
	puts movie1.to_s
	movie1.thumps_up
	puts "Neuer Wert: #{movie1}"

	puts movie1.title
	movie1.title ="Superman"
	puts movie1

movie1 = Movie.new("batman,40")
movie2 = Movie.new("Spiderman")
movie3 = Movie.new("Superman")
movies = [movie1, movie2, movie3] #erstellt ein arry
movies.each do |movie| #gibt alle movies aus die im array stehen
	puts movie
end