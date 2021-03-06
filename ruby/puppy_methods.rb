class Puppy
    # Declare an initialize method
    def initialize
        puts "Initializing new puppy instance ..."
    end

    # Fetch
    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end

    # Speak
    def speak(num)
        num.times {puts "Woof!"}
    end

    # Rollover
    def roll_over
        puts "*rolls over*"
    end

    # Calculate age
    def dog_years(human_years)
        human_years * 5
    end

    # Say hi with paw
    def paw
        puts "*Say's hi with the paw*"
    end
end

# Driver Code
max = Puppy.new
max.fetch("ball")
max.speak(4)
max.roll_over
puts "Max is: #{max.dog_years(2)} years old!"
max.paw

# Define a new class!

class Tiger
	def initialize
		puts "Initializing Tiger class..."
	end

	def jump
		puts "*Jumping in the air*"
	end

	def roar
		puts "*Roars out load*"
	end
end

# Create an array to store all the tigers
tigers = []
50.times {tigers << Tiger.new}
puts "We have #{tigers.length} tigers!"

# Work with the tigers and make them do stuff
tigers.each do |tiger|
	tiger.jump
	tiger.roar
end

