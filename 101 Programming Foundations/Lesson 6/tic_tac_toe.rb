# Tic Tac Toe program - Lesson 6

USER_CHOICE = 'x'
CPU_CHOICE = 'o'
WINNING_COMBOS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7],
                  [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def prompt(message)
  print "=> #{message}"
end

def show_board(board_spaces)
  build_rows board_spaces
end

def build_rows(board_spaces)
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

def valid_input?(input)
  (input.to_i.to_s == input) && (1..9).cover?(input.to_i)
end

def valid_square?(square, board_spaces)
  (board_spaces[square].to_i.to_s == board_spaces[square])
end

def user_turn(board_spaces)
  loop do
    square = gets.chomp

    if valid_input? square
      square = square.to_i - 1
      if valid_square? square, board_spaces
        board_spaces[square] = USER_CHOICE
        break
      else
        prompt "That square is taken! Please select a numbered square: "
      end
    else
      prompt "Invalid input! Please select a numbered square: "
    end
  end
end

def cpu_turn(board_spaces)
  square = board_spaces.select { |s| s.to_i.to_s == s }.sample.to_i
  board_spaces[square - 1] = CPU_CHOICE
  square
end

def check_board(board_spaces)
  return "You win!" if user_win? board_spaces
  return "Computer wins!" if cpu_win? board_spaces
  return "It's a tie!" if tie? board_spaces
end

def user_win?(board_spaces)
  WINNING_COMBOS.any? do |combo|
    combo.all? do |space|
      board_spaces[space] == USER_CHOICE
    end
  end
end

def cpu_win?(board_spaces)
  WINNING_COMBOS.any? do |combo|
    combo.all? do |space|
      board_spaces[space] == CPU_CHOICE
    end
  end
end

def tie?(board_spaces)
  board_spaces.none? { |space| space.to_i.to_s == space }
end

loop do
  puts "Welcome to Tic Tac Toe! You will be 'x' and computer will be 'o'!"

  loop do
    board_spaces = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
    show_board board_spaces

    loop do
      prompt "Choose a numbered square to mark: "
      user_turn board_spaces

      system('clear') || system('cls')

      break if !check_board(board_spaces).nil?

      cpu_choice = cpu_turn board_spaces
      show_board board_spaces
      puts "Computer chooses: #{cpu_choice}"

      break if !check_board(board_spaces).nil?
    end

    if check_board(board_spaces) == "Computer wins!"
      puts check_board board_spaces
    else
      show_board board_spaces
      puts check_board board_spaces
    end

    break
  end

  prompt "Press 'y' to play again: "
  break unless gets.chomp.downcase == 'y'
  system('clear') || system('cls')
end

puts "Goodbye and thanks for playing!"
