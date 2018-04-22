def display_board(board)
  puts " "+board[0]+" " +"|"+" "+board[1]+" " + "|"+" "+board[2]+" "
  puts "-----------"
  puts " "+board[3]+" " +"|"+" "+board[4]+" " + "|"+" "+board[5]+" "
   puts "-----------"
  puts " "+board[6]+" "+"|"+" "+board[7]+" " + "|"+" "+board[8]+" "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
<<<<<<< HEAD
  if(index.between?(0,8) && !position_taken?(board, index))
=======
  if(index.between(0,8) && !position_taken?(board, index))
>>>>>>> 4ab6f109b64d34564f3a41ff5071d1ec5e7b20d8
    return true
  else
    return false
  end
end

def position_taken?(board, index)
    if(board[index]=="X" || board[index]=="O")
      return true
    elsif(board[index]=="" || board[index]==" " || board[index]==nil)
      return false
    end
end

def move(board, index, char="X")
  board[index]=char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
<<<<<<< HEAD
  
  index = input_to_index(input)
  
  if(valid_move?(board, index))
    move(board, index, "X")
    display_board(board)
=======
  index = input_to_index(input)
  
  if(index.between(0,8))
    move(board, index, "X")
>>>>>>> 4ab6f109b64d34564f3a41ff5071d1ec5e7b20d8
  else
    turn(board)
  end
end


