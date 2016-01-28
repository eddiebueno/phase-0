# Numbers to Commas Solo Challenge

# I spent [1] hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Integer
# What is the output? (i.e. What should the code return?) a string of the integer with commas
# What are the steps needed to solve the problem?

# First need to convert to a string
# Then check if there is 4 characters
# If there are less just return the string
# else place a comma after every three from the right
# Since I am adding a comma, I have to take that into account as well
# So when I index to add a comma I have to add 1 for each comma to that index


# 1. Initial Solution
def separate_comma(int)
	str = int.to_s
	if str.length <= 3
		return str
	else
		commas = 0 
		for i in 1... str.length
			if i%3 ==0
				str.insert -(i+commas), ','
				commas+=1
			end
			i+=1
		end
		return str
	end
end



# 2. Refactored Solution
def separate_comma(int)
	new_string = int.to_s
	if new_string.length > 3
		added_commas = 0 
		for i in 1... new_string.length
			if i%3 ==0
				new_string.insert -(i+1+added_commas), ','
				# the + 1 is to account for the index counting backwards
				commas+=1
			end
			i+=1
		end
	end
	return new_string
end




# 3. Reflection
=begin
#What was your process for breaking the problem down? What different approaches did you consider?
I figured I would need to add a comma after every 3 from the right.
So i though I should iterate and then after three indexes I would inserta a comma
I also took into account that if it is less then 4 numbers.

#Was your pseudocode effective in helping you build a successful initial solution?
It was to some extent but then i still had issues figuring out where to put the comma as well as when I did
put the first comma how to put the next one in the right place

#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I used the .insert method in order to add to a string

#How did you initially iterate through the data structure?
I iterated through a for loop going from the end to the begining

#Do you feel your refactored solution is more readable than your initial solution? Why?
I feel like my solution is still complicated but it definitely is more readable thanmy first one
=end
