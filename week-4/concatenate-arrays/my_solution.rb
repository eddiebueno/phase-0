# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  #This is the easy way that does not use iteration
  #array = array_1 + array_2
  #return array
  array=Array.new
  for i in 1..array_1.length
  	array[i-1]=array_1[i-1]
  	i+=1
  	print(array)
  end
  for j in 1..array_2.length
  	array[array_1.length+j-1] = array_2[j-1]
  	j+=1
  end
  return array
end