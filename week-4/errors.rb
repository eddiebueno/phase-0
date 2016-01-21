# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# Syntex Error
# 4. What additional information does the interpreter provide about this type of error?
# Expecting end
# 5. Where is the error in the code?
#  The error says it is at the end of the file looking for a keyword end. The actual error is on line 17. 
# 6. Why did the interpreter give you this error?
# There should be another end for the method on line 17.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# in <main>
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method
# 4. Where is the error in the code?
# where south_park is.
# 5. Why did the interpreter give you this error?
# south_park is just typed there. There is no assignment for this variable and there is no defined method called that either.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# in <main>
# 3. What additional information does the interpreter provide about this type of error?
# undefined method
# 4. Where is the error in the code?
# it is located where it says cartman()
# 5. Why did the interpreter give you this error?
# There is this error because there is no defined method called cartman. Ruby tried calling the method but since there is no method it gave an error.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments 1 for 0 in cartmans_phrase
# 4. Where is the error in the code?
# the error is line 69 where there is an input for the method cartmans_phrase
# 5. Why did the interpreter give you this error?
# the method cartmans_phrase does not accept arguments, therfore when an argument was put into the method the method didn't know how to react and gave an error

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments 0 for 1
# 4. Where is the error in the code?
# the error is on line 88
# 5. Why did the interpreter give you this error?
# this is exactly like the last error except this method takes an argument and was not given one to compute. Therefore there was an error



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 105
# 2. What is the type of error message?
#arguement error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments 1 for 2
# 4. Where is the error in the code?
# the error is on line 109
# 5. Why did the interpreter give you this error?
# The method cartmans_lie accepts 2 arguments. Calling on the method with only one argument cause this error.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# Type error 
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into fixum
# 4. Where is the error in the code?
# the error is after the *
# 5. Why did the interpreter give you this error?
# This error happened because it is trying to multiply 5 with a string. Since it is of the String class, it does not behave like a number and does not have properties that allow it work like a number. Thus prompting the error.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# zero division error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# the error is /0
# 5. Why did the interpreter give you this error?
# Like in math you can not divide by zero. This catches this case and prevents it from calculating. 

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# Load error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# It is after require_relative because there is no file called cartmans_essay in this directory. Therefore when it tries to look it up it gives an error
# 5. Why did the interpreter give you this error?
# There is no file named that that exists. Therefore require relative just gives an error message.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# None were really that hard to read. The first one pobably was the trickiest since it said the error was at the bottom of the file.
# How did you figure out what the issue with the error was?
# Well since the error was in the code provided I figred it had to do something with the code given to us.
# Were you able to determine why each error message happened based on the code? 
# I was able to figure alll of it out.
# When you encounter errors in your future code, what process will you follow to help you debug?
# The processes I should go through are looking at the numberline at which the error occurs. See what around that part is wrong first. Though that is not always the case like in the first example. After that I will look at the error code and see what it is telling me. 
# From there I will work it out to see if there are any errors. Before any of this it is also a good idea to come up examples of code that should work so I can test my code.