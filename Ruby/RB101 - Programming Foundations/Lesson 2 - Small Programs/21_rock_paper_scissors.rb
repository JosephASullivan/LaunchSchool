VALID_CHOICES = ['rock', 'paper', 'scissors']

def test_method
  prompt('test message')
end

def display_results(choice, opponent_choice)
  if (VALID_CHOICES.index(choice) - VALID_CHOICES.index(opponent_choice) + 2) % 3 == 0
    puts "You win!"
  elsif choice == opponent_choice
    puts "You tie."
  else
    puts "You lose."
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

test_method

loop do
  choice = ''
  loop do
    prompt("Welcome! Choose one: " + VALID_CHOICES.join(', '))
    choice = Kernel.gets().chomp().downcase()
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Invalid choice. Try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You chose #{choice}.")
  Kernel.puts("The computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Play again? (Y/N)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
