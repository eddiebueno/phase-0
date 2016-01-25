# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [ with: Kenton Lin].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
 
# iterate over array
#   add each element
# return total

# Input: Array
# Output: Integer
# Steps to solve the problem.


# 1. total initial solution
def total(array)
  total =0
  for i in 0...array.length
    total = total + array[i]
    i+=1
  end
  return total
end


# 3. total refactored solution
# same as above


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: String
# Steps to solve the problem.

#iterate through string of the array
#add each string together
#return final string

# 5. sentence_maker initial solution
#def sentence_maker(array) 
# total =''
# for i in 0...array.length
#   total = total + array[i]
#   i+=1
# end 
# return total
#end


# 6. sentence_maker refactored solution

def sentence_maker(array)
  #iterate through string of the array
  #add each string together
  #return final string 
  total =''
  for i in 0...array.length
    if i == 0 
      total << (array[i].to_s.capitalize + ' ')
    elsif i == (array.length - 1)
      total << (array[i].to_s)
      total << ('.')
    else
      total << (array[i].to_s)
      total << (' ')
    end
    i+=1
  end 
  return total
end     