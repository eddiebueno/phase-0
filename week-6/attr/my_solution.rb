#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: Nothing
# Output: A greeting
# Steps: Make Namedata
# Make Greetings
# Make sure greetings can access the name in NameData

class NameData
	attr_accessor :name
	def initialize
		@name = "Student"
	end
end


class Greetings
	attr_accessor :namedata
	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello #{@namedata.name}! How wonderful to see you today."
	end
end

# Reflection

=begin
	
Release 1
What are these methods doing?
We have 2 different types of methods in release 1. We have readers which are what_is_age/name/occupation
and we have writer which are change_my_age/name/occupation=. The readers are just saying the attribute while
the writers change the attribute itself. 

How are they modifying or returning the value of instance variables?
Like I said before they change the value using the writer then return it using the reader.


Release 2

What changed between the last release and this release?
In release 2 attr_reader: :age was added and the method what_is_age was removed

What was replaced?
The method what_is_age was replaced with attr_reader: :age

Is this code simpler than the last?
Yes it is simpler because we do not have to write unneccessary methods.


Release 3

What changed between the last release and this release?
In release 2 attr_writer: :age was added and the method change_my_age was removed

What was replaced?
The method change_my_name was replaces with attr_writer :age

Is this code simpler than the last?
Yes again there are no unneccessary methods for the age



Release 6

What is a reader method?
A reader method just outputs an object usually an instance variable

What is a writer method?
A writer method changes an instance variable

What do the attr methods do for you?
Attr methods make it so you do not have to make reader/writer methods for your instance variables

Should you always use an accessor to cover your bases? Why or why not?
You shouldn't have to use an accessor all the time. If you just want something that is readable you can just use
a reader and if you just want something that is changeable you would use a writer. However if you want to do both you might as well
use an accessor

What is confusing to you about these methods?
There isn't much confusing. I still don't understand why we need to always put the attributing line and why it is not always accessing for instance variables
	
=end