def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when 'add'
    'Adding'
  when 'subtract'
    'Subtracting'
  when 'multiply'
    'Multiplying'
  when 'divide'
    'Dividing'
  end
end

prompt('Welcome to the calculator! Enter your name:')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('Make sure you enter your name.')
  else
    break
  end
end

prompt("Hello, #{name}")

loop do # main loop
  # Ask for first number
  num1 = ''
  loop do
    prompt('Tell me a number')
    num1 = Kernel.gets.chomp.to_i()

    if valid_number?(num1)
      break
    else
      prompt('not a valid number')
    end
  end

  # Ask for second number
  num2 = ''
  loop do
    prompt('Tell me another number')
    num2 = Kernel.gets.chomp.to_i()

    if valid_number?(num2)
      break
    else
      prompt('not a valid number')
    end
  end

  # Ask what operation to do
  operations = %w[add subtract multiply divide]
  operator_prompt = <<-MSG
    What operation to perform?
    Options: #{operations}
  MSG
  prompt(operator_prompt)
  operation = Kernel.gets.chomp()

  until operations.include?(operation)
    prompt('Invalid response, try again')
    operation = Kernel.gets.chomp()
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when 'add'
             num1 + num2
           when 'subtract'
             num1 - num2
           when 'multiply'
             num1 * num2
           when 'divide'
             num2 == 0 ? "undefined" : num1.to_f() / num2.to_f()
           end

  prompt("The result is #{result}")
  prompt("do you want to perform another calculation? (Y/N)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you, goodbye!')
