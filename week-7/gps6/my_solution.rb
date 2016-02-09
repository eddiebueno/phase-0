# Virus Predictor

# I worked on this challenge [by myself].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#require_relative 'state_data'
# require "./state_data.rb"

class VirusPredictor
  
  def self.generate_report
    STATE_DATA.each{ |key, value| new(key,value[:population_density],value[:population]).virus_effects}
  end

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# set all inputs as instance variables
  # 
  
  
  
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  # Calling other methods using the instance variables

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    
    
    if @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population * (@population_density / 50) * 0.1).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  # Correlation between population density and deaths
  # Check if population density is above a certain threshold, that will determine the number of deaths
  # for every 50 people 
  #   num_deaths = population * 0.1

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
  
  # Correlation between population density and deaths
  
  

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

VirusPredictor.generate_report


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# Pseudocode
# itterate over STATE_DATA by each key and their respective population and population density

# STATE_DATA.each{ |key, value| VirusPredictor.new(key,value[:population_density],value[:population]).virus_effects}



#=======================================================================
# Reflection Section

=begin
  

What are the differences between the two different hash syntaxes shown in the state_data file?
One uses a string as a key where as the other uses a symbol for the key. You have to use => when it is 
a string key though. It does look cleaner to use symbol: value for the hash but you may not always
have the opprotunity to use it.

What does require_relative do? How is it different from require?
Require relative essentially requires a file relative to the position of this file that this is in. It is different from
require because in require you would have to state where the other file is coming from so for instance even if the file you 
are looking for is in the same directory you would still have to write ./file.rb in order to require it.

What are some ways to iterate through a hash?
Some wasys to itterate through a hash is by using .each{ |key,value|} where you have two parameters, the key and value of the
hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables are instance variables so they did not need to be passed through the methods because the methods can already access
them to begin with.

What concept did you most solidify in this challenge?
I think refactoring was more solidified esspecially refactoring methods that have a reoccuring pattern.
  
=end