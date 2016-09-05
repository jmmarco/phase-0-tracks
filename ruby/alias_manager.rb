# Grab an agent's name, split it into two words

def alias_generator(name)
	arr = name.split(' ')
	vowels = ["a", "e", "i", "o", "u"]
	generated_name = []
	# Loop through each word
	arr.each do |word|
		# Split each word into letters
		w = word.split('')

		for letter in w
			# For each letter do something
			for vowel in vowels
				if vowel == letter
					puts "Found a vowel, and it is #{letter}"
					puts "The next vowel for it is #{}"
					generated_name << vowel.next
				end
			end


		end
	end
	p generated_name
end

alias_generator("Steve Marco")




# Swap the first and last name
# For each vowel inside of each name, swap it for the next vowel