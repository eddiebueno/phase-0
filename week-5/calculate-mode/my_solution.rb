# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) An array, usually single element but multiple if there is more than 1 mode
# What are the steps needed to solve the problem?
=begin

need to go through the array and check how many of that object occurs
possibly use a hash	

=end

# 1. Initial Solution

def mode array
	mode_array = Hash.new(0)
	array.each{ |i| mode_array[i] +=1}
	mode_array = mode_array.sort_by{|a,b| b}
	mode_array.reverse!
	return mode_array[0]
end


# 3. Refactored Solution
def mode array
	mode_array = Hash.new(0)
	array.each{ |integer| mode_array[integer] +=1}
	mode_array = mode_array.sort_by{|a,b| b}
	mode_array.reverse!
	final_array = [mode_array[0][0]]
	for i in 0... (mode_array.length - 1)
		if mode_array[0][1]== mode_array[i+1][1]
			final_array.push(mode_array[i+1][0])
		end
		i+=1
	end
	return final_array.sort
end



# 4. Reflection
=begin 

Which data structure did you and your pair decide to implement and why?
A hash. That way we can store how many times an object has been seen.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
A little. We knew the main idea but we did not put it into smaller parts.

What issues/successes did you run into when translating your pseudocode to code?
We did not have every little part therefore we just to work on one big problem.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .each, .sort_by, .reverse!, .push, .length, and .sort. We used .sort for our final solution in order to get the correct arra y [5,6] because we were getting [6,5]

=end