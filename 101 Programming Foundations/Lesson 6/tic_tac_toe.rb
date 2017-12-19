# Tic Tac Toe program - Lesson 6

USER = 'x'
CPU = 'o'
FIRST_MOVE = 'choose' # must be 'user', 'cpu', or 'choose'
WINNING_COMBOS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
                  [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def prompt(message)
  print "=> #{message}"
end

def show_board(board)
  index  = 0
  ends   = "+-------+-------+-------+"
  sides  = "|       +       +       |"

  3.times do
    puts ends
    puts sides
    3.times do
      print "|   #{board[index]}   "
      index += 1
    end
    puts "|\n" + sides
  end
  puts ends
end

def clear_board
  system('clear') || system('cls')
end

def empty_squares(board)
  squares = []
  board.each_with_index do |square, index| 
    squares << index + 1 if square == ' '
  end

  squares
end

def joinor(array, delimeter=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array[0]
  when 2 then array.join(" #{word} ")
  else
    array.join(delimeter).insert(-2, "#{word} ")
  end
end

def whos_first
  if FIRST_MOVE == 'choose'
    loop do
      prompt "Who moves first? Type 'user' or 'cpu': " 
      choice = gets.chomp
      
      if choice != 'cpu' && choice != 'user'
        next
      end

      return choice
    end
  else
    FIRST_MOVE
  end
end

def make_move(player, board)
  if player == 'user'
    user_turn(board)
  else
    cpu_turn(board)
  end
end

def alternate_player(player)
  if player == 'user'
    'cpu'
  else
    'user'
  end
end

def user_turn(board)
  prompt "Choose a square to mark (#{joinor(empty_squares(board))}): "
  user_move board
  clear_board
end

def user_move(board)
  loop do
    square = gets.chomp
    if empty_squares(board).include?(square.to_i)
      board[square.to_i - 1] = USER
      break
    else
      prompt "Nope! Please select from #{joinor(empty_squares(board))}: "
    end
  end
end

def cpu_turn(board)
  square = cpu_attack(board)

  if !square
    square = cpu_defend(board)
  end

  # choose center if available
  if !square 
    square = 4 if empty_squares(board).include?(5)
  end

  if !square
    square = empty_squares(board).sample - 1
  end

  board[square] = CPU
end

def cpu_move(player, board)
  square = nil

  WINNING_COMBOS.each do |combo|
    if board.values_at(*combo).count(player) == 2
      square = combo.select { |square| board[square] == ' ' }[0]
    end
    break if square
  end

  square
end

def cpu_attack(board)
  cpu_move(CPU, board)
end

def cpu_defend(board)
  cpu_move(USER, board)
end

def game_result(board)
  return "You win!" if user_win? board
  return "Computer wins!" if cpu_win? board
  return "It's a tie!" if tie? board
end

def game_over?(player, board)
  WINNING_COMBOS.any? do |combo|
    combo.all? do |space|
      board[space] == player
    end
  end
end

def user_win?(board)
  game_over? USER, board
end

def cpu_win?(board)
  game_over? CPU, board
end

def tie?(board)
  board.none? { |square| square == ' ' }
end

def track_score(game_result, scores)
  case game_result
  when "You win!" then scores[:user] += 1
  when "Computer wins!" then scores[:cpu] += 1
  end
end

def print_final_winner(scores)
  if scores[:user] == 5
    "You won #{scores[:user]} - #{scores[:cpu]}! Press 'y' to play again: "
  else
    "You lost #{scores[:cpu]} - #{scores[:user]}! Press 'y' to play again: "
  end
end

loop do
  scores = {user: 0, cpu: 0}

  until scores[:user] == 5 || scores[:cpu] == 5
    puts "Welcome to Tic Tac Toe! You will be 'x' and computer will be 'o'!"
    puts "Current score: #{scores[:user]} - #{scores[:cpu]}"

    loop do
      board = %w(1 2 3 4 5 6 7 8 9)
      show_board board
      board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

      current_player = whos_first
      if current_player == 'cpu'
        prompt "Cpu will move first. Press enter to proceed: "
        gets.chomp
        clear_board
      end

      loop do
        make_move(current_player, board)
        current_player = alternate_player(current_player)
        break if game_result(board)
        
        show_board board if current_player == 'user'
      end

      show_board(board)
      puts game_result(board)
      track_score(game_result(board), scores)
      break
    end

    prompt "Press enter to continue: "
    gets.chomp
    clear_board
  end

  prompt print_final_winner scores
  break unless gets.chomp.downcase == 'y'
  clear_board
end

puts "Goodbye and thanks for playing!"