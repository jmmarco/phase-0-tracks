# Include the necessary library we can get the actual date
# (I don't like to hard code information that changes)
require 'date'
# Store the year in a variable and make it an integer
current_year = Date.today.strftime("%Y").to_i


# Gather data
puts "What is your name?"
name = gets.chomp.capitalize

puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
year_of_birth = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp.capitalize
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp.capitalize

# Detection Logic
if (current_year - year_of_birth) == age && garlic_bread == "Y"
	puts "Probably not a vampire."
elsif (current_year - year_of_birth) != age && garlic_bread == "N"
	puts "Probably a vampire."
elsif (current_year - year_of_birth) != age && garlic_bread == "N" && insurance == "N"
	puts "Almost certainly a vampire."
elsif name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end

# Print the results
puts "Here's the survey info:"
puts "Candidate name: #{name}"
puts "Current age #{age}"
puts "Year of birth: #{year_of_birth}"
puts "Garlic bread: #{garlic_bread}"
puts "Health insurance: #{insurance}"


