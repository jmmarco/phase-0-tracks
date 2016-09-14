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
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Uses formula to determine speed rate of the spread and prints statement
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

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
  VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects
end


#=======================================================================
# Reflection Section