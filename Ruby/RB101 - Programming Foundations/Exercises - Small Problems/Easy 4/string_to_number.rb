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

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
