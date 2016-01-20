
What does puts do?
Puts writes onto the screen whatever you input after it. It returns nil and prints the output to the console with a new line.

What is an integer? What is a float?
An integer is a number without decimal points. A float is a number with decimal points and are usually called floating-point numbers.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float store floating-point values whereas interger only stores integral values, that is, whole numbers. Both use 32 bits but how they use the bits are different. The float uses part of the bits to represent an exponent whereas an integer uses all the bits for whole numbers.


```ruby
print "Type the amount of years and I will calculate the amount of hours in said amount of years: "
years=gets.chomp.to_i
hours=years*365*24
puts "there are #{hours} hours in #{years} years"

print "Want to know how many minutes there are in a decade? "
answer=gets.chomp
if answer.upcase.eql?("YES")
	puts "There are #{10*365*24*60} minutes in a decade."
else
	puts "Alright then, your loss."
end
```