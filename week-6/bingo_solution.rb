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

  def call_a_number
    bingo = ['B','I','N','G','O']
    letter = bingo.sample
    rand_number = Random.new(1..100)
    @number = letter + rand_number.to_s
    return @number
  end

  def check_letter (letter)
    local_letter =0
    case letter
    when letter == 'B'
      local_letter = 0
    when letter == 'I'
      local_letter = 1
    when letter == 'N'
      local_letter = 2
    when letter == 'G'
      local_letter = 3
    when letter == 'O'
      local_letter = 4
    end

    for i in 0..4
      if @bingo_board[i][0] == @number[1..-1].to_i
        @bingo_board[i][0] = 'X'
      end
      i+=1
     end

# [0] is B ;[1] is I ;[2] is N ;[3] is G ;and [4] is O
  def check_number
    if @number[0] == 'B'
      for i in 0..4
        if @bingo_board[i][0] == @number[1..-1].to_i
          @bingo_board[i][0] = 'X'
        end
        i+=1
      end

  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection

