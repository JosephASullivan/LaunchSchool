def prompt(message)
  Kernel.puts("=> #{message}")
end

# Check if argument is a number (float or integer)
# and if it is greater than zero
def positive_number?(num)
  num.is_a?(Numeric) && num > 0
end

loop do # main loop
  prompt('Welcome to the calculator!')

  # Ask for loan amount
  principal = ''
  loop do
    prompt('Enter loan amount:')
    principal = Kernel.gets.chomp.to_f
    if principal > 0
      break
    else
      prompt('Invalid input. Must be a dollar amount greater than $0.
        Try again.')
    end
  end

  # Ask for APR
  apr = ''
  loop do
    prompt('Enter APR as decimal value:')
    answer = Kernel.gets.chomp()
    apr = answer.to_f()
    if answer == "0" || answer == "0.0" || apr > 0
      if apr >= 1
        prompt("That's very high. Do you really mean #{apr * 100}% APR? (Y/N)")
        answer = Kernel.gets().chomp()
        break if answer.downcase().start_with?('y')
      else
        break
      end
    else
      prompt('Invalid input. Make sure you have formatted the APR as a decimal.')
    end
  end

  # Ask for loan duration
  duration = ''
  loop do
    prompt('Do you want to enter loan duration in months?
      Enter Y for yes.
      Otherwise, we will use duration in years.')
    is_duration_in_months = Kernel.gets().chomp().downcase().start_with?('y')
    prompt("OK, enter the loan duration in #{is_duration_in_months ? 'months' : 'years'}:")
    duration = Kernel.gets.chomp.to_f()
    duration *= 12 if !is_duration_in_months
    if duration >= 0
      break
    else
      prompt('Invalid input. Try again.')
    end
  end

  monthly_interest_rate = apr / 12
  monthly_payment = principal * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-duration)))
  result = monthly_payment

  prompt("Your monthly payment will be $#{result}")
  prompt('do you want to perform another calculation? (Y/N)')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you, goodbye!')
