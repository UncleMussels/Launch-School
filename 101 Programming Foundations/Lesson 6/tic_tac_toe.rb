# Tic Tac Toe program - Lesson 6

USER = 'x'
CPU = 'o'
WINNING_COMBOS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7],
                  [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def prompt(message)
  print "=> #{message}"
end

def show_board(board_spaces)
  index  = 0
  ends   = "+-------+-------+-------+"
  sides  = "|       +       +       |"

  3.times do
    puts ends
    puts sides
    3.times do
      print "|   #{board_spaces[index]}   "
      index += 1
    end
    puts "|\n" + sides
  end
  puts ends
end

def clear_board
  system('clear') || system('cls')
end

def valid_input?(input)
  (input.to_i.to_s == input) && (1..9).include?(input.to_i)
end

def empty_square?(square, board_spaces)
  board_spaces[square] == ' '
end

def user_turn(board_spaces)
  loop do
    input = gets.chomp

    if valid_input? input
      square = input.to_i - 1
      if empty_square? square, board_spaces
        board_spaces[square] = USER
        break
      else
        prompt "That square is taken! Please select an empty square: "
      end
    else
      prompt "Invalid input! Please select a square from 1 to 9: "
    end
  end
end

def cpu_turn(board_spaces)
  loop do
    square = rand(10)
    if empty_square?(square, board_spaces)
      board_spaces[square] = CPU
      return square
    end
  end
end

def game_result(board_spaces)
  return "You win!" if user_win? board_spaces
  return "Computer wins!" if cpu_win? board_spaces
  return "It's a tie!" if tie? board_spaces
end

def game_over?(player, board_spaces)
  WINNING_COMBOS.any? do |combo|
    combo.all? do |space|
      board_spaces[space] == player
    end
  end
end

def user_win?(board_spaces)
  game_over? USER, board_spaces
end

def cpu_win?(board_spaces)
  game_over? CPU, board_spaces
end

def tie?(board_spaces)
  board_spaces.none? { |square| square == ' ' }
end

loop do
  puts "Welcome to Tic Tac Toe! You will be 'x' and computer will be 'o'!"

  loop do
    board_spaces = %w(1 2 3 4 5 6 7 8 9)
    show_board board_spaces
    board_spaces = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

    loop do
      prompt "Choose a square to mark: "
      user_turn board_spaces

      clear_board

      break if game_result(board_spaces)

      cpu_choice = cpu_turn board_spaces
      show_board board_spaces
      puts "Computer chooses: #{cpu_choice + 1}"

      break if game_result(board_spaces)
    end

    show_board(board_spaces) if game_result(board_spaces) != "Computer wins!"

    puts game_result board_spaces
    break
  end

  prompt "Press 'y' to play again: "
  break unless gets.chomp.downcase == 'y'
  clear_board
end

puts "Goodbye and thanks for playing!"
