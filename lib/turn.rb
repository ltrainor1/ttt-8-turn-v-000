def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  a = index > -1 && index < 9 
  b = position_taken?(board, index)
  if !a || b 
    return false 
  else 
    return true 
  end 
end 

def position_taken?(board, index)
  a = board[index] == "X"
  b = board[index] == "O"
  if a || b 
    return true 
  else 
    return false 
  end 
end 

def move(board, index, value = "X")
  board[index] = value
end 

def input_to_index(input)
  input = input.to_i 
  index = input - 1 
  return index
end 

def turn(board)
  index = -1
  valid = false
  while !valid 
    puts "Please enter 1-9:"
    input = gets.strip 
    index = input_to_index(input)
    valid = valid_move?(board, index)
  end 
  
  move(board, index)
  display_board(board)
end 
  