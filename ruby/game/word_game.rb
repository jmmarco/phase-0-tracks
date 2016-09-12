# Game Class

class WordGame
	attr_accessor :attempts, :word_length, :guessed, :word_to_guess


	def initialize
		puts "Intializing word game ..."
		@attempts = 0
		@guessed = []
		@word_to_guess = []
		@is_over = false
	end

	# Method to prepare word
	def prepare_word(word)
		@word_to_guess = word.chars
		g = []
		@word_to_guess.each do |l|
			g << " - "
		end
		@guessed = g
		@attempts = word.length
	end

	# Method to check letter
	def check_letter(letter)
		if @word_to_guess.include? letter
			puts "You found: #{letter}!"
			@word_to_guess.length.times do |i|
				if word_to_guess[i] == letter
					@guessed[i] = letter
					puts "Good guess!"
				end
			end
		else
			puts "Sorry, #{letter} is not part of the word."
		end

		@attempts -= 1
		status(@word_to_guess, @guessed)
		puts "You have #{@attempts} attempts remaining."
	end

	# Make the array look presentable
	def make_nice(array)
		array = array.join(" ")
	end

	def status(arr1, arr2)
		arr1.sort == arr2.sort
		@is_over = true
	end
end


# User interface

puts "Welcome to the Wordguessnator 9000(TM)"
game = WordGame.new

puts "This a two players game. User #1 will choose and write it down so that User #2 can guess it"
puts "User #1, please enter a word to be guessed:"
word = gets.chomp

game.prepare_word(word)

while game.attempts != 0
	puts "User #2, please enter a letter:"
	game.check_letter(gets.chomp)
	output = game.guessed

	pretty = game.make_nice(output)

	puts "The guessed word is #{pretty}"
	# Check if the word was guessed
	if @is_over
		"You won!!!"
		break
	end
end


if game.attempts == 0
	puts "The word was: #{@word_to_guess}"
	puts "Better luck next time!"
end
puts "Thanks for playing!"
