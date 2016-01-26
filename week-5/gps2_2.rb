# Method to create a list
# input: none
# output: empty hash
def create_list
	{}
end

# Method to add an item to a list
# input: list, item, quantity
# steps:
# output: value

def add_to_list(list,item,quantity)
	update_item(list,item,quantity)
end


# Method to remove an item from the list
# input: list item 
# steps:
# output: value

def remove_item(list,item)
	list.delete(item)
end



# Method to update the quantity of an item
# input: list, item, new value of item
# steps:
# output:value
def update_item (list,item,quantity)
	list[item] = quantity
end

# Method to print a list and make it look pretty
# input: list
# steps: print the list
# output: list

def display (list)
	puts list
end

list = create_list
add_to_list(list,'Lemonade',2)
add_to_list(list,'Tomatoes',3)
add_to_list(list,'Onions',1)
add_to_list(list,'Ice Cream',4)
remove_item(list,'Lemonade')
update_item(list,'Ice Cream',1)
display(list)



# What did you learn about pseudocode from working on this challenge?
#pseucode can help if you are struggling with a problem. However some of these were simple enough where pseudocode was not neccessary

# What are the tradeoffs of using Arrays and Hashes for this challenge?
#The trade offs of using a hash for this challenge is that there is only one key so it makes it easier to access the item we are looking for. For an array we can store multiple values for a keyword.

# What does a method return?
# It returns anything that is said on a return line. If there is no return then it will implicitly return the last line of code.

# What kind of things can you pass into methods as arguments?
#You can pass anything, any oject whether it be string, integer, array, or hash, or you can even have a method as your arguement.

# How can you pass information between methods?
#You can pass information between methods by using a global variable. With that the gobal variable can be accessed by all the methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I have a better understanding of methods and refactoring. For now I think I am good and not confused by too many things.
