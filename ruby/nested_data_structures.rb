# Nested Data Structure
# Real-world object: Refrigerator

refrigerator = {
	# Freezer compartment
	freezer: {
		main: ['ice cream', 'green peas'],
		ice_box: 35 # And ice box to hold ice cubes (I like to keep track of every single ice cube)
	},
	# Main compartment (inside there's a green box to hold fresh produce)
	main: ['milk', 'cheese', 'ham', 'eggs', green_box: ['lettuce', 'tomatoes', 'carrots']]
}

# How many ice cubes?
puts "The freezer has #{refrigerator[:freezer][:ice_box]} ice cubes!"

# Get some ice cream
puts "We have some delicious #{refrigerator[:freezer][:main][0]} in the freezer!"

# Brag about the awesome tomatoes!
puts "Today i went to the market and bought some wonderful #{refrigerator[:main][4][:green_box][1]}!"

# Make a sandwich
puts "I'm gonna go make me a #{refrigerator[:main][2]} and #{refrigerator[:main][1]} sandwich."