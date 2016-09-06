# Grab an agent's name, split it into two words

def get_next_vowel(vowel)
	vowels = ["a", "e", "i", "o", "u"]
	i = 0
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

	puts "The name should be an array: #{chars}"

	chars.each do |letter|
		if vowels.include? letter
			generated_name << get_next_vowel(letter)
		else
			generated_name << letter.next
		end
	end

	puts "The generated name is #{generated_name.join('')}"


end

alias_generator("Torres")








# Swap the first and last name
# For each vowel inside of each name, swap it for the next vowel