DIGITS = '0123456789'

def integer_to_string(int)
  string = ''
  while int > 0
    current_digit = int % 10
    string.prepend(DIGITS[current_digit])
    int = (int - current_digit) / 10
  end
  string.empty? ? '0' : string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'