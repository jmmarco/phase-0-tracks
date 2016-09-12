# INITIAL CODE
#
# Create a shout module
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :D"
# 	end
# end

# # Driver code
# puts Shout.yell_angrily("what the hell")
# puts Shout.yelling_happily("I am Awesome")

# UPDATED CODE
module Shout
	# Exlirated method
	def exilirated(assigment)
		puts "I'm soooo happpy! I figured out Ruby #{assigment} !!!"
	end

	# Frustrated method
	def frustrated(assigment)
		puts "I'm stuck and frustrated with Ruby #{assigment}. I'm going for a walk!"
	end
end

class Joey
	include Shout
end

class Peter
	include Shout
end

# Driver code
joey = Joey.new
joey.frustrated("Modules")

peter = Peter.new
peter.exilirated("Classes and Modules")
