def favorite_food
	puts "Spaghetti"
	puts "Tacos"
	yield("Bex", "Juan")

end

favorite_food { |name1, name2| puts "#{name2} likes Spaghetti and #{name1} likes Tacos!" }


# Release 1 - Data Structures

numbers = [1, 2, 12, 50, 87, 99]

pets = {
	# Animal and breed
	"cat" => 1,
	"dog" => 2
}


