# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Add desired item(s)
# set default quantity to 1 for each item
# print the list to the console (print has using .each)
# output:

# Method to add an item to a list
# input: item name and optional quantity
# steps: prompt user for item and quanity
# output: print a message to confirm and display updated cart

# Method to remove an item from the list
# input: item name (quanity not necessary)
# steps: delete target item
# output: print a message to confirm and display updated cart

# Method to update the quantity of an item
# input: enter target item
# steps: display item name and quantity
# output: print a message to confirm and display updated cart

# Method to print a list and make it look pretty
# input: shopping cart (hash)
# steps: iterate through each item in hash and print the key and values
# output: print entire cart (hash)

# Define the cart that accepts items as a parameter
def shopping_cart(items)
    cart = {}
    array = items.split(" ")

    array.each do |item|
        cart[item] = 1
        puts "Adding #{item}.. to the cart"
    end
    puts "Here's your current cart #{cart}"
    cart
end

# Driver code
puts "Welcome to the shopping cart 2000(TM)"

loop do
    puts "To get started, please enter some items to the cart using spaces"
    puts "Like this: carrots tomatoes cereal - To exit type 'done'"
    items = gets.chomp.downcase
    break if items == 'done'
    shopping_cart(items)
end
