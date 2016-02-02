# Your Names
# 1)Bethelhem Assefa
# 2) Eddie Bueno

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

#  Reflactored Solution
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  # raises error if item to make is not valid
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false
  
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else 
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
  end
   
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#Reflection

=begin
  
What did you learn about making code readable by working on this challenge?
I learned that there many ways to make code more readable. Specifically I learned if you have just an if statement you can just put it to one line of code as shown above.

Did you learn any new methods? What did you learn about them?
I learned the .has_key? method which returns true if the key given is in the hash

What did you learn about accessing data in hashes? 
I learned that you can just access a hash just by the key

What concepts were solidified when working through this challenge?
My concepts of if statments as well as how to make things shorter and more readable were solidified.

=end