# Virus Predictor

# I worked on this challenge [by myself, with: Tiffany Chiu and Juan Marco].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Allows us to load a file which contents are required for our main program
require_relative 'state_data'

class VirusPredictor

  # First method that gets called when new instance of the class is created (takes three parameters)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



  # Calls the predicted_deaths and speed_of_spread methods (using required arguments for each) and prints as sentences
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # All the methods below can be called only in the context of the object and are accessible from the outside (driver code)

  # Uses control flow to determine the number of deaths and prints that as a statement
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      population_factor = 0.4
    elsif @population_density >= 150
      population_factor = 0.3
    elsif @population_density >= 100
      population_factor = 0.2
    elsif @population_density >= 50
      population_factor = 0.1
    else
      population_factor = 0.05
    end

    # Calculate the number of death once, using the correct factor returned
    number_of_deaths = (population_factor * @population).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # Uses formula to determine speed rate of the spread and prints statement
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    if @population_density >= 200
      spread = 0.5
    elsif @population_density >= 150
      spread = 1
    elsif @population_density >= 100
      spread = 1.5
    elsif @population_density >= 50
      spread = 2
    else
      spread = 2.5
    end

    speed = spread

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# print full report

STATE_DATA.each do |state, value|
  puts "-" * 105
  VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects
end


#=======================================================================
# Reflection Section

# Release 8: Reflect
# On your own, add a commented reflection section to yourmy_solution.rb file. Answer the following questions in your reflection:
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The states are keys that are written as strings "Alabama", they could also be written as symbols like this: :Alabama
# What does require_relative do? How is it different from require?
  # It allows us to include (load) a related file so we can use it from our main program file. It differs from require in the way it works;
  # require allows you load files from other folder locations (not relative to the path we're currently on).
# What are some ways to iterate through a hash?
  # The are many ways to accomplish this. Most notably the .each method along with a key, value parameters. Another way would be to
  # use a while loop to access the hash key and values using an interator variable like 'i'.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The parameters had the same  name as the instance variables used.
# What concept did you most solidify in this challenge?
  # Accessing key values of a hash that contained another hash. Using capital letters for constants and making areas of the code
  # private.
