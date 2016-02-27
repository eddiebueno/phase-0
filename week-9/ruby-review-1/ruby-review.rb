# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    #your code here
    @first_name = args
    @scores = [100,100,100,0,100]
  end

  def average
  	sum = 0
  	scores.each{|value| sum+=value}
  	return sum / scores.length
  end

  def letter_grade
  	if self.average < 60
  		return "F"
  	elsif self.average < 70 
  		return "D"
  	elsif self.average < 80
  		return "C"
  	elsif self.average < 90
  		return "B"
  	else
  		return "A"
  	end
  end
end

def linear_search(array, name)
	for i in 0..array.length
		if name == array[i].first_name
			return i
		end
	end
end


students = [Student.new("Alex"),Student.new("Ron"),Student.new("Kathy"),Student.new("Patty"),Student.new("Eva")]


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection
=begin
	
What concepts did you review in this challenge?
How to define methods and classes.

What is still confusing to you about Ruby?
Nothing so far. Just need to rememeber syntax.

What are you going to study to get more prepared for Phase 1?
I am going to study the the Ruby site and look over all the things I need to do.

	
=end