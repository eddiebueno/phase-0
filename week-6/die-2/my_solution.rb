# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of  labels
# Output: for sides, the sides or length of labels; for roll a random label provided
# Steps:
# Raise error if labels is not an array or if it is an empty array
# Set sides to the length of labels
# Sides returns the number of sides
# Roll random selects a label to return


# Initial Solution

# class Die
#   def initialize(labels)
#   	raise ArguementError.new('There were no labels') if labels == [] || labels.kind_of?(Array) == false
#   	@side = labels.length
#   	@labels = labels
#   end

#   def sides
#   	return @sides
#   end

#   def roll
#   	return @labels.sample
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Empty Array") if labels == []
  	@labels = labels 
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  end
end







# Reflection
=begin
	

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference is that instead of the number of sides given, it gives us what the sides are to be. Not much change was needed
I only had to alter code so that it was able to use the labels instead of the side number.

What does this exercise teach you about making code that is easily changeable or modifiable? 
You can see a difference when the slightest change is neccessary. It could mess up your code and make it not work.

What new methods did you learn when working on this challenge, if any?
I learned about the .sample which gets a sample from an array almost like a random method.

What concepts about classes were you able to solidify in this challenge?
I solidified arguments as well as instance variables.



	
=end