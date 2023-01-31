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

def signed_integer_to_string(int)
  case int
  when 1.. then '+' + integer_to_string(int)
  when 0 then integer_to_string(int)
  else '-' + integer_to_string(-int)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
