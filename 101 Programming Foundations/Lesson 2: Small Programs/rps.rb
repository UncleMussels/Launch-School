# Simple rock, paper, scissors, lizard, spock game vs. cpu

WEAPON_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts "=> #{message}"
end

def print_winner(player, cpu)
  if player == 5
    prompt("You won, #{player} to #{cpu}! Press 'y' to play again")
  else
    prompt("You lost, #{cpu} to #{player}! Press 'y' to play again")
  end
end

winning_moves = {
  rock: %w(lizard scissors),
  paper: %w(rock spock),
  scissors: %w(paper lizard),
  lizard: %w(spock paper),
  spock: %w(rock scissors)
}

player_wins = 0
cpu_wins = 0

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock. " \
       "First to 5 wins!")

loop do
  until player_wins == 5 || cpu_wins == 5
    choice = ''

    prompt("Choose your weapon: #{WEAPON_CHOICES.join(', ')}")
    loop do
      choice = gets.chomp.downcase
      break if WEAPON_CHOICES.include?(choice)
      prompt("You must choose a weapon to play: #{WEAPON_CHOICES.join(' or ')}")
    end

    cpu_choice = WEAPON_CHOICES.sample

    result = if winning_moves[choice.to_s].include?(cpu_choice.to_s)
               "You win!"
             elsif choice == cpu_choice
               "It's a draw!"
             else
               "Opponent wins!"
             end

    puts "You chose #{choice.upcase}; " \
         "opponent chose #{cpu_choice.upcase}... #{result}"

    player_wins += 1 if result.start_with?('You')
    cpu_wins += 1 if result.start_with?('Opponent')
  end

  print_winner(player_wins, cpu_wins)
  break unless gets.chomp.downcase.start_with?('y')
end

prompt("Thanks for playing!")
