# Define Santa class
class Santa
	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance ..."
		@name = name
		@gender = gender
		@ethnicity =  ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# Make Santa speak
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# Have some milk and cookies
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	# Getter methods (making private data available outside the class)
	def name
		@name
	end

	def gender
		@gender
	end

	def ethnicity
		@ethnicity
	end

	# Setter methods (make data writable)
	def name=(new_name)
		@name = new_name
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def ethnicity=(new_ethnicity)
		@ethnicity = new_ethnicity
	end
end

# Driver code
puts "Welcome to the Santa Generator 4000(TM)"
santas = []
loop do
	options = ['add', 'remove', 'update', 'quit']
	puts "Let's make some Santa's for the world!"
	puts "Options are: #{options}"
	input = gets.chomp.downcase
	break if input == "quit"

	case input
	when "add"
		puts "Enter a name for this santa:"
		name = gets.chomp
		puts "Enter a gender for this santa:"
		gender = gets.chomp
		puts "Enter an ethnicity for this santa:"
		ethnicity = gets.chomp
		santas << Santa.new(name, gender, ethnicity)
	when "update"

	else
		puts "Thats not a valid option. Try again."
	end
end

# Display info
p santas
santas[0].speak