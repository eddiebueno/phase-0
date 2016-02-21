# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
	
To begin we need 3 methods and 2 instance variables.
	the instances are the flavors and the count.
	The methods are to see all pez, add pez, and get pez
	add pez adds one to the flavors
	get pez removes the last pez added
	see all pez returns flavors
	
=end


# Initial Solution

# class PezDispenser

# # your code here!

# 	def new(flavors)
# 		@flavors = flavors
# 		@pez_count = flavors.length
# 	end

# 	def see_all_pez
# 		return @flavors
# 	end

# 	def add_pez(pez)
# 		@flavors.push(pez)
# 	end

# 	def get_pez
# 		return @flavors.pop
# 	end


# end



# Refactored Solution

class PezDispenser

	def initialize(flavors)
		@flavors = flavors
	end
	
	def pez_count
	    return @flavors.length
	end

	def see_all_pez
		return @flavors
	end

	def add_pez(pez)
		@flavors.push(pez)
	end

	def get_pez
		return @flavors.pop
	end

end





# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
=begin
	

What concepts did you review or learn in this challenge?
I reviewed how classes work. I reviewed on syntax and how to initialize a class.
I also learned that an instance variable does not change if it is referencing something,
so I had to change one of mine to a method instead.

What is still confusing to you about Ruby?
Not too much is confusing, I just ned to refresh every so often so I don't end up forgeting and
so I don't have to keep looking up all the syntax

What are you going to study to get more prepared for Phase 1?
I am going to study more the syntax. The concepts I already understand.
	
=end