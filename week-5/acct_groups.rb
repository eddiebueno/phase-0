# 5.6 


names = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]
# Pseudocode
# def grouper (array)
#	find number of groups that everyone can be in groups of at least 3
# 	iterate over names to place in groups
# 	return new groups


# Intial Solution
def grouper (array)
	num_groups = array.length / 3
	new_array = array.each_slice(3)
	if new_array[-1].length != 3
		new_array[-2].push(new_array[-1])
		new_array.chop
	end
	return new_array
end


# Refactor Solution
def grouper (names)
	new_array = names.each_slice(3).to_a
	if new_array[-1].length != 3
		new_array[-2].push(new_array[-1])
		new_array.chop
	end
	return new_array
end

# Driver Code
print "Hello"
group =grouper(names)
group.length # to see the initial size
names.length # to see if the size is different
group[-1] # to check if the last group is 3 or more in length

# Reflection
=begin
	
What was the most interesting and most difficult part of this challenge?
The most interesting parrt was making sure everyone was in a group of at least 3. The hardest part was making sure that no one was left behind.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I feel like my pseudo code could improve but I feel like most people's can

Was your approach for automating this task a good solution? What could have made it even better?
My initial approach did help but I only made it better by looking up some methods that I found on the ruby doc.

What data structure did you decide to store the accountability groups in and why?
I used arrays that wasy I can easily access them and store them right away. I can also look at their lengths if I need to.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned that I can always make things easier to read. I learned about the_slice and the to_a methods 
which basically puts everything in groups of three and with out having to make sure it is an array because I just use to_a

	
end
=end
