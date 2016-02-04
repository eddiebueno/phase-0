# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Phil Barnett ].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: credit card number (16 digit integer)
# Output: true or false of whether the credit card matches or not
# Steps:
#Create a class credit card
#convert to string
#split the integer and put into an array
#convert the convert the contents of the array back into an integer
#loop starting from the end of the array and have it double every other number by only doing it when i % -2 = 0
#do each method on the new array that does if the length of the number is 2 convert to string, split it, then add strings and convert back to integer.
#then add all the numbers in the array
#lastly see if the number is divisible by 10


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
	def initialize(number)
		raise ArgumentError.new('Not enough digits') if number.to_s.length != 16
		@number = number
	end

	def check_card
		new_array = @number.to_s.split('')
		new_array.map!{|x| x.to_i}
		i = -1
		while i >= -new_array.length
			if i % 2 == 0
				new_array[i] *= 2
			end
			i -= 1
		end
		new_array.map!{|x| x.to_s}
		new_array.map! do |y|
			if y.length == 2
				y.split('')
			else
				y
			end
		end
		new_array.flatten!
		sum = 0
		new_array.each{ |a| sum+=a.to_i}
		if sum % 10 == 0
			p true
		else
			p false
		end
	end

end


# Refactored Solution

class CreditCard
	def initialize(number)
		raise ArgumentError.new('Not enough digits') if number.to_s.length != 16
		@number = number
	end

	def check_card
		new_array = @number.to_s.split('')
		new_array.map!{|x| x.to_i}
		i = -1
		while i >= -new_array.length
			new_array[i] *= 2 if i % 2 == 0
			i -= 1
		end
		new_array.map!{|x| x.to_s}
		new_array.map! do |y|
			if y.length == 2
				y.split('')
			else
				y
			end
		end
		new_array.flatten!
		sum = 0
		new_array.each{ |a| sum+=a.to_i}
		p sum % 10 == 0
	end

end







# Reflection