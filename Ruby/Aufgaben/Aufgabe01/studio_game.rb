name1 ="larry"
health = 60
puts "#{name1}´s health is #{health}"
puts "#{name1.capitalize}´s health is #{health}".center(30,"*")
puts name1 + "´s health is " + health.to_s

puts "#{name1}´s health is #{health*3}"
puts name1 + "´s health is " + (health*3).to_s

puts name1 + "´s health is " + (health/9).to_s
puts name1 + "´s health is " + (health/9.0).to_s

puts "larry\t + curly\t + moe\t"

puts "Players:\n\tlarry\n\tcurly\n\tmoe"
player1 = "larry"
player2 = "curly"
player3 = "moe"

puts "Players:\n\t" + player1 + "\n\t" + player2 + "\n\t" + player3

puts player1 + " has health of " + health.to_s + "."
health2 = 125
puts player2 + " has health of " + health2.to_s + "."
health3 = 100
status = player3 + " has health of " + health3.to_s + "."
puts status.center(50, "*")
puts status.center(50, "*")
puts "Shemp......................... 90 health"
puts "Shemp......................... 90 health"
puts "Players:\n\t" + player1 + "\n\t" + player2 + "\n\t" + player3
puts "The game started on #{Time.new}"