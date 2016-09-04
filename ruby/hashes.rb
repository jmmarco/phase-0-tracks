# Greet the user, ask what does he want to do
# display client list, add client, modify client, remove client
# Name, age, number of children, decor theme, payment method

user_input = nil
until user_input == 5
    puts "Welcome to the client database."
    puts "Available options are:"
    puts "1. Display client list"
    puts "2. Add client"
    puts "3. Modify client"
    puts "4. Remove Client"
    puts "5. Quit"

    user_input = gets.chomp.to_i
    clients = [] # Initialize an array to place each client

end



