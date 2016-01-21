# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!
  if list_of_words.length == 0
  	return nil
  end
  var = list_of_words[0]
  for i in 1 ... list_of_words.length
  	if i == list_of_words.length
  		return var
  	elsif  var.length < list_of_words[i].length
  		var = list_of_words[i]
  	end
  	i+=1
  end
  return var
end