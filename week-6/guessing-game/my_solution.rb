# Build a simple guessing game


# I worked on this challenge [with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: Boolean or symbol
# Steps:
# 

# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @low = :low
    @high = :high
    @correct = :correct
    @guess = 0
  end

  def guess(guess)
  	@guess = guess
  	case @guess
  	when @guess == @answer
  		return @correct
  	when @guess < @answer
  		return @low
  	when @guess > @answer
  		return @high
  	end
  end

  def solved?
  	true if @guess == @answer
  	false
  end
  # Make sure you define the other required methods, too
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @guess = nil
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
  	else 
  		return :high
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end
end



# Reflection

=begin
	

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Methods describe what it is supposed to describe. Instance variables literally are descriptions of an object.

When should you use instance variables? What do they do for you?
You should use an instance variable when you want to use it over multiple methods or when it can be used over all or some of the methods.
They store specific information that you put.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
You use flow control in order to work out each part of a problem. I did not really have a probelm with it during this problem.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I think we had to return symbols in order to save memory. I think the way ruby allocates memory it is better to use symbols. The benefit of using symbols is to save space.

	
=end