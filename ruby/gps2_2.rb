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

# Method to add items
def add_item(cart,item, quantity)
    cart[item] = quantity
    puts "Here's your current cart #{cart}"
    cart
end

# Method to remove items
def remove_item(cart, item)
	cart.delete(item)
	cart
end

# Driver code
puts "Welcome to the shopping cart 2000(TM)"

loop do
    puts "To get started, please enter some items to the cart using spaces"
    options = ['add', 'remove', 'update', 'display']
    puts "Available options are: #{options}"
    input = gets.chomp.downcase
    cart = {}

    case input
    when "add"
        puts "Enter the item you wish to add:"
        item = gets.chomp
        puts "How many of #{item} do you want?"
        quantity = gets.chomp
        begin
            quantity = Integer(quantity)
            add_item(cart,item, quantity)
            puts "Ok, added #{quantity} #{item}"
        rescue ArgumentError, TypeError
            puts "Thats not a number. Try again."
        end
    when "remove"
        puts "Enter the item you wish to remove:"
        item = gets.chomp

    else
        puts "Not a valid option. Try again."
    end


end
