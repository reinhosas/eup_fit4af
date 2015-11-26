class Kunde
	attr_accessor :name, :gehalt
	attr_writer :adresse

	def initialize(pname)
		@name = pname
		@kredite = []
	end

	def set_kredit(pkredit)
		@kredite << pkredit
	end

	def show_kredite
		puts "#{@name}, #{@adresse} hat folgende Kredite:\n"
		@kredite.each.with_index(1) do |row,i|
			puts "Kredit #{i}: #{row.wert} \n"
		end
	end

	def to_s
		@name
	end

end

class Kredit
	attr_accessor :wert

	def initialize(pwert)
		@wert = pwert
	end
end


kunde_1 = Kunde.new("Theo Sommer")
kunde_1.name = "Theo Sonnenschein"
kunde_1.adresse = "Hermelinweg 11 22159 Hamburg"
kredit_1 = Kredit.new(5000)
kredit_2 = Kredit.new(4000)

puts kunde_1.name
puts kunde_1

kunde_1.set_kredit(kredit_1)
kunde_1.set_kredit(kredit_2)

kunde_1.show_kredite

