# Pad an Array

# I worked on this challenge [ with: Andria Reta ]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array, Integer, and Optional Value that can be anything

# What is the output? (i.e. What should the code return?)
# An array. The same one for destructive and a new array for non-destructive

# What are the steps needed to solve the problem?
# def method (array, min_size, value)
# 	if array.length < min_size
#		array padded to min_size length using value
# 	else
#		return array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length < min_size
  	for i in 1 .. (min_size - array.length)
  		array.push(value)
  		i+=1
  	end
  	return array
  else
  	return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = Array.new(array)
  if array.length < min_size
  	for i in 1 .. (min_size - array.length)
  		new_array.push(value)
  		i+=1
  	end
  	return new_array
  else
  	return new_array
  end
end


# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = Array.new(array)
  return pad!(new_array,min_size,value)
end	


# 4. Reflection

#Were you successful in breaking the problem down into small steps?
# Yes we were able to break it down into two separte parts

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#We were easily able to translate it to code for pad! but we had a little dificulties with pad

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our initial solution was successful because we where able to account for each rule we needed to follow

#When you refactored, did you find any existing methods in Ruby to clean up your code?
# When we were looking to fix our inital solution we found Array.new in order to create a new array. Before we just had new_array = array but it ended up being destructive

#How readable is your solution? Did you and your pair choose descriptive variable names?
# We had descriptive variables and I think our code is readable. It is fairly simple and we ended up using the same code for pad! in our pad but just chanin the array input to a new array

#What is the difference between destructive and non-destructive methods in your own words?
# Destructive is destroying the original arguements that are provided, whereas non-destructive creates a new object not associated with the original and messes with the new object and not the original
