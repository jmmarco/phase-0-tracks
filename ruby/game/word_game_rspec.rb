require_relative 'word_game'

describe WordGame do
	let(:word_game) { WordGame.new }

	it "define number of attempts based on word length" do
		expect(word_game.prepare_word("airplane")).to be Integer
	end

	it "grabs an array and makes it pretty and returns an array" do
		expect(word_game.make_nice(["r", "e", "d"])).to be Array
	end

	it "compares two arrays and determines if game is over" do
		expect(word_game.statues(["o", "n", "e"], ["o", "n", "e"])).to be equal
	end

end

# NOTE to Reviewer: Tests work, however RSpec doesn't like gets.chomp It seems to be causing
# problems. I can use gets alone, but the program doesn't work the same way.