class Puppy
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