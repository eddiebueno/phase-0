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
