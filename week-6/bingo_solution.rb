# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline 
  # Create array of letters BINGO and then call array.sample,
  # Numbers.rand(1..100)

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  attr_accessor :bingo_board
  attr_accessor :number 

  def initialize(board)
    @bingo_board = board
    @number =''
  end

  def call ()
    bingo = ['B','I','N','G','O']
    letter = bingo.sample
    number = 0
    rand_number = Random.new
    number = rand_number.rand(1..100)
    @number = letter + number.to_s
    p @number
  end

  def check
    # [0] is B ;[1] is I ;[2] is N ;[3] is G ;and [4] is O
    l =0
    letter = @number[0]

    if letter == 'B'
      l = 0
    elsif letter == 'I'
      l = 1
    elsif letter == 'N'
      l = 2
    elsif letter == 'G'
      l = 3
    elsif letter == 'O'
      l = 4
    end

    for i in 0..4
      if @bingo_board[i][l] == @number[1..-1].to_i
        @bingo_board[i][l] = 'X'
      end
      i+=1
     end
    p @bingo_board
  end

end


# Refactored Solution
class BingoBoard


  def initialize(board)
    @bingo_board = board
    @number =''
  end

  def call
    bingo = ['B','I','N','G','O']
    letter = bingo.sample
    number = 0
    rand_number = Random.new
    number = rand_number.rand(1..100)
    @number = letter + number.to_s
    p @number
  end

  def check (force_number = '')
    # I added a force number to check numbers that I can input manually to
    # check that my board was printing out correctly
    # [0] is B ;[1] is I ;[2] is N ;[3] is G ;and [4] is O
    letter_index =0
    letter = @number[0]
    if force_number != ''
      letter = force_number[0]  
      @number = force_number
    end
    p letter 
    p @number

    if letter == 'B'
      letter_index = 0
    elsif letter == 'I'
      letter_index = 1
    elsif letter == 'N'
      letter_index = 2
    elsif letter == 'G'
      letter_index = 3
    elsif letter == 'O'
      letter_index = 4
    end

    for i in 0..4
      if @bingo_board[i][letter_index] == @number[1..-1].to_i
        @bingo_board[i][letter_index] = 'X'
      end
      i+=1
     end
    return self.return_board
  end

  def return_board
    p @bingo_board[0] 
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end


end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.check('B47')
new_game.check('B22')
new_game.check('B83')
new_game.check('B75')
new_game.check('B25')
p "It's a BINGO!"


#Reflection
=begin
   
 
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It was a little difficult to pseudocode this challenge. I think my style coud be improved but so far it is ok with what I am doing.

What are the benefits of using a class for this challenge?
The benefits for using a class is that you can make as many methods as you want to check or call your bingo game on your board

How can you access coordinates in a nested array?
You access them like a regular array. Say board[0] is the first row so I treat it like an array. So if I want to access any element in the
first row I would always have board[0][i] and i for any index for that row.

What methods did you use to access and modify the array?
I did not use any methods to access the array. I used the indexes given to us. I had made a gian if statement in all the cases of what the first letter is going to be.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
One method I learned in the Ruby Docs is .rand for a Random class. It essentially takes a random number from the minand max value you give it. It can only be called on a Random object
that is that it is from the Random class, thus the reason why I had to set a variable to Random.new first.

How did you determine what should be an instance variable versus a local variable?
Well I could have used a class variable but I decided to make everything an instance variable just so I can keep track of one game of bingo at a time. If I modified it so that there can be multiple bingo
games at once then I might have to use some class variabels, but for the sake of the game given to us right now instance variables will do.

What do you feel is most improved in your refactored solution?
I think that in my refactored solution the bingo game actually looks better. Sinec I used p on each board index it came out looking like a bingo board which I think is pretty neat.

   
=end



