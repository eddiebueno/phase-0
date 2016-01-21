# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums.length == 0
  	return nil
  end
  var = list_of_nums[0]
  for i in 1...list_of_nums.length
  	if i == 1
  		var = list_of_nums[i-1]
  	elsif var > list_of_nums[i]
  		var = list_of_nums[i]
  	end
  	i+=1
  end
  return var
end