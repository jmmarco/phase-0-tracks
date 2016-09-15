# Include the necessary library so we can get the actual date
require 'date'
# Store the year in a variable and make it an integer
current_year = Date.today.strftime("%Y").to_i


# Process multiple employees
puts "How many employees will be processed?"
employees = gets.to_i

while employees > 0

  # Gather data
  puts "What is your name?"
  name = gets.chomp.capitalize
  puts "How old are you?"
  age = gets.to_i
  puts "What year were you born?"
  year_of_birth = gets.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_bread = gets.chomp.downcase
  puts "Would you like to enroll in the company's health insurance? (y/n)"
  insurance = gets.chomp.downcase

  # Calculate real age
  real_age = current_year - year_of_birth


  # Detection Logic
  if real_age == age && (garlic_bread == "y" || insurance == "y")
    result = "Probably not a vampire."
  elsif real_age != age && (garlic_bread == "n" && insurance == "n")
    result = "Almost certainly a vampire."
  elsif real_age != age && (garlic_bread == "n" || insurance == "n")
    result = "Probably a vampire."
  elsif name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  end

  puts "The employee is: #{result}"

  # Check for allergies
  puts "Please enter any allergies you may have:"
  puts "Enter 'done' when finished."
  allergy = ""
  allergies = Array.new

  while allergy != "done"
    allergy = gets.chomp.downcase

    if allergy != "done" && allergy != "sunshine"
      allergies << allergy
    elsif allergy == "sunshine"
      puts "Probably a vampire."
      employees -= 1
      break
    else
      # Print the survey:
      puts "-- Here's the survey info for the current employee --"
      puts "Candidate name: #{name}"
      puts "Age provided: #{age}"
      puts "Real age: #{real_age}"
      puts "Year of birth: #{year_of_birth}"
      puts "Garlic bread: #{garlic_bread}"
      puts "Health insurance: #{insurance}"
      puts "Allergies: #{allergies}"
      puts "Final result: #{result}"
      print "\n" * 2
      employees -= 1
    end
  end
end

# Plot twist
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
