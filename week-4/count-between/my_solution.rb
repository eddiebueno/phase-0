# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
  num = 0
  if list_of_integers.length == 0
  	return 0
  end
  for i in 1 .. list_of_integers.length
  	if list_of_integers[i-1] >= lower_bound && list_of_integers[i-1]<= upper_bound
  		num+=1
  	end
  	i+=1
  end
  return num
end