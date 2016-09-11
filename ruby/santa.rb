# Define Santa class
class Santa
    attr_reader :name, :gender, :ethnicity, :age

    # You usually use attr_accessor for both read and write
    attr_accessor :gender, :ethnicity, :age

    def initialize(gender, ethnicity)
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

    # Give santa an age between 0 and 140
    def age
    	age = Random.new
    	age = age.rand(0..140)
    end

end

# Driver code
puts "Welcome to the Santa Generator 4000(TM)"


genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


puts "Let's make some Santa's for the world!"
puts "How many santas do you want to create?"
num = ""
loop do
    puts "Enter a number (please use integers only):"
    num = Integer(gets) rescue false
    break if num.is_a? Integer
    puts "Not a valid number. Try again"
end

# Create a new array to hold all the santas
santas = []

num.times do
	santas << Santa.new(genders.sample, ethnicities.sample)
end

# Loop over each santa and and output a random gender, ethnicity and age
santas.each do |s|
	puts "Here's your santa:"
	puts "It's a #{s.gender} and #{s.ethnicity}"
	puts "And has an age of: #{s.age}"
end