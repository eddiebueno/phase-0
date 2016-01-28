# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

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
				str.insert -(i+1+commas), ','
				# the + 1 is to account for the index counting backwards
				commas+=1
			end
			i+=1
		end
		return str
	end
end



# 2. Refactored Solution





# 3. Reflection

#What was your process for breaking the problem down? What different approaches did you consider?


#Was your pseudocode effective in helping you build a successful initial solution?


#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?


#How did you initially iterate through the data structure?


#Do you feel your refactored solution is more readable than your initial solution? Why?

