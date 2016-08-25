puts "What's the hamsters name?"
name = gets.chomp

puts "What is the hamsters volume level?"
volume = gets.to_i

puts "Is the hamster a good candidate for adoption? (Y/N)"
adoption = gets.chomp

puts "Enter the estimated age for the hamster"
age = gets.chomp
if age == ""
	age =  nil
end