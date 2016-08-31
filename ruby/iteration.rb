def favorite_food
	puts "Spaghetti"
	puts "Tacos"
	yield("Bex", "Juan")

end

favorite_food { |name1, name2| puts "#{name2} likes Spaghetti and #{name1} likes Tacos!" }


# Release 1 - Data Structures

cereal = ["Lucky Charms", "Cap'n Crunch", "Fruty Pebbles", "Honey Combs"]

pets = {
	# Animal and breed
	"cat" => "calico",
	"dog" => "border collie"
	"dog" => "french bulldog"
}


