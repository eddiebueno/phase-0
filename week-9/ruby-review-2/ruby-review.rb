# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Need to check 

# Initial Solution

def is_fibonacci?(num)
	current =0
	before =0
	return true if current == num || num == 0
  	return false if current > num
  	is_fibonacci?(num)
end



# Refactored Solution
def is_fibonacci?(num, current =1, before = 0)
  return true if current == i || i == 0
  return false if current > i
  is_fibonacci?(i, current + before, current)
end





# Reflection