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
