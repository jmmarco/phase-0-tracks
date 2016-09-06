# Grab an agent's name, split it into two words

def alias_generator(name)
	chars = name.chars
	vowels = ["a", "e", "i", "o", "u"]
	generated_name = []
	# Loop through each word

	puts "The name should be an array: #{chars}"
	count = chars.count do |char|

		vowels.any? {|vowel| char == vowel}

	end

	puts count
end

alias_generator("john")





# Swap the first and last name
# For each vowel inside of each name, swap it for the next vowel