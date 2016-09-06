# Grab an agent's name, split it into two words
# Note tor reviewer: Felicia Torres should return "Vussit Gimodoe" according to the DBC
# However the next consonant after the letter "t" is "u" not "v"
# So the final output for "Felicia Torres" is actually: "Uussit Gimodoe"

def get_name
	# Get the name from the user and make sure it's OK
	loop do
    	input = ""
    	until input == "ok" do
            puts "Please enter a name:"
            name = gets.chomp
            puts "The name entered is #{name}"
            puts "Is that right? Enter 'ok' if satisfied or press the 'enter' key to enter a new name."
            input = gets.chomp.downcase
        end

        # Split the name into words
        name = name.split(" ")
        result = []

        # If the name has more than one word
        # Run the generator for each word
        if name.length > 1
            name.each do |piece|
                result << alias_generator(piece)
            end
            # Run the generator on the single word
        else
            result << alias_generator(name[0])
        end

        # Reverse (swap) the array
        result = result.reverse

        # Make the array a single string
        result = result.join(" ")

        # Put each generated alias in the array
        $aliases << result

        # Output to the user
        puts "Program complete! Here's your new name: #{result}"
        puts "Do you wish to generate a new name?"
        puts "Enter 'done' if you're all set or hit the 'enter' key to generate another alias."
        input = gets.chomp
        break if input == 'done'
    end
end


def get_next_vowel(vowel)
    vowels = ["a", "e", "i", "o", "u"]
    i = 0
    # Get the next vowel and add an "edge case"
    while i < vowels.length
        if vowel == 'u'
            return vowels[0]
        elsif vowel == vowels[i]
            return vowels[i+1]
        end
        i += 1
    end
end


def alias_generator(name)
    chars = name.chars
    vowels = ["a", "e", "i", "o", "u"]
    generated_name = []

    # Loop through each word
    # If it's a vowel get the next vowel
    # If it's a consonant get the next consonant

    chars.each do |letter|
        if vowels.include? letter
            generated_name << get_next_vowel(letter)
        else
            generated_name << letter.next
        end
    end

    # Return the generated alias capitalized
    return generated_name.join('').capitalize


end


# Driver code
puts "Hi Welcome to the Alias Generator 3000(TM)"

# Create an global array to hold all the aliases generated
$aliases = []

# Call the method that get's the name from the user
get_name

puts "The aliases you generated are #{$aliases}"