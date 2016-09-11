# Define Santa class
class Santa
	def initialize
		puts "Initializing Santa instance ..."
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