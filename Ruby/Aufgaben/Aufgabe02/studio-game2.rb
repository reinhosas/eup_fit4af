def say_hello(name, health=100)
	"ich bin #{name.capitalize} mit einem Wert von #{health} um #{time} Uhr"
end

# def time
# 	current_time = Time.new
# 	current_clock = current_time.strftime("%k:%M")
# end

def time
	Time.new.strftime("%k:%M")
end

puts say_hello("ludwig",50)
puts say_hello("August")
