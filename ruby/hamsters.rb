puts "What's the hamsters name?"
name = gets.chomp

puts "What is the hamsters volume level?"
volume = gets.to_i

puts "Is the hamster a good candidate for adoption? (Y/N)"
adoption = gets.chomp.downcase
if adoption == "y"
	adoption = true
elsif adoption == "n"
	adoption = false
end
# Consider using a loop construct to improve UX


puts "Enter the estimated age for the hamster"
age = gets.chomp
if age == ""
	age =  nil
end


puts "Ok, please check if all fields are correct"
puts "Hamsters name: #{name}"
puts "Hamsters volume level #{volume}"
puts "Good canidate: #{adoption}"
puts "Hamsters age is: #{age}"