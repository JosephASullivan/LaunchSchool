VALID_CHOICES = %w[rock paper scissors spock lizard]
GAMES_TO_WIN = 3

### METHODS ###

def greet_player
  system('clear')
  prompt('Welcome to Rock-Paper-Scissors-Lizard-Spock!')
  prompt("The first player to win #{GAMES_TO_WIN} games is the grand winner!")
  await_player
end

def await_player
  prompt('Hit enter/return to continue...')
  gets.chomp
  system('clear')
end

def prompt(message)
  Kernel.puts("=> #{message}")
  sleep(0.75)
end

def resolve_choice
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp.downcase
    unless choice.empty?
      choice = handle_s if choice == 's'
      VALID_CHOICES.each do |option|
        choice = option if option.start_with? choice
      end
      return choice if VALID_CHOICES.include?(choice)
    end
    prompt('Invalid choice. Try again.')
  end
end

# Handles the edge case where the player enters "s",
# which could mean scissors or Spock.
def handle_s
  prompt('Not sure if you mean scissors or Spock.')
  prompt('Enter 1 for scissors or 2 for Spock.')
  loop do
    case gets.chomp
    when '1'
      return 'scissors'
    when '2'
      return 'spock'
    else
      puts('Invalid response. Try again.')
    end
  end
end

def display_choices(choice, opponent_choice)
  system('clear')
  prompt("You chose #{choice}.")
  prompt("Your opponent chose #{opponent_choice}.")
end

# When the choices are placed in the order shown above,
# each choice defeats the choice before it,
# and the choice two places after it.
# Each choice also loses to the choice after it,
# And the choice two places before it.
# We can use this to quickly determine the winner of any given game.
def get_result(player1, player2)
  return 'tie' if player1 == player2 # Handle case of a tie

  index_difference = VALID_CHOICES.index(player1) - VALID_CHOICES.index(player2)
  ((index_difference + 4) % 5).odd? ? 'lose' : 'win'
end

def display_result(result)
  prompt("You #{result}!")
end

def update_win_counts(games_won, game_result)
  case game_result
  when 'win'
    games_won[:'you'] += 1
  when 'lose'
    games_won[:'the computer'] += 1
  end
end

def determine_grand_winner(games_won)
  games_won.each do |player, win_count|
    return player if win_count == 3
  end
  nil
end

def announce_win_counts(games_won, match_status)
  prompt("The #{match_status} score is:")
  prompt("Player #{games_won[:'you']}, Computer #{games_won[:'the computer']}")
end

def play_again?
  prompt('Do you want to play again? (Y/N)')
  answer = Kernel.gets.chomp
  answer.downcase.start_with?('y')
end

### MAIN GAMEPLAY LOGIC ###

greet_player

# This loop goes through the process of playing a match
loop do
  games_won = { 'you': 0, 'the computer': 0 }
  game_count = 0

  prompt 'A new match has begun!'

  # This loop goes through playing one game within a match
  loop do
    game_count += 1
    prompt("GAME #{game_count}")

    # Players make their choices
    choice = resolve_choice
    computer_choice = VALID_CHOICES.sample

    display_choices(choice, computer_choice)
    get_result(choice, computer_choice) # Returns result of one game as 'win', 'lose', or 'tie'
    display_result(game_result)
    update_win_counts(games_won, game_result)

    grand_winner = determine_grand_winner(games_won)
    if grand_winner
      prompt("The match is over! The grand winner is #{grand_winner}!")
      break
    end

    announce_win_counts(games_won, 'current')
    await_player
  end

  announce_win_counts(games_won, 'final')
  break unless play_again?
end

prompt 'Thanks for playing. Goodbye!'
