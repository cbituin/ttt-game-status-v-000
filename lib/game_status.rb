# Helper Method
def position_taken?(board, index)
    !(board[index].nil? || board[index] == " ")
  end
  
  # Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5],  # Middle row
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
    # ETC, an array for each win combination
  ]
<<<<<<< HEAD
=======

def position_taken?(board, index)
  board[index] == " " || board[index] == ""
  board[index] == "X" || board[index] == "O"
end 
>>>>>>> 47385bb09049ad1c0eb912aee6d2c2b9bbbc9adb

def won?(board)
  WIN_COMBINATIONS.each do |combo| #iterate over WIN_COMBINATIONS
    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]
<<<<<<< HEAD
  if position_1 == position_2 && position_2 == position_3 && position_taken?(board, combo[0])
    return combo #it wants the indexes, not the board markers
  end
	#do not set an else, as otherwise you are forcing a return before the loop finishes. 
  end
  false
=======
    #Now check if all of these have the same marker and use position_taken? method to see if there is a marker in one of them
  if position_1 === position_2 && position_2 === position_3
    position_taken?(board, position_3.to_i)
  else 
    false
  end
end
  #if it makes it through the loop without finding a winning combo, then return false. 
>>>>>>> 47385bb09049ad1c0eb912aee6d2c2b9bbbc9adb
end