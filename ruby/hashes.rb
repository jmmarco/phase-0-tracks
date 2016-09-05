# Greet the user and show way to get out of program
# Start gathering information:
# Name, age, number of children, colors, decor theme,  and payment method
# Ask the user if the information entered is correct.
# Allow the user to change any field necessary
# Present the client's information
# Print out an exit message

# Add pretty print library to print hashes in a nice way
require 'pp'

puts "Welcome to the customer database!"

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

    # Present the information to the Interior Designer
    puts "Here's the customer's details:"
    pp client

    puts "Is the info ok (y/n)?"
    input = gets.chomp.downcase
    if input == 'n'
        until input == "done"
            puts "Ok, What field would you like to change?. Enter 'done' when finished."
            input = gets.chomp
            case input
            when "name"
                puts "Ok, enter a customer name:"
                client["Name"] = gets.chomp
            when "age"
                puts "Ok, enter an age:"
                client["Age"] = gets.chomp.to_i
            when "children"
                puts "Ok, does the customer have children? (y/n)"
                input = gets.chomp.downcase
                if  input == "y"
                    client["Children"] = true
                else
                    client["Children"] = false
                end
            when "color"
                # Empty the "Colors" array
                client["Colors"] = []
                loop do
                    puts "Enter another color and press 'enter'. Type 'done' when completed." if client["Colors"].length > 0
                    puts "Enter a color, and press 'enter'. Type 'done' when completed."
                    input = gets.chomp
                    break if input == "done"
                    client["Colors"] << input
                end
            when "theme"
                puts "Ok, enter a customer theme:"
                client["Theme"] = gets.chomp
            when "payment"
                puts "Ok, enter the preferred payment method:"
                client["Payment Method"] = gets.chomp
            end # End of case loop

            # Present the updated information
            puts "Here's the updated customer's details: #{client}"
        end # End of until loop
    else
        puts "We're done here. Bye!"
        break
    end # End of conditional

    # Present the client information
    puts "Here's the customer's you entered details:"
    pp client
    puts "Thanks for using the cliententerator 2000!"
end # Main program loop
