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

# Method to check for valid quanities
# input: enter valid whole number (integer)
# steps: check if number is actually a number and a integer
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
    cart
end

# Method to add items
def add_item(cart,item, quantity)
    cart[item] = quantity
    puts "Ok, added #{quantity} #{item}(s)"
    cart
end

# Method to remove items
def remove_item(cart, item)
    cart.delete(item)
    puts "Ok, removed #{item}(s)"
    cart
end

# Method to update items
def update_item(cart, item, quantity)
    cart[item] = quantity
    puts "Ok, updated #{item} to #{quantity}"
    cart
end

# Method to check for valid quantities
def check_quantity(item)
	quantity = ''
    loop do
    	puts "Ok, enter the new quantity for #{item}:"
        quantity = Integer(gets) rescue false
        break if quantity.is_a? Integer
        puts "Thats not a number. Try again!"
    end
    quantity
end

# Method to display cart
def display(cart)
    puts "Here's your current shopping cart:"
    cart.each do |item, quantity|
        puts "#{quantity} #{item}"
    end
    p cart
end

# Driver code
puts "Welcome to the shopping cart 2000(TM)"
puts "To get started, please enter some items to the cart using spaces"
items = gets.chomp
cart = shopping_cart(items)
display(cart)

# Present menu until user is done
loop do
    # Greet user and present available options
    options = ['add', 'remove', 'update', 'display', 'done']
    puts "Available options are: #{options}"

    input = gets.chomp.downcase

    # Quit program
    break if input == 'done'

    # Do stuff based on input
    case input
    when "add"
        puts "Enter the item you wish to add:"
        item = gets.chomp
        quantity = check_quantity(item)
        add_item(cart, item, quantity)
        display(cart)
    when "remove"
        display(cart)
        puts "Enter the item you wish to remove:"
        item = gets.chomp
        remove_item(cart, item)
    when "update"
        display(cart)
        puts "What item do you wish to update?"
        item = gets.chomp
        quantity = check_quantity(item)
        update_item(cart, item, quantity)
    when "display"
        display(cart)
    else
        puts "Not a valid option. Try again."
    end

end

# Say bye!
puts "Thanks for using the shoping cart 2000(TM)!"
