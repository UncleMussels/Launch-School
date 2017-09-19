# Simple rock, paper, scissors game vs. cpu

WEAPON_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, opponent)
  if  (player == 'rock' && opponent == 'scissors') ||
      (player == 'paper' && opponent == 'rock') ||
      (player == 'scissors' && opponent == 'paper')
    prompt("You win! Press 'y' to play again")
  elsif player == opponent
    prompt("It's a draw! Press 'y' to play again")
  else
    prompt("Opponent wins! Press 'y' to play again")
  end
end

loop do
  choice = ''
  prompt("Choose your weapon: #{WEAPON_CHOICES.join(', ')}")
  loop do
    choice = gets.chomp.downcase
    break if WEAPON_CHOICES.include?(choice)

    prompt("You must choose a weapon to play: #{WEAPON_CHOICES.join(' or ')}")
  end

  computer_choice = WEAPON_CHOICES.sample

  prompt("You chose #{choice.upcase}; opponent chose #{computer_choice.upcase}")

  display_results(choice, computer_choice)

  break unless gets.chomp.downcase.start_with?('y')
end

prompt("Thanks for playing!")
