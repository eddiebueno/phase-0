# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.map.grep(/#{thing_to_find}/)
end

def my_hash_finding_method(source, thing_to_find)
  if source.has_value?(thing_to_find)
    source.map.select{|key,value| value == thing_to_find}.flatten.reject!{|x| x.is_a? Integer}
  end
end

# => For the first challenge, I tried to keep it as simple as possible and only used map and grep. I used map because it permanently changes the array as it iterates through. I wanted the array to only include elements that contain the passed in variable. I used grep to actually find the elements that contain the variable. I had to use #{} to surround things_to_find because the program had no way to know if that was the variable name or that I wanted to find elements that actually include the string thing_to_find.

# => For the second challenege, I used .map, .select, .flatten, .reject!, and .is_a?. Select was to create an array that only includes the key/value pairs that match what I was looking for. Flatten made the arrays one dimensional, and reject removed the numbers from the array once I had the keys I was looking for.

#I honestly relied more on chapter 10 in our textbook than Ruby Docs, but I did my best to look through the enumerables listed there.

# Person 2
def my_array_modification_method!(array, int)
  array.map!{|element| element.is_a?(Integer) ? element + 1 : element}
end

my_array_modification_method!(i_want_pets, 1)


my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
  "Annabelle" => 0, "Ditto" => 3}

def my_hash_modification_method!(hash)
  hash.map!{ |name, age| age += 2 }
end

my_hash_modification_method!(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  #source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
  new_array = Array.new(source.sort_by(&:to_s))
  return new_array
end

def my_hash_sorting_method(source)
   #source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
new_array = Array.new(source.sort_by {|a| a[1]})
return new_array

end

# Identify and describe the Ruby method(s) you implemented.
# The my_array_sorting_method sorts the array as if each element were a string which is what &:to_s is doing
# The my_hash_sorting_method sorts the hash based on the value of the key so that is why I said |a| a[1] because when it is
# sorted it will be put into arrays that have a key and it's value. The value is at index 1 so that is why it is a[1] because 
# we are sorting by age rather than by the name.


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|x| x.to_s.include?(thing_to_delete.to_s)}

end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|x, y| x.to_s.include?(thing_to_delete.to_s)}
end


# Identify and describe the Ruby method(s) you implemented.
# The ruby method used in my solution was "delete_if". As the name suggests, this method deletes from the array if the criteria it met. In the case of this example, we tell it to delete the item if item x includes thing_to_delete.
# Along with delete_if, we also have delete, and delete at. These would give us the ability to delete from an array if we know the exact string, or the exact position.
#


# Person 5

=begin
PSEUDOCODE
ARRAY SPLITTING
Input: Array
Output:New Array with two arrays - one with strings and other with integers
We will iterate through each value in the array. If it is an integer, we will push it to the first array. If it is a string, we will push it to the second array.
HASH SPLITTING
Input: hash
=end

def my_array_splitting_method(array)
  return [array.select {|item| item.is_a? Integer},array.select {|item| item.is_a? String}]
end

def my_hash_splitting_method(hash, age=4)
  return [(hash.select {|x| hash[x] <= age}).to_a,(hash.select {|x| hash[x] > age}).to_a]
end


print my_hash_splitting_method(my_family_pets_ages)

=begin
# Identify and describe the Ruby method(s) you implemented.
.find_all - Find all is a lot like select, except it does not work as expected with hashes. That was a huge surprise. find_all returns a new collection containing elements of the original colelction tha tmatch the criteria in the find block. I need to do more research on this method and how it works with hashes.
.select - iterates through the values in an array and only selects the items who meet the given conditions.
.is_a? - This is unrelated to enumerables, but I forgot it existed! It is super handy. You can check which type an object is (ex: x.is_a? Integer). According to the Ruby Docs, you can even compare it to other variables, without listing a specific type. (ex: x.is_a? y)
# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
I have two methods.
The first takes an array and sorts the array in to a new array of separate arrays. The array[0] contains an array of integers. Array[1] contains an array of strings. If there are no strings or integers in the array, the method returns [[][]]. Any additional values (arrays, booleans, etc.) in the original array are not included in output.
The second method takes a hash and an integer. It uses the integer to sort the hash, returning an array of two hashes. Array[0] contains a hash of keys with values all less than or equal to the integer argument sent through the method. Array[1] contains all other values in the array (values greater than the integer argument). If there is no number argument sent to the array, the number defaults to 4.
# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
I learned so much about enumerables in this assignment. When explaining my methods to others, I actually realized I had a big flaw in one of them. When explaining my research to others, I was able to reflect on some of the different methods I tried and failed! Great way to learn.
=end

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#