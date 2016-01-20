print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What's your middle name'? "
middle_name = gets.chomp
middle_name.capitalize!

puts "Hello #{first_name} #{middle_name} #{last_name}! How are you? "

print "What is your favorite number? "
fav_number = gets.chomp
print "Now let's make it BIGGER and BETTER! ANNNNND KABAM!!! #{fav_number +1}. Now this is a bigger and better number"
