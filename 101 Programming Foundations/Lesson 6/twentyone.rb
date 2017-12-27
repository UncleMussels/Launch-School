# Launch School game of Twenty-One

POINTS_TO_WIN = 21
HIT_THRESHOLD = 17

def prompt(message)
  print "=> #{message}"
end

def deal_cards(deck, hands)
  2.times { hit(deck, hands, :gambler) } # deal user hand
  2.times { hit(deck, hands, :dealer) } # deal dealer hand
end

def hit(deck, hands, player)
  suit  = deck.keys.sample
  value = deck[suit].sample
  deck[suit].delete(value)
  hands[player] << [suit, value] # add card to player hand
end

def show_cards(hands, hide=true) # call (hands, false) to show last dealer card
  hands.each do |player, cards| # iterate through each player hand
    hand = []
    cards.each { |card| hand << card[1] } # add card value to player hand
    hand[-1] = '???' if player == :dealer && hide # hide dealers last card

    puts "#{player.capitalize} has: #{hand.join(', ')}"
  end
end

def dealer_hit?(dealer_score, gambler_score)
  dealer_score < HIT_THRESHOLD || dealer_score < gambler_score
end

def calculate_scores(hands, player)
  score = 0

  hands[player].each do |card|
    if card[1] == 'Ace'
      score += 11
    elsif card[1].to_i == 0 # Jack, Queen, King
      score += 10
    else                    # Cards 2..10
      score += card[1].to_i
    end
  end

  hands[player].select { |card| card[1] == "Ace" }.count.times do
    score -= 10 if score > POINTS_TO_WIN
  end

  score
end

def busted?(player_score)
  player_score > POINTS_TO_WIN
end

def game_result(gambler_score, dealer_score)
  if busted?(gambler_score)
    :gambler_busted
  elsif busted?(dealer_score)
    :dealer_busted
  elsif gambler_score > dealer_score
    :gambler
  elsif gambler_score < dealer_score
    :dealer
  else
    :tie
  end
end

def display_result(gambler_score, dealer_score)
  final_score = "#{gambler_score} - #{dealer_score}"

  result = game_result(gambler_score, dealer_score)
  case result
  when :gambler then "You win, #{final_score}! "
  when :dealer then "You lose, #{final_score}! "
  when :tie then "It's a tie, #{final_score}! "
  when :gambler_busted then "You busted with #{gambler_score}! "
  when :dealer_busted then "Dealer busted with #{dealer_score}! "
  end
end

def track_score(gambler_score, dealer_score, game_score)
  result = game_result(gambler_score, dealer_score)

  if [:gambler, :dealer_busted].include?(result)
    then game_score[:gambler] += 1
  elsif [:dealer, :gambler_busted].include?(result)
    then game_score[:dealer] += 1
  end
end

def play_again?
  print "Do you want to play again? (y or n): "
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def divide_screen
  puts "-------------------"
end

def clear_screen
  system('clear') || system('cls')
end

loop do
  game_score = { dealer: 0, gambler: 0 }

  clear_screen
  puts "Welcome to Twenty-One! First player to 5 rounds wins!"
  divide_screen

  loop do
    deck = { 'Hearts'   => %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace],
             'Clubs'    => %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace],
             'Diamonds' => %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace],
             'Spades'   => %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace] }

    hands = { dealer: [], gambler: [] }
    gambler_score = nil
    dealer_score = nil

    loop do # game begins
      puts "Game score is #{game_score[:gambler]} - #{game_score[:dealer]}"
      divide_screen

      deal_cards(deck, hands)
      show_cards(hands)
      gambler_score = calculate_scores(hands, :gambler)
      dealer_score = calculate_scores(hands, :dealer)

      loop do
        break if gambler_score == POINTS_TO_WIN

        prompt "Your score is #{gambler_score}. Hit or stay?: "
        answer = gets.chomp.downcase

        if answer == 'hit'
          hit(deck, hands, :gambler)
          divide_screen
          show_cards(hands)
          gambler_score = calculate_scores(hands, :gambler)
          break if busted?(gambler_score)
        elsif answer == 'stay'
          break
        else
          puts "You must enter 'hit' or 'stay'!"
        end
      end

      if busted?(gambler_score) # user outcome
        break
      elsif gambler_score == POINTS_TO_WIN
        prompt "You've got #{POINTS_TO_WIN}! Press enter to start dealer turn:"
        gets.chomp
      end

      divide_screen
      show_cards(hands, false) # reveals hidden dealer card

      loop do # begin dealer turn
        break if busted?(dealer_score)

        if dealer_hit?(dealer_score, gambler_score)
          prompt "Dealer score is #{dealer_score}. Dealer will hit." \
                 " Press enter to continue: "
          gets.chomp

          hit(deck, hands, :dealer)
          divide_screen
          show_cards(hands, false)
          dealer_score = calculate_scores(hands, :dealer)
        else
          break
        end
      end

      break
    end

    prompt display_result(gambler_score, dealer_score)
    print "Press enter to continue: "
    gets.chomp

    track_score(gambler_score, dealer_score, game_score)
    break if game_score.any? { |__, score| score == 5 }
    clear_screen
  end

  divide_screen
  prompt display_result(game_score[:gambler], game_score[:dealer])
  break unless play_again?
end

puts "Goodbye and thanks for playing Twenty-One!"
