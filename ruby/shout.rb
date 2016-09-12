# Create a shout module
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :D"
	end
end

# Driver code
puts Shout.yell_angrily("what the hell")

puts Shout.yelling_happily("I am Awesome")