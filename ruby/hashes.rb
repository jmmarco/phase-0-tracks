# Greet the user and show way to get out of program
# Start gathering information:
# Name, age, number of children, colors, decor theme,  and payment method
# Ask the user if the information entered is correct.
# Allow the user to change any field necessary
# Present the client's information
# Print out an exit message


# initialize an empty input variable and a hash to store customer
input = ""
client = {}

# Put program in a loop so it runs until targed input is reached
loop do
    break if input == 'done'

    # Get information
    puts "Enter the customer name:"
    client["Name"] = gets.chomp

    puts "Enter the the customer's age:"
    client["Age"] = gets.chomp.to_i

    puts "Does the customer have children? (y/n)"
    input = gets.chomp.downcase
    if  input == "y"
        client["Children"] = true
    else
        client["Children"] = false
    end

    # Initialize colors as an empty array so we can dump info into it
    client["Colors"] = []

    loop do
        puts "Enter another color and press 'enter'. Type 'done' when completed." if client["Colors"].length > 0
        puts "Enter a color, and press 'enter'. Type 'done' when completed."
        input = gets.chomp
        break if input == "done"
        client["Colors"] << input
    end


    puts "Enter the customer theme:"
    client["Theme"] = gets.chomp

    puts "Enter the preferred payment method:"
    client["Payment Method"] = gets.chomp

    # Present the client information
    puts "Here's the customer's you entered details: #{client}"
    puts "Thanks for using the cliententerator 2000!"
end # Main program loop
