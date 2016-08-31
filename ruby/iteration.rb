def favorite_food
	puts "Spaghetti"
	puts "Tacos"
	yield("Bex", "Juan")

end

favorite_food { |name1, name2| puts "#{name2} likes Spaghetti and #{name1} likes Tacos!" }