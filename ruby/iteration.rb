# Students: Bex Finken, Juan Marco

def favorite_food
	puts "Spaghetti"
	puts "Tacos"
	yield("Bex", "Juan")

end

# Write Your Own Method That Takes a Block

favorite_food { |name1, name2| puts "#{name2} likes Spaghetti and #{name1} likes Tacos!" }


# Add Data Structures

# Array of integers
numbers = [1, 2, 7, 12, 50, 87, 99]

# A hash for pets
pets = {
	"cat" => 1,
	"dog" => 2,
	"fish" => 7,
	"tiger" => 3
}

# Release 1: Use .each, .map, and .map!

numbers.each do |num|
	puts "This is number: #{num}"
end

pets.each do |pet, quantity|
	puts "We have: #{quantity} #{pet}(s)."
end


# Add some helpful output

puts "Before .map!: #{numbers}"

# Iterate through each number and get the next one
numbers.map! do |num|
	num.next
end

puts "After .map! #{numbers}"

# Release 2: Use the Documentation

# Method 1: .delete_if

puts "Before .delete_if: #{numbers}"
numbers.delete_if {|num| num > 50 } # Get rid of numbers greater than 50
puts "After .delete_if: #{numbers}"

puts "Before .delete_if: #{pets}"
pets.delete_if {|pet| pet == "cat"} # Get rid of cats(s) ^_^
puts "Before .delete_if: #{pets}"


# Method 2: .select

puts "Before .select: #{numbers}"
numbers.select! {|num| num <= 10 } # Select numbers less than or equal to 10 use ! to modify original array
puts "After .select #{numbers}"

puts "Before .select #{pets}"
pets.select! {|pet, quantity| quantity <= 5 } # Select pet(s) that have 5 or less
puts "After .select #{pets}"

# Method 3:

puts "Before .keep_if: #{numbers}"
numbers.keep_if {|num| num.even?} # Just keep the even numbers
puts "After .keep_if: #{numbers}"

puts "Before .keep_if: #{pets}"
pets.keep_if {|pet| pet == "dog"} # Just keep the dog(s)
puts "After .keep_if: #{pets}"

