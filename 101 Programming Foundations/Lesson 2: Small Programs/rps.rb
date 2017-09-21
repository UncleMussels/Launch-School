# Simple rock, paper, scissors, lizard, spock game vs. cpu

WEAPON_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts "=> #{message}"
end

def determine_winner(winning_moves, player_choice, cpu_choice)
  if winning_moves[player_choice.to_sym].include?(cpu_choice)
    "You win!"
  elsif player_choice == cpu_choice
    "It's a draw!"
  else
    "Opponent wins!"
  end
end

def display_winner(result, player_choice, cpu_choice)
  prompt "You chose #{player_choice.upcase}; " \
         "opponent chose #{cpu_choice.upcase}... #{result}."
end

def print_final_winner(player_score, cpu_score)
  if player_score == 5
    prompt("You won, #{player_score} to #{cpu_score}! Press 'y' to play again")
  else
    prompt("You lost, #{cpu_score} to #{player_score}! Press 'y' to play again")
  end
end

winning_moves = {
  rock: %w(lizard scissors),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  lizard: %w(spock paper),
  spock: %w(rock scissors)
}

prompt "Welcome to Rock, Paper, Scissors, Lizard, Spock. " \
       "First to 5 wins!"

loop do
  player_score = 0
  cpu_score = 0

  until player_score == 5 || cpu_score == 5
    player_choice = ''

    prompt "Current score: #{player_score} - #{cpu_score}"
    prompt "Choose your weapon: #{WEAPON_CHOICES.join(', ')}"
    loop do
      print "=> "
      player_choice = gets.chomp.downcase
      break if WEAPON_CHOICES.include?(player_choice)

      prompt("You must choose a weapon to play: #{WEAPON_CHOICES.join(' or ')}")
    end

    cpu_choice = WEAPON_CHOICES.sample
    result = determine_winner(winning_moves, player_choice, cpu_choice)
    display_winner(result, player_choice, cpu_choice)
    
    puts   "   Press any key to continue"
    any_key = gets.chomp

    player_score += 1 if result == 'You win!'
    cpu_score += 1 if result == 'Opponent wins!'

    system('clear') || system('cls')
  end

  print_final_winner(player_score, cpu_score)
  break unless gets.chomp.downcase.start_with?('y')
end

prompt("Thanks for playing #{WEAPON_CHOICES.map(&:capitalize).join(', ')}!")
