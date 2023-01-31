DIGITS = '0123456789'

def string_to_integer(string)
  sum = 0
  place = 1 # as in ones place, tens place, hundreds place
  string.reverse.chars.each do |char|
    sum += DIGITS.index(char) * place
    place *= 10
  end
  sum
end

def string_to_signed_integer(string)
  sign = 1
  if string[0] == '-'
    sign = -1
    string = string[1..]
  elsif string[0] == '+'
    string = string[1..]
  end
  sign * string_to_integer(string)
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

