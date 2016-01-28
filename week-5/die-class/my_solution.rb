# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Integer
# Output: Integer
# Steps:
# The input needs to be the number of sides
# The output depends on which method is called:
# If sides was called then the input is returned
# If roll is called then get a random number between 1 and input


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    if sides < 1 
    	raise ArgumentError.new("Error")
    end
    @sides = sides
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(1..@sides)
  end
end



# 3. Refactored Solution
class Die
  def initialize(sides)
    # code goes here
    if sides < 1 
    	raise ArgumentError.new("Cannot have die with less than 1 side")
    end
    @sides = sides
  end

  def sides
    # code goes here
    return @sides
  end

  def roll
    # code goes here
    return rand(1..@sides)
  end
end






# 4. Reflection

=begin
	

What is an ArgumentError and why would you use one?
An argumentError is a message you can implement in order to tell the user that there is an error.
It is a made error to check for specific errors that can occur.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used the rand method. I had the issue of getting a random number that included 0. When I looked more into it
I found out that I can set a range for the random numbers.

What is a Ruby class?
It is a first-class object. It is essentially the main object that classifying certain methods.

Why would you use a Ruby class?
You would use a class in order to create objects that follow a certain 

What is the difference between a local variable and an instance variable?
A local variable is only accessible in the current workspace that it is made where as an instance
variable can be used in the class. Any methods in the class can use these methods.

Where can an instance variable be used?
An instance variable can be used in any methods that are created in the class. It can be accessed throughout all and any method
	
=end


