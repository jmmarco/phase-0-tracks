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
numbers = [1, 2, 12, 50, 87, 99]

# A hash for pets
pets = {
	"cat" => 1,
	"dog" => 2
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

puts "Before .delete_if: #{numbers}"

# Get rid of numbers greater than 50
numbers.delete_if {|num| num > 50 }

puts "After .delete_if: #{numbers}"

puts "Before .delete_if: #{pets}"

# Get rid of cats(s)
pets.delete_if {|pet| pet == "cat"}

puts "Before .delete_if: #{pets}"


