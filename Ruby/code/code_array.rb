3.times do |number|
	puts number.to_s
end

3.times {|n| puts n.tos}

#Zufallszahlen Generator

lotto = []
7.times do
	lotto << rand(1..49) #rand gibt eine Zufallszahl zurück. In diesem Fall zwischen 1 und 49
end

numbers = (1..10).to_a
var = numbers.select do|n|
	n > 4
end													#selectiert alle zahlen größer 4
puts var

grade, ungrade = numbers.partition do |n|
	n.even?
end

puts grade
puts ungrade