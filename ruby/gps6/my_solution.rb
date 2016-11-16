# Virus Predictor

# I worked on this challenge with: Charles Lim.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# require_realtive is used to bring a code from another file that you wrote.
# require is used bring in a code that someone else wrote. 

require_relative 'state_data'

class VirusPredictor
attr_reader :state, :population, :population_density

  #Initializing a new instance with state of origin, population density, population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
  #runs methods predicted deaths and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #based on population density and population, method will calculate the predicted deaths 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Predicts the speed of spread, assigns a different speed depending on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
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

STATE_DATA.each { |state, pop_data|
  puts state
  puts pop_data
  report = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  report.virus_effects
}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The state keys are strings ("Alabama") and they use a hashrocket to indicate what the value is. The keys inside the population data hash are symbols. They use syntactic sugar to write :population_density => 192328 as population_density: 192328 

# What does require_relative do? How is it different from require?
  # require_realtive is used to bring a code from another file that you wrote, regardless of whether it is in the same directory as the file you're requiring it in. require is used bring in a code that someone else wrote. 

# What are some ways to iterate through a hash?
  # You can iterate through a hash with .each, you can iterate over keys or values of hashes only (.each_key or .each_value)

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The methods were passing in arguments that were instance variables. The methods didn't need arguments because each instance already had the data (state, population, population density) when it was initialized.

# What concept did you most solidify in this challenge?
  # I learned more about scope regarding instance variables and got more practice using keys to call values of nested hashes.




