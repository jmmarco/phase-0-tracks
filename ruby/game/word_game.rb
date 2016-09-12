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

	# Method to check word
	def prepare_word(word)
		@word_to_guess = word.chars
		g = []
		@word_to_guess.each do |l|
			g << " - "
		end
		@guessed = g
		@attempts = word.length
	end

	def check_letter(letter)
		if @word_to_guess.include? letter
			puts "You found: #{letter}!"
			@guessed[@word_to_guess.index(letter)] = letter
		else
			puts "Sorry, #{letter} is not part of the word."
		end
		@attempts -= 1
		puts "You have #{@attempts} attempts remaining."
	end



end


# User interface

puts "Welcome to the Wordguessnator 9000(TM)"
game = WordGame.new

puts "This a two players game. User #1 will choose and write it down so that User #2 can guess it"
puts "User #1, please enter a word to be guessed:"
word = gets.chomp

game.prepare_word(word)


loop do
	puts "User #2, please enter a word to be guessed:"
	game.check_letter(gets.chomp)
	output = game.guessed
	puts "The guessed array is #{output}"
	break if game.attempts == 0
end




