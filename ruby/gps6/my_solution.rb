# Virus Predictor

# I worked on this challenge [by myself, with: Seth ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Includes another file inside code with respect to its relative location
#
require_relative 'state_data'

class VirusPredictor
  def self.national_report

    #input: state, population density, population
    #output: predicted deaths and speed of spread methods
    
    # Iterate thorugh state hash and iterate again through its value of state_data.
    # Create object with new information
    # Call virus_effects method on that object 
    
    STATE_DATA.each do |state, value|
      population_density = value[:population_density]
      population = value[:population]

      us_state = self.new(state, population_density, population)
      us_state.virus_effects
    end

  end


  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths_and_spread
  end

  private

  def predicted_deaths_and_spread
   # predicted deaths is solely based on population density
   speed = 0.0
   if @population_density >= 200
     number_of_deaths = (@population * 0.4).floor
     speed += 0.5
   elsif @population_density >= 150
     number_of_deaths = (@population * 0.3).floor
     speed += 1
   elsif @population_density >= 100
     number_of_deaths = (@population * 0.2).floor
     speed += 1.5
   elsif @population_density >= 50
     number_of_deaths = (@population * 0.1).floor
     speed += 2
   else
     number_of_deaths = (@population * 0.05).floor
     speed += 2.5
   end    
   print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
 end

  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

  # def speed_of_spread #in months
  #   # We are still perfecting our formula here. The speed is also affected
  #   # by additional factors we haven't added into this functionality.
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n"

  # end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

VirusPredictor.national_report

#=======================================================================
# # Reflection Section
# The larger hash uses hash rockets to assign hashes to strings and values assigned to symbol keys.
# require relative is the link to another file by using a relative path
# Each method iterates through hash as well as a for or do loop
# Instance variable of virus_effects are not needed as parameters to call other methods in the same class
# Using class methods helped me understand another aspect of working with classes