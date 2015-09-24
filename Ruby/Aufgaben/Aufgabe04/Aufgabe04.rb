# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score

class Player
	attr_reader :health #a. macht die die Variable @health ausgebbar, obwohl sie sich in der Klasse befindet(siehe class_eigenschaften.txt)
	attr_writer :name

	def initialize(pname, phealth=100)#Konstruktor
		@name = pname				#alles mit "@"" sind Instanzvariablen("Nur" gültig in der gesammten Klasse)
		@health = phealth
	end
	def name=(name) #Auf dies art lässt sich der title mit "capitalize" groß schreiben. Mit "accessor" oder "write" gehts nicht.
		@name = name.capitalize
	end

	def score
		@score = @health + @name.length
	end

	def to_s
		"Der Player #{@name} hat die Health: #{@health} und einen Score von #{score}"
	end
	
	def blam
		@health = @health + 10
		"#{@name} got blamed"

	end
	def w00t
		@health = @health - 10
		"#{@name} got w00ted"
	end


end

	player1 = Player.new("Mike",60)
	puts player1
	puts player1.blam
	puts player1

	player2 = Player.new("Gorden")
	puts player2.w00t
	puts player2

	puts player1.health
	player1.name ="Peter"
	puts player1
