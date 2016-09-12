# Game Class

class WordGame
	attr_accessor :attempts


	def initialize
		puts "Intializing word game ..."

	end

	# Method to check word
	def check_word(word)
		w = word.chars
		w.each do |l|
			puts "Letter: #{l}"
		end
	end

end


# User interface

puts "Welcome to the Wordguessnator 9000(TM)"
game = WordGame.new

puts "This a two players game. User #1 will choose and write it down so that User #2 can guess it"
puts "User #1, please enter a word to be guessed:"
word = gets.chomp

game.check_word(word)



