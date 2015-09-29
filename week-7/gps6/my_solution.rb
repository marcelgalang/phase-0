# Virus Predictor

# I worked on this challenge [by myself ].
# I spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#refers to needing the other file.  require_relative is  a relative path vs require that needs the whole path to find the file
#
# require_relative 'state_data'

# class VirusPredictor

#   def initialize(state_of_origin, population_density, population)
#     #initialize the instance variables
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   def virus_effects
#     #
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density)

#   end

#   private

#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state


# # alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# # alabama.virus_effects

# # jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# # jersey.virus_effects

# # california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# # california.virus_effects

# # alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# # alaska.virus_effects



# STATE_DATA.each do |state, data|
#   current_state = VirusPredictor.new(state, data[:population_density], data[:population])
#   current_state.virus_effects
# end

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    #initialize the instance variables
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    #
    predicted_deaths
    speed_of_spread

  end

  private

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

  def speed_of_spread

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
STATE_DATA.each do |state, data|
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end
#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The use of hash rockets, strings and symbols.  They require different syntax to call.
What does require_relative do? How is it different from require?
require_relative is a relative path to the other file required and does not need the whole path to get the file.  It is a file that should be stored locally.
What are some ways to iterate through a hash?
#each, #collect if you want just recall a value or key from a hash and #map if you want to modify something.
When refactoring virus_effects, what stood out to you about the variables, if anything?
They were all instance variables so they were not actually required arguments for the methods.
What concept did you most solidify in this challenge?
Accessing a nested hash.


=end