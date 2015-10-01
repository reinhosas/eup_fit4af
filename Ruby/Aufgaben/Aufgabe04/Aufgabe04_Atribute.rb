# a. legen Sie zur uebung auf der irb ein Array jahreszeiten mit den Elementen: Sommer, Herbst, Winter an; sowohl in der Langform, als auch der Kurzform
# b. lassen Sie ausgeben wieviele Elemente das Array enthaelt, welche Jahreszeit die zweite im Array ist
# c. fuegen Sie das Element fruehjahr hinzu
# d. entfernen Sie das Element wieder aus dem Array
# e. ermitteln Sie mit Hilfe von ri, wie join Ihnen bei einer folgendermassen formatierten Ausgabe behilflich sein kann: Sommer und Herbst und Winter
# f. notieren Sie den Befehl
# g. ermitteln Sie den Befehl mit dem Sie die Positionen der Elemente des Arrays nach einem Zufallsprinzip anordnen koennen
# h. packen Sie Ihre drei Player aus dem Projekt in ein Array
# i. Geben Sie Player mit einer Iteration über das Array aus. Beginnen Sie mit einer Zeile, in der sie die Anzahl der Mitspieler notieren


# LÖSUNGEN:
# a. 	# jahreszeiten = ["Sommer", "Herbst", "Winter"]
# 		# => ["Sommer", "Herbst", "Winter"] 
# a.	# jahreszeiten = %w(Sommer Herbst Winter)
# 		# => ["Sommer", "Herbst", "Winter"] 
# b.	# jahreszeiten.count
# 		# => 3 
# b.	# jahreszeiten[1]
# 		# => "Herbst" 
# c.	# jahreszeiten.push("Fruehjahr")
# 		# => ["Sommer", "Herbst", "Winter", "Fruehjahr"] 
# d.	# jahreszeiten.delete("Fruehjahr")
# 		# => "Fruehjahr" 
# e.	#2.1.1 :005 > ri --help

# # Enter the method name you want to look up.
# # You can use tab to autocomplete.
# # Enter a blank line to exit.

# # >> join
#oder im terminal: ri Array.join (funktioniert nicht im irb)

# f.	# jahreszeiten.join(" und ")
# 		# => "Sommer und Herbst und Winter" 
# g.	# jahreszeiten.shuffle
# 		# => ["Herbst", "Sommer", "Winter"] 
#h.
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
		player1 = Player.new("Mike")
		player2 = Player.new("Jan")
		player3 = Player.new("Oke")

		players = [player1, player2, player3]

		puts "Anzahl der Spieler: #{players.count}"

		players.each   do |egal|
			puts egal
		end
