
What does puts do?
Puts writes onto the screen whatever you input after it. It returns nil and prints the output to the console with a new line.

What is an integer? What is a float?
An integer is a number without decimal points. A float is a number with decimal points and are usually called floating-point numbers.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division is division that ends up with a float leading to decimal places being used. While integer division no matter what the division it will always end up as an ineger. I would explain it with an example. Integer division: 3/2 = 1 Float division: 3/2 = 1.5




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


How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Runy handles these with the use of these symbols
+ : addition
- : subtraction
* : multiplication
/ : division 
% : modulus (meaning to find the remainder of dividing numbers)

What is the difference between integers and floats?
Integers are numbers without decimal values. Floats are numbers with decimal places. 1 is an integer. 1.0 is a float. They equal the same value but they do not equal each other because they are not the same charcters.

What is the difference between integer and float division?
Integer division gives you an integer where that integer is rounded down. Float division gives you a more accurate division betweent he numbers. For example integer division would give you 4/3 = 1 where as float would give you 4/3 = 1.3333333

What are strings? Why and when would you use them?
Strings are characters that are placed in quotation marks. If you use quotes anything inside will be asigned a string value. This is saying that the bytes used to store those values you have inputed will be saved as those characters and will just be under the string class.

What are local variables? Why and when would you use them?
Local variables are variables that are made in the local workframe. You would use them if you need to manipulate some kind of data or if you need to keep track of what it is you are calculating.

How was this challenge? Did you get a good review of some of the basics?
This challenge was not that bad. It was a good review of the basics. It is hard to remember syntax and this really helped remind me of all that I need to know.
