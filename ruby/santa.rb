# Define Santa class
class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
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
end

# Test class
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Oreo")